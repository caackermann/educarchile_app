class ChangeDescriptionTypeInProjects < ActiveRecord::Migration[5.1]
  def change
    change_column :projects, :description, :text
  end
end
