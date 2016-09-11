class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.string :username
      t.string :password
      t.text :description

      t.timestamps
    end
  end
end