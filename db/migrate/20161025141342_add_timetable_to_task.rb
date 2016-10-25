class AddTimetableToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :timetable, foreign_key:true
  end
end
