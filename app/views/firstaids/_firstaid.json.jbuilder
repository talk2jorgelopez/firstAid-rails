json.extract! firstaid, :id, :firstAidName, :firstAidDescription, :symptom_id, :vital_id, :severity_id, :created_at, :updated_at
json.url firstaid_url(firstaid, format: :json)