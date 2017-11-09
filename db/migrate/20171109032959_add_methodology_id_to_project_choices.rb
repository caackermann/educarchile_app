class AddMethodologyIdToProjectChoices < ActiveRecord::Migration[5.1]
  def change
    add_column :project_choices, :methodology_id, :integer
  end
end
