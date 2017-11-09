class Project < ApplicationRecord
  belongs_to :user
  has_one :project_connection, inverse_of: :project
  has_one :project_choice
  has_one :project_planification, inverse_of: :project
end
