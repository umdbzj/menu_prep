require 'test_helper'

class MaindishTest < ActiveSupport::TestCase
	
	test "should not save maindish without a name" do
		maindish = Maindish.new
		assert_not maindish.save, "Saved a maindish without a name"
	end
	
	test "name should not be longer than 80 characters" do
		maindish = Maindish.new
		maindish.name = "a" * 81
		assert_not maindish.valid?, "Maindish name too long"
	end

end
