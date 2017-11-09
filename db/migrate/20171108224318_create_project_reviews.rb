class CreateProjectReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :project_reviews do |t|
      t.text :content
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
