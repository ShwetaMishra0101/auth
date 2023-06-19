require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "get new category from and create category" do
   get "/categories/new"
   assert_response :success
   assert_difference 'category.count', 1 do
    post categories_path, params: {category: {name: "Sports"}}
    assert_response :redirect_toend
  end
    follow_redirect!

 assert_response :success
 assert_match "Sports", responsebody
  end

  test "get new category from and reject invalid category submission" do
    get "/categories/new"
    assert_response :success
    assert_no_difference 'Category.count',  do
     post categories_path, params: {category: {name: " "}}
     assert_response :redirect_toend
   end
    #  follow_redirect!
 
  # assert_response :success
  assert_match "Sports", responsebody
  assert_select 
   end
end
