class ProjectImplementation < ApplicationRecord
  belongs_to :project
  has_many :project_bitacoras, dependent: :destroy
  accepts_nested_attributes_for :project_bitacoras,
                                allow_destroy: true,
                                reject_if: proc { |att| att['day'].blank? },
                                reject_if: proc { |att| att['objetives'].blank? }
end
