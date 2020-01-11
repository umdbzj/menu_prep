class StaticPagesController < ApplicationController
  def home
  	maindish_list = Maindish.all
  	dishNum = (0..maindish_list.length-1).to_a.shuffle.first
  	@maindish = maindish_list[dishNum]
  end

  def help
  end

  def about
  end
  
  def contact
  end
  
end
