class Project < ApplicationRecord
  belongs_to :user

  has_one :project_connection, inverse_of: :project
  has_one :project_choice
  has_one :project_planification, inverse_of: :project
  has_one :project_evaluation
  has_many   :project_reviews

  def avg_rating
    if project_reviews.blank?
      @avg_rating = 0
    else
      @avg_rating = project_reviews.average(:rating).round(2)
    end
    @avg_rating
  end

end
