class MethodologyEvaluation < ApplicationRecord
  belongs_to :methodology
  belongs_to :project_connection, optional: true
end
