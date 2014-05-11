class UserPennCourse < ActiveRecord::Base
	belongs_to :User, :dependent => :destroy
	belongs_to :PennCourse, :dependent => :destroy

	validates_associated :User
	validates_associated :PennCourse
end
