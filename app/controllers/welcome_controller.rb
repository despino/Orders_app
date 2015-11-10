class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to '/groups'
    else
      render :file => '/public/myindex.html'
    end
  end
end
