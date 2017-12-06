class Project < ApplicationRecord
  belongs_to :user
  has_one    :methodologhy
  has_one :project_connection, inverse_of: :project
  has_one :project_choice
  has_one :project_planification, inverse_of: :project
  has_one :project_evaluation
  has_one :project_implementation, inverse_of: :project
  has_many :project_reviews

  def connection_exists?
    !project_connection.nil?
  end

  def choice_exists?
    !project_choice.nil?
  end

  def implementation_exists?
    !project_implementation.nil?
  end

  def planification_exists?
    !project_planification.nil?
  end

  def avg_rating
    @avg_rating = if project_reviews.blank?
                    0
                  else
                    project_reviews.average(:rating).round(2)
                  end
    @avg_rating
  end
end
