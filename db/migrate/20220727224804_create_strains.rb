class CreateStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :strains do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
