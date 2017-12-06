class CreateProjectDiffusions < ActiveRecord::Migration[5.1]
  def change
    create_table :project_diffusions do |t|
      t.string :moment
      t.text :audience
      t.text :channel
      t.text :object
      t.references :project_planification, foreign_key: true

      t.timestamps
    end
  end
end
