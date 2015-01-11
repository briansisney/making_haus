json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :week_id, :user_id, :arrival_date, :departure_date, :arrival_time
  json.url schedule_url(schedule, format: :json)
end
