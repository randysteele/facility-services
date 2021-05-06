json.extract! workorder, :id, :body, :caller, :technician, :target_date, :resolution, :client_id, :created_at, :updated_at
json.url workorder_url(workorder, format: :json)
