json.array!(@trackers) do |tracker|
  json.extract! tracker, :id, :users_id, :date_tracker, :lat_tracker, :long_tracker
  json.url tracker_url(tracker, format: :json)
end
