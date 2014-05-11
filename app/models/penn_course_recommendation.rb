class PennCourseRecommendation < ActiveRecord::Base
	belongs_to :PennCourse
	belongs_to :Recommendation

	validates_associated :PennCourse
	validates_associated :Recommendation
end

