class UsersController < ApplicationController
  def new
  	render text: "Saying Hello!"
  end

  def index
  	render text: "Hello CodingDojo!"
  end
  def joe
  	render text: "Saying Hello Joe!"
  end
  def red
  	redirect_to "/say/hello/joe"
  end 
  def blue
  	render text: "What do you want me to say???"
  end
  	def times
   if !session[:count]
     session[:count] = 0
   else
     session[:count] +=1
   end
   @count = session[:count]
 end
  def restart
  	session[:count]= nil
  end
end
