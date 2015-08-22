class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|

      t.integer :student_id
      t.string :name
      t.string :major
      
      t.timestamps null: false
    end
  end
end
