class CreateProjectChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :project_choices do |t|
      t.string :desicion
      t.string :p1
      t.string :p2
      t.string :p3
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
