class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    # in ruby return is implied with last statement
    client.price(ticker_symbol)
  end

end
