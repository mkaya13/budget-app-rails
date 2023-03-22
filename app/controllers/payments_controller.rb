class PaymentsController < ApplicationController
  def index
    @payments = User.find_by(id: current_user.id)&.payments || []
    @groups_for_payments = Payment.joins(:groups).pluck(:'groups.name')
  end

  def show; end

  def new
    @user = current_user
    @payment = Payment.new
  end

  def destroy
    @payment = User.find(params[:user_id]).groups.find(params[:group_id]).payments.find_by(id: params[:id])
    @payment.destroy
    redirect_to user_group_path(params[:user_id], params[:group_id]), notice: 'Payment was successfully Deleted.'
    # respond_to do |format|
    #  format.html { redirect_to user_groups_path(params[:user_id]), notice: 'Group was successfully destroyed.' }
    #  format.json { head :no_content }
    # end
  end

  def create
    puts '----------'
    puts 'create'
    @payment = Payment.new(name: payment_params['name'], amount: payment_params['amount'],
                           user_id: payment_params['user_id'])
    @my_group_id = payment_params['group']
    @my_group_object = Group.find_by(id: @my_group_id)

    @my_group_object.payments << [@payment]

    if @payment.save
      flash[:success] = 'Payment saved successfully'

      redirect_to user_group_path(params[:user_id], params[:group_id])
    else
      flash[:error] = "Invalid input, payment didn't get saved"
      render :new
    end
  end

  def payment_params
    params.require(:payment).permit(:name, :amount, :group_id, :group).merge(user_id: current_user.id)
  end
end
