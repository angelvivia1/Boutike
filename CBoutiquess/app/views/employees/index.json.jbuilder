

json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :city, :neighborhood, :street_number, :email, :age, :celphone, :date_hire
  json.url employee_url(employee, format: :json)
end
