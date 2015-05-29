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

  test "only title is required" do
    assert Gift.create! title: 'test'
  end

  test "tags can be added through all_tags" do
    assert Gift.create! title: 'Test', all_tags: 'test'
    assert_equal Gift.find_by_title('Test').all_tags, 'test'
    assert Tag.find_by_name 'test'
  end
end
