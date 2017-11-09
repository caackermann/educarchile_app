class CreateProjectConditions < ActiveRecord::Migration[5.1]
  def change
    create_table :project_conditions do |t|
      t.string :name
      t.text :comment
      t.references :project_planification, foreign_key: true

      t.timestamps
    end
  end
end
