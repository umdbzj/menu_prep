class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
  	render text: "Welcome to the menu randomizing program!"
  end
end
