class AddLastPriceToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :last_price, :decimal
  end
end
