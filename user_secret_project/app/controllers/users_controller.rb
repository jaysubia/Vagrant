class UsersController < ApplicationController

def new
end
def create
	user = User.new(user_params)
	if user.save
		redirect_to '/login'
	end
end
def index
	@current_user = User.find(session[:user_id])


end
private 
	def user_params

params.require(:user).permit(:name, :email, :password)

end

end
