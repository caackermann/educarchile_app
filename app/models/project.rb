class Project < ApplicationRecord
  belongs_to :user
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
