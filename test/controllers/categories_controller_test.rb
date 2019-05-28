require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "lifestyle")
  end

  test "should get categories from index action" do
    get categories_path
    assert_response :success
  end

  test "should get category from new action" do
    get new_category_path
    assert_response :success
  end

  test "should get category from show action" do
    get category_path(@category)
    assert_response :success
  end
end