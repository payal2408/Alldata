class CreateUserPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :user_plans do |t|
      t.references :plan, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
