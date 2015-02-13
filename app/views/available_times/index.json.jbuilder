json.array! @available_times do |available_time|
  json.id available_time.id
  json.start available_time.start_at
  json.end available_time.end_at
  json.allDay false
end
