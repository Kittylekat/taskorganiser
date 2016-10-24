class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :task_id
      t.string :content

      t.timestamps null: false
    end
  end
end
