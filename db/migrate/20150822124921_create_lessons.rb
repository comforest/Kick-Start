class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :lesson_id
      t.integer :professor_id
      t.string :subject
      t.text :working
      t.timestamps null: false
    end
  end
end
