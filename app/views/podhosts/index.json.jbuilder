json.array!(@podhosts) do |podhost|
  json.extract! podhost, :id, :host_name, :wwn_a, :wwn_b
  json.url podhost_url(podhost, format: :json)
end
