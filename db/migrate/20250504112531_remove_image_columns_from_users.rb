class RemoveImageColumnsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :avatar_url
    remove_column :users, :header_url
  end
end
