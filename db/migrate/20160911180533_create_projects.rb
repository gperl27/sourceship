class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :level
      t.references :company, foreign_key: true
      t.boolean :finished
      t.datetime :due_date

      t.timestamps
    end
  end
end
