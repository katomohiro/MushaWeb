class PeopleManagesController < ApplicationController
  def home
    @careers = Person.find(params[:id]).careers
    @careers_colmuns = ["industries","occupations"]
  end
end
