class RemoveDayFromProjectImplementation < ActiveRecord::Migration[5.1]
  def change
    remove_column :project_implementations, :day, :date
    remove_column :project_implementations, :observations, :text
    remove_column :project_implementations, :advances, :text
    remove_column :project_implementations, :conflicts, :text
    remove_column :project_implementations, :new_ideas, :text
  end
end
