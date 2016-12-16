class NumbersController < ApplicationController
  def index
  	if not session[ :number ]
			then session[ :number ] = rand(1..100)
		end
		render 'index'
  end
  def compare
  	@number = params[ :number ]
		@great = session[ :number ]
		if @number.to_i == @great
			then flash[ :message ] = "The number was #{ @great }. Take a guess at the new number."; session.clear
		end
		if @number.to_i > @great
			then flash[ :message ] = "Too High!"
		end
		if @number.to_i < @great
			then flash[ :message ] = "Too Low!"
		end
		redirect_to '/'
  end
end
