class GroupsController < ApplicationController
  # rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
  def index
    @user = current_user
    @groups = User.find_by(id: current_user.id)&.groups || []
    @total_payment_count = User.find_by(id: current_user.id)&.payments&.count
    @total_payment_sum = User.find_by(id: current_user.id)&.payments&.select(:'payments.amount')&.sum(:amount)
    @payments_per_group = @groups.joins(:payments).group(:name).count

    sql = "Select groups.name as group_name, COALESCE(SUM(payments.amount), 0) as payment_amount from groups
      LEFT JOIN groups_payments ON groups.id = groups_payments.group_id
      LEFT JOIN payments ON payments.id = groups_payments.payment_id
      GROUP BY groups.name ORDER BY payment_amount DESC, group_name DESC"
    @records_array = ActiveRecord::Base.connection.execute(sql)
  end

  def show
    @user = User.find_by(id: current_user.id)
    @group = @user&.groups&.where(id: params['id'])&.pluck(:name, :icon) || []
    @payments_each_group_each_user = @user&.groups&.where(id: params['id'])
    &.joins(:payments)&.select(
      :'payments.name', :'payments.amount', :'payments.created_at'
    )
  end
  # rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity

  def new
    @user = current_user
    @group = Group.new
  end

  def create
    @group = Group.new(name: group_params['name'], icon: group_params['icon'],
                       user_id: group_params['user_id'])

    if @group.save
      flash[:success] = 'Group is saved successfully'

      redirect_to user_groups_path(params[:user_id])
    else
      flash[:error] = "Invalid input, group didn't get saved"
      render :new
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon, :id).merge(user_id: current_user.id)
  end
end
