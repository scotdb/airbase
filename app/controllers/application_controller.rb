class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  protected
    def authorize
       # unless signed_in/
       # flash "Please sign in"
       redirect_to new_user_session_path
    end
end
