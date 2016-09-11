class ProjectsController < ApplicationController
  def index
    @company = Company.find(params[:company_id])
    @projects = @company.projects
  end

  def show
    @company = Company.find(params[:company_id])
    @project = @company.projects.find(params[:id])
  end
end
