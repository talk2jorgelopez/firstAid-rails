json.extract! symptom, :id, :symptom_type, :created_at, :updated_at
json.url searchby_symptoms_url(symptom, format: :json)