class CreateAlphas < ActiveRecord::Migration
  def change
    create_table :alphas do |t|
      t.string :name
      t.string :email
      t.string :degree
      t.string :college

      t.timestamps null: false
    end
  end
end
