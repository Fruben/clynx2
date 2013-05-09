require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a staus requires content to be entered" do 
  	status = Status.new
  	assert !status.save
  	assert !status.errors[:content].empty?

  	
  end

  test "that a status has a user id" do
  	status= Status.new
  	status.content = "hello"
  	assert !status.save
  	assert !status.errors[:user_id].empty?

  
  end
end
