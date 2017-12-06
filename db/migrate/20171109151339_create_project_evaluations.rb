class CreateProjectEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :project_evaluations do |t|
      t.text :q_connect
      t.text :q_choose
      t.text :q_plan
      t.text :q_implement1
      t.text :q_implement2
      t.text :q_implement3
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
