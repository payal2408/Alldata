class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :coffe_name
      t.integer :price

      t.timestamps
    end
  end
end
