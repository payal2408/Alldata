class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.string :plan_description
      t.string :plan_amount

      t.timestamps
    end
  end
end
