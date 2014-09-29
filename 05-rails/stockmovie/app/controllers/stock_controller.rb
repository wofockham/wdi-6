class StockController < ApplicationController
  def index
  end

  def lookup
    @symbol = params[:symbol].upcase
    stock_data = YahooFinance::get_quotes( YahooFinance::StandardQuote, @symbol )
    @price = stock_data[@symbol].lastTrade if stock_data[@symbol]
  end
end
