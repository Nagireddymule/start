json.extract! employee, :id, :name, :phone, :job_type, :created_at, :updated_at
json.url employee_url(employee, format: :json)
