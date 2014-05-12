class CreatePennCourses < ActiveRecord::Migration
  def change
  drop_table :penn_courses
  end  
  create_table :penn_courses do |t|
      t.string :code
      t.string :title
      t.text :des
      t.references :rec

      t.timestamps
    end
  end
end
