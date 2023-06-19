require "test_helper"

class ListCategoryTest < ActionDispatch::IntegrationTest
  def setup 
    @category = Category.create(name: "sports")
    
  end 


  