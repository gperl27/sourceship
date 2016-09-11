class ProjectsController < ApplicationController

  def all
    @projects = Project.all
  end

  def index
    @company = Company.find(params[:company_id])
    @projects = @company.projects
  end

  def show
    @company = Company.find(params[:company_id])
    @project = @company.projects.find(params[:id])
  end
end
