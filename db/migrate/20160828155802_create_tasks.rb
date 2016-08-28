class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :content
      t.integer :status, limit: 4

      t.timestamps null: false
    end
  end
end
