class RemoveLastPriceFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :last_price, :string
  end
end
