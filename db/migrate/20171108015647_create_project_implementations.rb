class CreateProjectImplementations < ActiveRecord::Migration[5.1]
  def change
    create_table :project_implementations do |t|
      t.date :day
      t.text :observations
      t.text :advances
      t.text :conflicts
      t.text :new_ideas
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
