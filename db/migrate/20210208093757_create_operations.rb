class CreateOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :operations do |t|
      t.belongs_to :stock
      t.belongs_to :product
      t.string :operation_type
      t.integer :quantity
      t.timestamps
    end
  end
end
