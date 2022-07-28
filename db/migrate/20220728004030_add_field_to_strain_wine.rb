class AddFieldToStrainWine < ActiveRecord::Migration[5.2]
  def change
    add_column :strain_wines, :percentage, :integer, default: 0
  end
end
