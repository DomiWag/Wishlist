require 'test_helper'

class GiftTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "title is required" do
    assert_raise ActiveRecord::RecordInvalid do
      Gift.create! description: 'test'
    end
  end
end
