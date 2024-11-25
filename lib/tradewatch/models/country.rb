=begin
#tradewatch.io

#Financial market data for Developers

The version of the OpenAPI document: 3.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.11.0-SNAPSHOT

=end

require 'date'
require 'time'

module tradewatch
  class Country
    FR = "fr".freeze
    US = "us".freeze
    DE = "de".freeze
    NZ = "nz".freeze
    NL = "nl".freeze
    UK = "uk".freeze
    ES = "es".freeze
    CN = "cn".freeze
    CH = "ch".freeze
    GR = "gr".freeze
    BE = "be".freeze
    PT = "pt".freeze
    IT = "it".freeze
    ALL = "all".freeze

    def self.all_vars
      @all_vars ||= [FR, US, DE, NZ, NL, UK, ES, CN, CH, GR, BE, PT, IT, ALL].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if Country.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Country"
    end
  end
end
