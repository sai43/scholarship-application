json.array!(@applications) do |application|
  json.extract! application, :id, :name, :string, :date_of_birth, :date, :gender, :boolean, :address, :text, :city, :string, :zip_code, :string, :phone_number, :string, :email, :string, :essay, :text
  json.url application_url(application, format: :json)
end
