class ProjectPlanification < ApplicationRecord
  belongs_to :project
  has_many :project_resources, dependent: :destroy
  accepts_nested_attributes_for :project_resources,
                                allow_destroy: true,
                                reject_if: proc { |att| att['name'].blank? },
                                reject_if: proc { |att| att['comment'].blank? }

  has_many :project_conditions, dependent: :destroy
  accepts_nested_attributes_for :project_conditions,
                                allow_destroy: true,
                                reject_if: proc { |att| att['name'].blank? },
                                reject_if: proc { |att| att['comment'].blank? }

  has_many :project_difusions, dependent: :destroy
  accepts_nested_attributes_for :project_difusions,
                                allow_destroy: true,
                                reject_if: proc { |att| att['moment'].blank? },
                                reject_if: proc { |att| att['channel'].blank? },
                                reject_if: proc { |att| att['audience'].blank? },
                                reject_if: proc { |att| att['object'].blank? }
end
