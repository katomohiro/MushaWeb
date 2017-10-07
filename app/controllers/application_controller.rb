class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def user?
    current_user.class = "User"
  end
  
  def person?
    current_person.class = "Person"
  end
  
  def set_variable_for_form
    @industries = Industry.all
    @occupations = Occupation.all
    @areas = Area.all
  end
  
  private
    
    def admin_sign_in_required
      redirect_to new_admin_session_url unless admin_signed_in?
    end
    
    def user_sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end
    
    def person_sign_in_required
      redirect_to new_person_session_url unless person_signed_in?
    end
end
