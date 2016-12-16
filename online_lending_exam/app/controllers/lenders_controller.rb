class LendersController < ApplicationController
   
  def create
    @lender = Lender.create(lender_params)
    if @lender.save
      session[:user_id] = @lender.id
      session[:user_type] = 'lender'
      redirect_to '/users/index'
    else
      flash[:lender_errors] = @lender.errors.full_messages
      redirect_to '/users/add'
    end
  end


  def show
  	@lender = Lender.find(session[:user_id])
  	@transactions = Borrower.select('borrowers.*, histories.amount as amount, histories.borrower_id as histories_borrower_id, histories.lender_id as lender_id').joins(:histories).group(:first_name)
  	render '/lenders/show'
  end

  def destroy
  end

  private
  def lender_params
  	params.require(:lender).permit(:first_name, :last_name, :email, :password, :money)
  end
end