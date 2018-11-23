class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks

  def self.fing_by_ticker(ticker_symbol)
    where(ticker: ticker).first
  end

  def self.new_from_lookup(ticker_symbol)
    looked_up_stock = StockQuote::Stock.quote(ticker_symbol)
    new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price)
	rescue Exception => e
  end

  def self.strip_commas(number)
  	number.gsub(",","")
  end

end
