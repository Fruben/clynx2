require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "a user should enter a first name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:fist_name].empty?
  end
test "a user should enter a last name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end
  test "a user should enter a company name" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:company_name].empty?
  end

  

end
