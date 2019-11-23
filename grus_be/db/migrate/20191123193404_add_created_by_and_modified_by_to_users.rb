class AddCreatedByAndModifiedByToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :created_by, :string
    add_column :users, :modified_by, :string
  end
end
