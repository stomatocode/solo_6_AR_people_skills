class CreateProficienciesTable < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.references :skill
      t.references :user
      t.integer :rating
    end
  end
end
