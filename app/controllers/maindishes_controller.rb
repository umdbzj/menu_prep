class MaindishesController < ApplicationController
	def index
  		maindish_list = Maindish.all
  		@maindishes = maindish_list
  end
end
