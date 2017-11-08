class CreateProjectResources < ActiveRecord::Migration[5.1]
  def change
    create_table :project_resources do |t|
      t.string :name
      t.boolean :disponibility
      t.text :comment
      t.integer :place
      t.references :project_planification, foreign_key: true

      t.timestamps
    end
  end
end
