class CreateWorkings < ActiveRecord::Migration
  def change
    create_table :workings do |t|
      t.integer :working_id
      t.text :memberlist
      
      t.timestamps null: false
    end
  end
end
