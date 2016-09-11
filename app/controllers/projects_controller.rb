class ProjectsController < ApplicationController

  #may want to put this method in a static controller (home/splash page)
  def all
    @projects = Project.all
  end

  def index
    @company = Company.find(params[:company_id])
    @projects = @company.projects
  end

  def new
    @company = Company.find(params[:company_id])
    @project = @company.projects.new
  end

  def create
    company = Company.find(params[:company_id])
    project = company.projects.new(project_params)
    if project.save
      redirect_to company_projects_path
    else
      render 'new'
    end
  end

  def show
    @company = Company.find(params[:company_id])
    @project = @company.projects.find(params[:id])
  end

  def destroy
    company = Company.find(params[:company_id])
    project = company.projects.find(params[:id])

    project.destroy

    redirect_to company_projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :due_date, :level)
  end
end
