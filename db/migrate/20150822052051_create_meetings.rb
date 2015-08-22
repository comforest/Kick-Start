class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :working_id
      t.integer :meeting_id
      
      t.timestamps null: false
    end
  end
end
