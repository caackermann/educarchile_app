class AddStartdateToProjectPlanification < ActiveRecord::Migration[5.1]
  def change
    add_column :project_planifications, :startdate, :datetime
    add_column :project_planifications, :finishdate, :datetime
  end
end
