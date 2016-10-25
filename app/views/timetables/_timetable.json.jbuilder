json.extract! timetable, :id, :task_id, :taskname, :startdate, :enddate, :weekday, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)
