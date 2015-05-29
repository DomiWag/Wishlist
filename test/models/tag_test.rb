require 'test_helper'

class TagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "name must be unique" do
    assert_raise ActiveRecord::RecordInvalid do
      Tag.create! name: tags(:one).name
    end
  end

  test "gifts can be retrieved through tags" do
    assert myGift = Gift.create!(title: 'MyGift', all_tags: 'my_tag_test')
    assert myTag = Tag.find_by_name('my_tag_test')
    assert_equal myTag.gifts.first, myGift
  end
end
