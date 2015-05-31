require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
    sign_in users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should show tag" do
    get :show, id: @tag
    assert_response :success
  end

  # More tests

  test "should display tagged gift" do
    gift = gifts(:one)
    gift.all_tags = tags(:one).name
    gift.save!
    get :show, id: @tag
    assert_select 'td', @tag.gifts.first.title
  end
end
