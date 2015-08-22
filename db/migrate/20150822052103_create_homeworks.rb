class CreateHomeworks < ActiveRecord::Migration
  def change
    create_table :homeworks do |t|
      t.integer :working_id
      t.integer :meeting_id
      t.integer :homework_id
      t.integer :member_id
      t.text :content
      t.text :rating
      t.timestamps null: false
    end
  end
end
