class AddRegionLabelTypeAndSupplierToWine < ActiveRecord::Migration
  def change
    add_column :wines, :region, :string
    add_column :wines, :label, :text
    add_column :wines, :type, :string
    add_column :wines, :supplier, :string
  end
end
