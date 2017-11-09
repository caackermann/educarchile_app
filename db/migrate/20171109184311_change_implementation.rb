class ChangeImplementation < ActiveRecord::Migration[5.1]
  def change
  	remove_column :project_implementations, :day
  	add_column :project_implementations, :day_1, :date
  	add_column :project_implementations, :day_2, :date
  	add_column :project_implementations, :before, :text
  end
end
