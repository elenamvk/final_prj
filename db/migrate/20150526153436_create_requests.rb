class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :message
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.integer :n_of_people
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
