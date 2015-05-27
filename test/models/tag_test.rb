require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "tag name must be unique" do
    assert_raise ActiveRecord::RecordInvalid do
      Tag.create! name: tags(:one).name
    end
  end
end
