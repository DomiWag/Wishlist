require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "email must be unique" do
    assert_raise ActiveRecord::RecordInvalid do
      User.create! email: users(:one).email
    end
  end

  test "name is required" do
    assert_raise ActiveRecord::RecordInvalid do
      User.create! email: 'user@example.com'
    end
  end

  test "allow duplicate names" do
    assert User.create! name: users(:one).name, email: 'three@example.com', password: 'test1234'
  end
end
