class BlogController < ApplicationController
  def list
    @blog= Personal_Blog.all
  end

  def view
    @blog= Personal_Blog.find_by id: params[:id]
  end
  def new
    @blog= Personal_Blog.new
  end

def create
  @blog=Personal_Blog.new
  # set the values
  @blog.title = params[:personal_blog][:title]
  @blog.author = params[:personal_blog][:author]
  @blog.subtitle = params[:personal_blog][:subtitle]
  # save it
  if @blog.save
    # redirect to "/books"
    redirect_to blog_path(id: @blog.id)
  else
    render :new
  end
end

  def edit
    @blog = Personal_Blog.find_by id: params[:id]
  end
  def update
    # instantiant / Find
    @blog = Personal_Blog.find_by id: params[:id]
    # set values
    @blog.title = params[:personal_blog][:title]
    @blog.author = params[:personal_blog][:author]
    @blog.subtitle = params[:personal_blog][:subtitle]

    # save it
    if @blog.save
      # redirect to "/blogs"
      redirect_to root_path
    else
      render :edit
    end
  end



  def delete
  @blog = Personal_Blog.find_by id: params[:id]
  @blog.destroy
  redirect_to root_path
end
end
