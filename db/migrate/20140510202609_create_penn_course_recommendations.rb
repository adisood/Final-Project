class CreatePennCourseRecommendations < ActiveRecord::Migration
  def change
    create_table :penn_course_recommendations do |t|
      t.string :course_code
      t.string :rec_title

      t.timestamps
    end
  end
end
