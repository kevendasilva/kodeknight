class ApplicationController < ActionController::Base
  def index
    @courses = Course.all
    @projects = Project.all
  end

  def admin_index
  end
end
