class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def after_sign_in_path_for(resource)
    (session[:"user.return_to"].nil?) ? "/" : session[:"user.return_to"].to_s
  end

  # protected
    # def authorize
       # unless signed_in/
       # flash "Please sign in"
       # redirect_to new_user_session_path
    # end
end
