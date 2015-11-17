class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
  #   new_session_path('orders')
  # end
  add_breadcrumb "My Groups", :root_path, :options => { :title => "My Groups" }
  # add_breadcrumb "Group Members", :group_path, :options => { :title => "Group Members" }


  def index
    add_breadcrumb "index", index_path, :title => "Back to My Groups"
    # add_breadcrumb "Group Members", group_path, :title => "Back to the Groups"

  end
end
