class CreateMethodologies < ActiveRecord::Migration[5.1]
  def change
    create_table :methodologies do |t|
      t.string :name
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
