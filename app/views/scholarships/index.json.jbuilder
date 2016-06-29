json.array!(@scholarships) do |scholarship|
  json.extract! scholarship, :id, :name, :gender, :date_of_birth, :gpa, :address, :state, :university :essay
  json.url scholarship_url(scholarship, format: :json)
end
