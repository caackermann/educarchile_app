class ProjectImplementation < ApplicationRecord
  belongs_to :project
  has_many :project_bitacoras, dependent: :destroy
  accepts_nested_attributes_for :project_bitacoras,
                                allow_destroy: true
end
