class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :clgname
      t.integer :contact
      t.string :addresh

      t.timestamps
    end
  end
end
