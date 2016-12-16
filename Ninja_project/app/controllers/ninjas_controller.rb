class NinjasController < ApplicationController
  def index
  if not session[ :number ]
		then session[ :number ] = 0
		
		session[:message] = []
  end
		render 'index'
  end
  def farm
  @random = rand(10..20)
  session[:number]+= @random
  @time = Time.now.strftime("%H:%M:%S")
  session[:message] << "Earned #{@random} gold from farm! #{@time}"

  redirect_to '/'

  end
  def cave
  @random = rand(5..10)
  session[:number]+= @random
  @time = Time.now.strftime("%H:%M:%S")
  session[:message] << "Earned #{@random} gold from cave! #{@time}" 
  redirect_to '/'
  end
  def house
  @random = rand(2..5)
  session[:number]+= @random
  @time = Time.now.strftime("%H:%M:%S")
  session[:message] << "Earned #{@random} gold from house! #{@time}" 
  redirect_to '/'
  end
  def casino
  @random = rand(-100..100)
  session[:number]+= @random
  @time = Time.now.strftime("%H:%M:%S")
  session[:message] << "Earned #{@random} gold from casino! #{@time}" 
  redirect_to '/'
  end
  def reset
  session.clear
  redirect_to '/'
  end
end
