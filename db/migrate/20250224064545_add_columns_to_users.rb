class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :birthday, :date
    add_column :users, :bio, :text
    add_column :users, :location, :string
    add_column :users, :website_url, :string
    add_column :users, :avatar_url, :string
    add_column :users, :header_url, :string
  end
end
