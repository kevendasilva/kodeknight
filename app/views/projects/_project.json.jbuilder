json.extract! project, :id, :title, :kind, :resume, :content, :created_at, :updated_at
json.url project_url(project, format: :json)
json.content project.content.to_s
