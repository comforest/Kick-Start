class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.integer :professor_id
      t.timestamps null: false
    end
  end
end
