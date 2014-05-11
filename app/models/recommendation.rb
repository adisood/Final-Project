class Recommendation < ActiveRecord::Base
	has_many :PennCourse, :through => :CourseRecoRelation
end
