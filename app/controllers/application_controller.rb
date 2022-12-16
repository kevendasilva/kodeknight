class ApplicationController < ActionController::Base
  def index
    @courses = Course.all
    @projects = Project.all

    @page_title = "Seja bem-vindo(a) - #{I18n.t("blog_title")}"
  end

  def admin_index
    @page_title = "Welcome Knight - Dashboard"
  end

  def projeto
    project_slug = params[:slug]
    @project = project_by_slug(project_slug)

    unless @project
      raise ActionController::RoutingError.new('Not Found')
    end

    @page_title = "#{@project.title} - Projeto"
  end

  private

  def project_by_slug(slug)
    Project.all.each do |project|
      if project.title.downcase.parameterize == slug
        return project
      end
    end

    nil
  end
end
