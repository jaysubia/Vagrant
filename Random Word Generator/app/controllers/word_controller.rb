class WordController < ApplicationController
  def index
    # Call private function: set_counter 
    set_counter
  end

  def create
    # Generate a 14 character random word
    session[:random_word] = Array.new(14).map{|i| i = rand(65..90).chr}.join
    
    # Call private function: increment_counter
    increment_counter

    redirect_to action: 'index'
  end

  private
  # Set the counter if the counter is not yet set
  def set_counter
    session[:counter] = 0 if !session[:counter].present?
  end

  # Increment the counter each time a random word is generated
  def increment_counter
    session[:counter] += 1 if session[:counter].present?
  end
end


