class PennCoursesController < ApplicationController
  def new
 	@new_class = PennCourse.new 
  end

  def create
	if params.has_key?(:new_class)
		@new_class = PennCourse.new(params[:new_class].permit(:code, :title, :des))
		@new_class.save
	end
	redirect_to :back
  end

  def edit
  end

  def my_recommendations
  	@course = PennCourse.search(params[:search])
	unless @course.blank?	
		@relation = PennCourseRecommendation.where("course_code =?", @course.code)
		@recommendations = findRecs
	end
  end

  def findRecs
	temp = []
	for a in @relation do
		temp = temp + helper(a)
	end
	temp
  end

  def helper(a)
	temp = Recommendation.where("title =?", a.rec_title)
  	temp
  end

  def delete
  end
end
