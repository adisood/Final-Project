class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
	has_many :UserPennCourse
	has_many :PennCourse, :through => :UserPennCourse

	validates :email, uniqueness: true	
end
