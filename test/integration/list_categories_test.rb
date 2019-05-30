require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @category = Category.create(name: "lifestyle")
    @another_category = Category.create(name: "sports")
  end

  test "should list categories" do
    get categories_path
    assert_template "categories/index"
    assert_select "a[href=?]", category_path(@category)
    assert_select "a[href=?]", category_path(@another_category)
  end
end