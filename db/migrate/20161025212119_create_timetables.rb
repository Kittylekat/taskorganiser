class CreateTimetables < ActiveRecord::Migration
  def change
    create_table :timetables do |t|
      t.references :task, index: true, foreign_key: true
      t.string :taskname
      t.date :startdate
      t.date :enddate
      t.string :weekday

      t.timestamps null: false
    end
  end
end
