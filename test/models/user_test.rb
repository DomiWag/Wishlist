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
end
