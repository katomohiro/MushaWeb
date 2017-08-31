class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # TODO: ログインしないとアクセスできないようにする
  # before_action :sign_in_required
  
  private
    def user_sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end
    
    def person_sign_in_required
      redirect_to new_person_session_url unless person_signed_in?
    end
end
