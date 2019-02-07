# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective
module OCI
  # Connection strings to connect to an Oracle Database.
  #
  class Database::Models::DatabaseConnectionStrings # rubocop:disable Metrics/LineLength
    # Host name based CDB Connection String.
    # @return [String]
    attr_accessor :cdb_default

    # IP based CDB Connection String.
    # @return [String]
    attr_accessor :cdb_ip_default

    # All connection strings to use to connect to the Database.
    # @return [Hash<String, String>]
    attr_accessor :all_connection_strings

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'cdb_default': :'cdbDefault',
        'cdb_ip_default': :'cdbIpDefault',
        'all_connection_strings': :'allConnectionStrings'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'cdb_default': :'String',
        'cdb_ip_default': :'String',
        'all_connection_strings': :'Hash<String, String>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :cdb_default The value to assign to the {#cdb_default} property
    # @option attributes [String] :cdb_ip_default The value to assign to the {#cdb_ip_default} property
    # @option attributes [Hash<String, String>] :all_connection_strings The value to assign to the {#all_connection_strings} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.cdb_default = attributes[:'cdbDefault'] if attributes[:'cdbDefault']

      raise 'You cannot provide both :cdbDefault and :cdb_default' if attributes.key?(:'cdbDefault') && attributes.key?(:'cdb_default')

      self.cdb_default = attributes[:'cdb_default'] if attributes[:'cdb_default']

      self.cdb_ip_default = attributes[:'cdbIpDefault'] if attributes[:'cdbIpDefault']

      raise 'You cannot provide both :cdbIpDefault and :cdb_ip_default' if attributes.key?(:'cdbIpDefault') && attributes.key?(:'cdb_ip_default')

      self.cdb_ip_default = attributes[:'cdb_ip_default'] if attributes[:'cdb_ip_default']

      self.all_connection_strings = attributes[:'allConnectionStrings'] if attributes[:'allConnectionStrings']

      raise 'You cannot provide both :allConnectionStrings and :all_connection_strings' if attributes.key?(:'allConnectionStrings') && attributes.key?(:'all_connection_strings')

      self.all_connection_strings = attributes[:'all_connection_strings'] if attributes[:'all_connection_strings']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        cdb_default == other.cdb_default &&
        cdb_ip_default == other.cdb_ip_default &&
        all_connection_strings == other.all_connection_strings
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cdb_default, cdb_ip_default, all_connection_strings].hash
    end
    # rubocop:enable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective