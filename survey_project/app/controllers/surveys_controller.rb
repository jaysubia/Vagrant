class SurveysController < ApplicationController
  def restart
  session[:count]= nil
  redirect_to "/"

  end

  def results
  
  end

  def create
  	session[:survey]=params[:survey]
  	if !session[:count]
     session[:count] = 0
   else
     session[:count] +=1
   end
   @count = session[:count]
  	redirect_to "/surveys/results"
  end
end
