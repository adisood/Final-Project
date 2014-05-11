class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def my_courses
	add_term = params[:add_class]
	delete_term = params[:delete_class]
	@current = current_user
	unless add_term.blank?
		code = add_term[10..-1]
		temp = UserPennCourse.find_by course_code: code
		if temp.blank?
			UserPennCourse.create!(:username => @current.email, :course_code => code)
		end
	end
  	
	unless delete_term.blank?
		delete_code = delete_term[13..-1]
		UserPennCourse.delete_all(:course_code => delete_code)
	end

        @relations = UserPennCourse.find(:all, :conditions => ["username =?", @current.email])
  end

  def delete
  end
end
