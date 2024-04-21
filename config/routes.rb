Rails.application.routes.draw do

  # Routes for the Post resource:

  # Writing some test code

  # CREATE
  post("/insert_post", { :controller => "posts", :action => "create" })
          
  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  
  get("/posts/:path_id", { :controller => "posts", :action => "show" })
  
  # UPDATE
  
  post("/modify_post/:path_id", { :controller => "posts", :action => "update" })
  
  # DELETE
  get("/delete_post/:path_id", { :controller => "posts", :action => "destroy" })

  #------------------------------

  # Homepage
    get("/",{ :controller => "application", :action => "writing_index" })

  # Writing
    get("/writing",{ :controller => "application", :action => "writing_index" })
  
  # Writing_Show
    get("/writing/:path_id",{ :controller => "application", :action => "writing_show" })

  # About
    get("/about",{ :controller => "application", :action => "about_index" })

  # Books
    get("/books",{ :controller => "application", :action => "books_index" })

  # Now
    get("/now",{ :controller => "application", :action => "now_index" })
    
end
