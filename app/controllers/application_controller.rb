class ApplicationController < ActionController::Base

  def writing_index
    matching_posts = Post.all
    @list_of_posts = matching_posts.order({ :created_at => :asc })
    render ({ :template => "writing_template/index.html.erb"})
  end

end
