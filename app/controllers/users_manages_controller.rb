class UsersManagesController < ApplicationController
  def home
    @user = User.find(params[:id])
    @user_colmuns = ["name", "area", "industries", "occupations"]
  end
end
