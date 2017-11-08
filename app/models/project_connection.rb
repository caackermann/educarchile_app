class ProjectConnection < ApplicationRecord
  belongs_to :project
  has_many :project_evaluations, dependent: :destroy
  accepts_nested_attributes_for :project_evaluations,
                                allow_destroy: true,
                                reject_if: proc { |att| att['reason'].blank? },
                                reject_if: proc { |att| att['methodology_id'].blank? }
end
