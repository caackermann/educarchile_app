class RemoveMethodologyIdFromProjectChoices < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_choices, :methodology_id, :integer
  end
end
