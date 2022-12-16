class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]

  # GET /courses or /courses.json
  def index
    @courses = Course.all

    @page_title = I18n.t("page_title.controllers.index", resource: "Courses")
  end

  # GET /courses/1 or /courses/1.json
  def show
    @page_title = I18n.t("page_title.controllers.show", resource: "#{@course.name} course")
  end

  # GET /courses/new
  def new
    @course = Course.new

    @page_title = I18n.t("page_title.controllers.new.success", resource: "course")
  end

  # GET /courses/1/edit
  def edit
    @page_title = I18n.t("page_title.controllers.edit.success", resource: "course")
  end

  # POST /courses or /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_url, notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        @page_title = I18n.t("page_title.controllers.new.error", resource: "course")

        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to courses_url, notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        @page_title = I18n.t("page_title.controllers.edit.error", resource: "course")

        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:name, :start_date, :end_date)
    end
end
