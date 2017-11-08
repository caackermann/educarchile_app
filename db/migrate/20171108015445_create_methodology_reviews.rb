class CreateMethodologyReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :methodology_reviews do |t|
      t.integer :stars
      t.text :description
      t.references :user, foreign_key: true
      t.references :methodology, foreign_key: true

      t.timestamps
    end
  end
end
