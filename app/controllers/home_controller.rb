class HomeController < ApplicationController
  def index
  end

  def class_list
  	@classes = PennCourse.order(:code)
  end

  def user_list
	@users = User.find(:all)
  end

  def log_in
  end

  def sign_up
  end
end
