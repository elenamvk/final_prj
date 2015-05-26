class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gravatar
      t.string :bio
      t.string :verified
      t.string :role

      t.timestamps null: false
    end
  end
end
