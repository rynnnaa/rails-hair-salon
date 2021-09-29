class CreateHairDressers < ActiveRecord::Migration[6.1]
  def change
    create_table :hair_dressers do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
