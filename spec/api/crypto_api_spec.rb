=begin
#tradewatch.io

#Financial market data for Developers

The version of the OpenAPI document: 3.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for tradewatch::CryptoApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CryptoApi' do
  before do
    # run before each test
    @api_instance = tradewatch::CryptoApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CryptoApi' do
    it 'should create an instance of CryptoApi' do
      expect(@api_instance).to be_instance_of(tradewatch::CryptoApi)
    end
  end

  # unit tests for convert
  # Conversion
  # Convert one symbol to another
  # @param from 
  # @param to 
  # @param [Hash] opts the optional parameters
  # @return [CryptoConversion]
  describe 'convert test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for crypto_get_exchanges
  # Available Exchanges
  # Get list of available cryptocurrency exchanges
  # @param [Hash] opts the optional parameters
  # @return [CryptoExchangesList]
  describe 'crypto_get_exchanges test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for getQuote
  # Last Quote
  # Get the last quote tick for the provided symbol.
  # @param symbol 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :precision 
  # @return [LastQuote]
  describe 'getQuote test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for getSymbols
  # Available Symbols
  # Get list of available symbols
  # @param mode Listing mode
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :size Page offset
  # @option opts [Integer] :page Page number
  # @option opts [String] :cursor Cursor for the next page
  # @return [CursorPageTCustomizedSymbolsOutFull]
  describe 'getSymbols test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
