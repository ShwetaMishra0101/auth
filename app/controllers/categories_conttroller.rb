class CategoriesController < ApplicationController

def new
    category = @Category.new
end

def create 
    @category = Category.new(category_params)

    if @category.save
        flash[:notice] = "Category was successfully created"
        redirect_to @category
end
end

def index
end

def show
end

private

 def categories_params
    params.require(:category).permmit

 end
end

