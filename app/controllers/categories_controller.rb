class CategoriesController < ApplicationController
  before_action  only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all
    puts @categories[0]["name"]

    # respond_to do |format|
    #   format.html # index.html.erb
    #   # format.json { render json: @categories}
    # end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])
    @title = @category.name
    @posts = @category.posts
    # respond_to do |format|
    #   format.html # show.html.erb
    #   # format.json { render json: @category}
    # end
  end

end
