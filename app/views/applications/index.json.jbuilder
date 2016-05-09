json.array!(@applications) do |application|
  json.extract! application, :id, :name, :gender, :date_of_birth, :gpa, :essay
  json.url application_url(application, format: :json)
end
