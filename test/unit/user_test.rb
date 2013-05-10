require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many(:user_friendships)
  should have_many(:friends)




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

  test "that on error is raised when trying to access a friend list" do
    assert_nothing_raised do
      users(:ryan).friends
    

    end
  end

 test "that creating frienships on a user works" do
  users(:ryan).friends << users(:mike)
  users(:ryan).friends.reload
  assert users(:ryan).friends.include?(users(:mike))
 end
 

  

end
