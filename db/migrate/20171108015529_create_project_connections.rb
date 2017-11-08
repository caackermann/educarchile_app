class CreateProjectConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :project_connections do |t|
      t.text :needs
      t.text :ideas
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
