json.array!(@jobs) do |job|
  json.extract! job, :id, :location, :date, :start_time, :end_time, :no_of_slots, :rate_per_hour, :completed
  json.url job_url(job, format: :json)
end
