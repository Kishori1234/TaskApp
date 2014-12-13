class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :taskId
      t.string :taskName
      t.string :status

      t.timestamps
    end
  end
end
