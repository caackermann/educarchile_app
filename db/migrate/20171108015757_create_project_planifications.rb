class CreateProjectPlanifications < ActiveRecord::Migration[5.1]
  def change
    create_table :project_planifications do |t|
      t.string :name
      t.string :place
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
