# frozen_string_literal: true

json.extract! task, :id, :project, :task_name, :activity_name, :created_at, :updated_at
json.url task_url(task, format: :json)
