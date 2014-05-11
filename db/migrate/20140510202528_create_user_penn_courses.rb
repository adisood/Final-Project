class CreateUserPennCourses < ActiveRecord::Migration
  def change
    create_table :user_penn_courses do |t|
      t.string :username
      t.string :course_code

      t.timestamps
    end
  end
end
