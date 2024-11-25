=begin
#tradewatch.io

#Financial market data for Developers

The version of the OpenAPI document: 3.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

# Common files
require 'tradewatch/api_client'
require 'tradewatch/api_error'
require 'tradewatch/version'
require 'tradewatch/configuration'

# Models
require 'tradewatch/models/account_usage_statistics_interval'
require 'tradewatch/models/api_usage_data_transfer'
require 'tradewatch/models/api_usage_entry'
require 'tradewatch/models/commodity_type'
require 'tradewatch/models/commodity_type_obj'
require 'tradewatch/models/commodity_types_list'
require 'tradewatch/models/conversion'
require 'tradewatch/models/conversion_info'
require 'tradewatch/models/conversion_query'
require 'tradewatch/models/countries_list'
require 'tradewatch/models/country'
require 'tradewatch/models/country_obj'
require 'tradewatch/models/crypto_conversion'
require 'tradewatch/models/crypto_conversion_query'
require 'tradewatch/models/cursor_page_t_customized_symbols_out_full'
require 'tradewatch/models/error_details'
require 'tradewatch/models/error_response_body'
require 'tradewatch/models/http_validation_error'
require 'tradewatch/models/last_quote'
require 'tradewatch/models/symbols_list_mode'
require 'tradewatch/models/symbols_out_full'
require 'tradewatch/models/validation_error'
require 'tradewatch/models/validation_error_loc_inner'

# APIs
require 'tradewatch/api/account_api'
require 'tradewatch/api/commodities_api'
require 'tradewatch/api/crypto_api'
require 'tradewatch/api/currencies_api'
require 'tradewatch/api/indices_api'
require 'tradewatch/api/stocks_api'

module tradewatch
  class << self
    # Customize default settings for the SDK using block.
    #   tradewatch.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
