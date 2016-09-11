class ProjectsController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
    @projects = @company.projects
  end
end
