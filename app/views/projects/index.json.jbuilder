json.array!(@projects) do |project|
  json.extract! project, :id, :name, :photo_uid, :description
  json.url project_url(project, format: :json)
end
