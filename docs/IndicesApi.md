# tradewatch::IndicesApi

All URIs are relative to *https://api.tradewatch.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**getQuote**](IndicesApi.md#getQuote) | **GET** /indices/symbols/{symbol} | Last Quote |
| [**getSymbols**](IndicesApi.md#getSymbols) | **GET** /indices/symbols | Available Symbols |


## getQuote

> <LastQuote> getQuote(symbol, opts)

Last Quote

Get the last quote tick for the provided symbol.

### Examples

```ruby
require 'time'
require 'tradewatch'
# setup authorization
tradewatch.configure do |config|
  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'
end

api_instance = tradewatch::IndicesApi.new
symbol = 'symbol_example' # String | 
opts = {
  precision: 56 # Integer | 
}

begin
  # Last Quote
  result = api_instance.getQuote(symbol, opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling IndicesApi->getQuote: #{e}"
end
```

#### Using the getQuote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LastQuote>, Integer, Hash)> getQuote_with_http_info(symbol, opts)

```ruby
begin
  # Last Quote
  data, status_code, headers = api_instance.getQuote_with_http_info(symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LastQuote>
rescue tradewatch::ApiError => e
  puts "Error when calling IndicesApi->getQuote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** |  |  |
| **precision** | **Integer** |  | [optional][default to 5] |

### Return type

[**LastQuote**](LastQuote.md)

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSymbols

> <CursorPageTCustomizedSymbolsOutFull> getSymbols(mode, opts)

Available Symbols

Get list of available symbols

### Examples

```ruby
require 'time'
require 'tradewatch'
# setup authorization
tradewatch.configure do |config|
  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'
end

api_instance = tradewatch::IndicesApi.new
mode = tradewatch::SymbolsListMode::FULL # SymbolsListMode | Listing mode
opts = {
  size: 56, # Integer | Page offset
  page: 56, # Integer | Page number
  cursor: 'cursor_example' # String | Cursor for the next page
}

begin
  # Available Symbols
  result = api_instance.getSymbols(mode, opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling IndicesApi->getSymbols: #{e}"
end
```

#### Using the getSymbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CursorPageTCustomizedSymbolsOutFull>, Integer, Hash)> getSymbols_with_http_info(mode, opts)

```ruby
begin
  # Available Symbols
  data, status_code, headers = api_instance.getSymbols_with_http_info(mode, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CursorPageTCustomizedSymbolsOutFull>
rescue tradewatch::ApiError => e
  puts "Error when calling IndicesApi->getSymbols_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**SymbolsListMode**](.md) | Listing mode |  |
| **size** | **Integer** | Page offset | [optional][default to 50] |
| **page** | **Integer** | Page number | [optional][default to 1] |
| **cursor** | **String** | Cursor for the next page | [optional] |

### Return type

[**CursorPageTCustomizedSymbolsOutFull**](CursorPageTCustomizedSymbolsOutFull.md)

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
