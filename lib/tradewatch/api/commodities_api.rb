=begin
#tradewatch.io

#Financial market data for Developers

The version of the OpenAPI document: 3.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'cgi'

module tradewatch
  class CommoditiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Last Quote
    # Get the last quote tick for the provided symbol.
    # @param symbol [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :precision  (default to 5)
    # @return [LastQuote]
    def getQuote(symbol, opts = {})
      data, _status_code, _headers = getQuote_with_http_info(symbol, opts)
      data
    end

    # Last Quote
    # Get the last quote tick for the provided symbol.
    # @param symbol [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :precision  (default to 5)
    # @return [Array<(LastQuote, Integer, Hash)>] LastQuote data, response status code and response headers
    def getQuote_with_http_info(symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommoditiesApi.getQuote ...'
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling CommoditiesApi.getQuote"
      end
      # resource path
      local_var_path = '/commodities/symbols/{symbol}'.sub('{' + 'symbol' + '}', CGI.escape(symbol.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'precision'] = opts[:'precision'] if !opts[:'precision'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LastQuote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_query', 'api_key_header']

      new_options = opts.merge(
        :operation => :"CommoditiesApi.getQuote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommoditiesApi#getQuote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Available Symbols
    # Get list of available symbols
    # @param mode [SymbolsListMode] Listing mode
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size Page offset (default to 50)
    # @option opts [CommodityType] :type 
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [String] :cursor Cursor for the next page
    # @return [CursorPageTCustomizedSymbolsOutFull]
    def getSymbols(mode, opts = {})
      data, _status_code, _headers = getSymbols_with_http_info(mode, opts)
      data
    end

    # Available Symbols
    # Get list of available symbols
    # @param mode [SymbolsListMode] Listing mode
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :size Page offset (default to 50)
    # @option opts [CommodityType] :type 
    # @option opts [Integer] :page Page number (default to 1)
    # @option opts [String] :cursor Cursor for the next page
    # @return [Array<(CursorPageTCustomizedSymbolsOutFull, Integer, Hash)>] CursorPageTCustomizedSymbolsOutFull data, response status code and response headers
    def getSymbols_with_http_info(mode, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommoditiesApi.getSymbols ...'
      end
      # verify the required parameter 'mode' is set
      if @api_client.config.client_side_validation && mode.nil?
        fail ArgumentError, "Missing the required parameter 'mode' when calling CommoditiesApi.getSymbols"
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling CommoditiesApi.getSymbols, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/commodities/symbols'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'mode'] = mode
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CursorPageTCustomizedSymbolsOutFull'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_query', 'api_key_header']

      new_options = opts.merge(
        :operation => :"CommoditiesApi.getSymbols",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommoditiesApi#getSymbols\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Available Types
    # Get list of available commodity types
    # @param [Hash] opts the optional parameters
    # @return [CommodityTypesList]
    def getTypes(opts = {})
      data, _status_code, _headers = getTypes_with_http_info(opts)
      data
    end

    # Available Types
    # Get list of available commodity types
    # @param [Hash] opts the optional parameters
    # @return [Array<(CommodityTypesList, Integer, Hash)>] CommodityTypesList data, response status code and response headers
    def getTypes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommoditiesApi.getTypes ...'
      end
      # resource path
      local_var_path = '/commodities/types'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CommodityTypesList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key_query', 'api_key_header']

      new_options = opts.merge(
        :operation => :"CommoditiesApi.getTypes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommoditiesApi#getTypes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
