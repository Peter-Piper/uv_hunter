json.array!(@catch_reports) do |catch_report|
  json.extract! catch_report, :id, :description, :gps_coords, :user_id, :start_time, :stop_time
  json.url catch_report_url(catch_report, format: :json)
end
