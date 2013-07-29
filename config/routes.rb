YearbookReview::Application.routes.draw do
  get "/ctd", { :controller => "courses", :action => "ctd" }

  # create yearbook pages for at least 2 other courses
end
