json.array!(@test_controllers) do |test_controller|
  json.extract! test_controller, :id
  json.url test_controller_url(test_controller, format: :json)
end
