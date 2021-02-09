class AddDescriptionToOperations < ActiveRecord::Migration[6.1]
  def change
    add_column :operations, :description, :string
  end
end
