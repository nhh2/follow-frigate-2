class ApplicationController < ActionController::Base

  def writing_index
    matching_posts = Post.all
    @list_of_posts = matching_posts.order({ :created_at => :asc })
    render ({ :template => "writing_template/index.html.erb"})
  end

  def writing_show
    @the_title = params.fetch("path_id")
    @the_post = Post.where({ :title => @the_title }).at(0)

    render ({ :template => "writing_template/show.html.erb"})
  end

  def about_index
    render ({ :template => "about_template/index.html.erb"})
  end

  def books_index
    render ({ :template => "books_template/index.html.erb"})
  end

  def now_index
    render ({ :template => "now_template/index.html.erb"})
  end
  
end
