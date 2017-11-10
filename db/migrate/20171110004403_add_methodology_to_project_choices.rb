class AddMethodologyToProjectChoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :project_choices, :methodology, foreign_key: true
  end
end
