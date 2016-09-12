class SiteController < ApplicationController
  def home
    @projects = Project.all
  end
end
