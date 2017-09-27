class CareersController < ApplicationController
  before_action :set_career, only: [:show, :edit, :update, :destroy]
  before_action :set_variable_for_form, only: [:new, :edit]
  before_action :authenticate_person!, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def new
    @career = Career.new
  end

  def edit
  end

  def create
    @career = Career.new(career_params)
    associate
    if @career.save
      redirect_to people_manage_path(@career.person_id), notice: '職歴が作成されました。' 
    else
      render :new
    end
  end

  def update
    if @career.update(career_params)
      redirect_to people_manage_path(@career.person_id), notice: '職歴が編集されました。'
    else
      render :edit 
    end
  end

  def destroy
    @career.destroy
    redirect_to people_manage_path(@career.person_id), notice: '職歴が削除されました。' 
  end

  private
    
    def set_career
      @career = Career.find(params[:id])
    end

    def career_params
      params.require(:career).permit(:person_id, :company_name)
    end
    
    def set_variable_for_form
      @industries = Industry.all
      @occupations = Occupation.all
    end
    
    def associate
      # associate_list = ["industry","occupation"]
      # associate_list.each do |content|
      #   eval("#{content} = #{content.capitalize}.where(id: params[:#{content}_id])")
      #   eval("@career.#{content.pluralize} << #{content}")
      # end
      industry = Industry.where(id: params[:industry_id])
      @career.industries << industry
      occupation = Occupation.where(id: params[:occupation_id])
      @career.occupations << occupation
    end
end
