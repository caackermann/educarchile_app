class CreateProjectBitacoras < ActiveRecord::Migration[5.1]
  def change
    create_table :project_bitacoras do |t|
      t.date :day
      t.text :objetives
      t.text :observations
      t.text :advances
      t.text :conflicts
      t.text :new_ideas
      t.references :project_implementation, foreign_key: true

      t.timestamps
    end
  end
end
