class CreateWorkings < ActiveRecord::Migration
  def change
    create_table :workings do |t|
      t.integer :working_id
      t.integer :lesson_id
      t.text :team
      
      t.timestamps null: false
    end
  end
end
