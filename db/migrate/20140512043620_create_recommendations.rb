class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :title
      t.text :des
      t.string :source
      t.string :link
      t.timestamps
    end
  end
end
