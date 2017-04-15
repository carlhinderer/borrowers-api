require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  test "requires first_name" do 
  	friend = Friend.new(last_name: 'Doe', email: 'jdoe@gmail.com')
  	assert_not friend.save, 'Saved friend without first name'
  	assert_not_empty friend.errors[:first_name]
  end

  test "requires last_name" do
  	friend = Friend.new(first_name: 'John', email: 'jdoe@gmail.com')
  	assert_not friend.save, 'Saved friend without last name'
  	assert_not_empty friend.errors[:last_name]
  end

  test "requires email" do
  	friend = Friend.new(first_name: 'John', last_name: 'Doe')
  	assert_not friend.save, 'Saved friend without email'
  	assert_not_empty friend.errors[:email]
  end
end
