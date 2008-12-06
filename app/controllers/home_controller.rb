class HomeController < ApplicationController
  def index 
    if params[:category] == nil
      category = "Home"
    else
      category = params[:category]
    end
    
    @posts = Post.find_by_sql ["SELECT * FROM posts INNER JOIN categories ON posts.category_id = categories.id WHERE categories.category_name = ?", category]
    @cats = Category.find(:all)

    respond_to do |format|
      format.html # index.html.erb
    end
   end
end
