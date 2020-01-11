class StaticPagesController < ApplicationController
  def home
  	maindish_list = Maindish.all
  	dishNum = (0..maindish_list.length-1).to_a.shuffle.first
  	@maindish = maindish_list[dishNum]
  	
  	sidedish_list = Sidedish.all
  	sideNum = (0..sidedish_list.length-1).to_a.shuffle.first
  	@sidedish = sidedish_list[sideNum]
  	
  	dessert_chance = (0..1).to_a.shuffle.first
  	if dessert_chance == 1
  		treat_list = Treat.all
  		treatNum = (0..treat_list.length-1).to_a.shuffle.first
  		the_treat = treat_list[treatNum]
  		@treat = the_treat.name
  	else 
  		@treat = "No dessert today!"
  	end
  	
  end

  def help
  end

  def about
  end
  
  def contact
  end
  
end
