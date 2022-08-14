class CreateLeaves < ActiveRecord::Migration[6.1]
  def change
    create_table :leaves do |t|
      t.string :resion
      t.integer :days
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
