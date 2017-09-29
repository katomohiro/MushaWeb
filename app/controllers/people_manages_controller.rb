class PeopleManagesController < ApplicationController
  def home
    @person = Person.find(params[:id])
    @person_colmuns = ["name", "area", "other_naitei"]
    @careers_colmuns = ["industries", "occupations"]
  end
end
