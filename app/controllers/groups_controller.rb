class GroupsController < ApplicationController
  def recent_groups(metric)
    metric.order(created_at: :desc)
  end

  # rubocop:disable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity
  def index
    @user = current_user
    @groups = User.find_by(id: current_user.id)&.groups || []
    @ordered_groups = recent_groups(@groups)
    @total_payment_count = User.find_by(id: current_user.id)&.payments&.joins(:groups)&.count
    @total_payment_sum = User.find_by(id: current_user.id)&.payments&.joins(:groups)
    &.select(:'payments.amount')&.sum(:amount)
    @payments_per_group = @groups.joins(:payments).group(:name).count
    @total_group = Group.all.where(user_id: @user.id).count

    sql = "Select groups.name as group_name, groups.created_at as created_at,
    COALESCE(SUM(payments.amount), 0) as payment_amount from groups
    LEFT JOIN groups_payments ON groups.id = groups_payments.group_id
    LEFT JOIN payments ON payments.id = groups_payments.payment_id
    GROUP BY groups.name, groups.created_at ORDER BY created_at DESC"
    @records_array = ActiveRecord::Base.connection.execute(sql)
  end

  def show
    @user = User.find_by(id: current_user.id)
    @group = @user&.groups&.where(id: params['id'])&.pluck(:name, :icon, :id) || []
    @payments_each_group_each_user = @user&.groups&.where(id: params['id'])
    &.joins(:payments)&.select(
      :'payments.name', :'payments.amount', :'payments.created_at', :'groups.id', :user_id, :'payments.id'
    )
  end
  # rubocop:enable Metrics/PerceivedComplexity,Metrics/CyclomaticComplexity

  def new
    @user = current_user
    @group = Group.new
    puts 'Where is the user?'
    puts current_user
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

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    #  redirect_to recipes_path, notice: 'Recipe was successfully Deleted.'
    respond_to do |format|
      format.html { redirect_to user_groups_path(params[:user_id]), notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon, :id).merge(user_id: current_user.id)
  end
end
