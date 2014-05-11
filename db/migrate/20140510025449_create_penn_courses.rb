class CreatePennCourses < ActiveRecord::Migration
  def change
    create_table :penn_courses do |t|
      t.string :code
      t.string :title
      t.string :des
      t.references :rec

      t.timestamps
    end
  end
end
