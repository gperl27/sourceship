class ProjectsController < ApplicationController

  #may want to put this method in a static controller (home/splash page)
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

  def destroy
    company = Company.find(params[:company_id])
    project = company.projects.find(params[:id])

    project.destroy

    redirect_to companies_path
  end
end
