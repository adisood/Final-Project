class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.references :course
      t.string :password_confirmation
      t.string :encrypted_password

      t.timestamps
    end
  end
end
