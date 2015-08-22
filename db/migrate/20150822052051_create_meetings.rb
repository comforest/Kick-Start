class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      
      
      t.integer :meeting_id
      t.integer :working_id
      t.datetime :day
      t.string :location
      t.timestamps null: false
    end
  end
end
