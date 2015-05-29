class AddGravatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :users_gravatar, :string
  end
end
