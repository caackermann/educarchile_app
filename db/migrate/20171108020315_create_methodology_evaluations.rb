class CreateMethodologyEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :methodology_evaluations do |t|
      t.text :reason
      t.integer :utility
      t.integer :pertinence
      t.integer :relevance
      t.references :methodology, foreign_key: true
      t.references :project_connection, foreign_key: true
      t.string :comentary
      t.text :methodology_chosen

      t.timestamps
    end
  end
end
