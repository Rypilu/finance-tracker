class StocksController < ApplicationController
  def search
    # '@' means instance var
    @stock = Stock.new_lookup(params[:stock])
    render 'users/my_portfolio'
  end
end