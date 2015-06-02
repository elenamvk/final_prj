class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :message
      t.integer :user_id
      t.integer :request_id
      t.boolean :offered, default: false

      t.timestamps null: false
    end
  end
end
