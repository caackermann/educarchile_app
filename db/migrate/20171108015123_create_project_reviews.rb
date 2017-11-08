class CreateProjectReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :project_reviews do |t|
      t.integer :stars
      t.string :description
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
