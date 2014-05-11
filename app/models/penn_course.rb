class PennCourse < ActiveRecord::Base
	has_many :UserPennCourse
	has_many :User, :through => :UserPennCourse
	has_many :Recommendation, :through => :CourseRecoRelation, :source => :recommendation
	
	validates :code, :title, presence: true

	def self.search(search)
		if search
			first(:conditions => ['code LIKE ? OR title LIKE ?', "%#{search}%", "%#{search}%"])
		end
	end
end
