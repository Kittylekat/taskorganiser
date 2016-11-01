class AddColorIdToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :colors, foreign_key:true
  end
end
