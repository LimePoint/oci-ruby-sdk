# Copyright (c) 2016, 2020, Oracle and/or its affiliates.  All rights reserved.
# This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Incident Classifier details
  class Cims::Models::ServiceCategory
    SCOPE_ENUM = [
      SCOPE_AD = 'AD'.freeze,
      SCOPE_REGION = 'REGION'.freeze,
      SCOPE_TENANCY = 'TENANCY'.freeze,
      SCOPE_NONE = 'NONE'.freeze,
      SCOPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    UNIT_ENUM = [
      UNIT_COUNT = 'COUNT'.freeze,
      UNIT_GB = 'GB'.freeze,
      UNIT_NONE = 'NONE'.freeze,
      UNIT_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # Unique ID that identifies a classifier
    # @return [String]
    attr_accessor :key

    # Name of classifier. eg: LIMIT Increase
    # @return [String]
    attr_accessor :name

    # Label of classifier
    # @return [String]
    attr_accessor :label

    # Description of classifier
    # @return [String]
    attr_accessor :description

    # List of Issues
    # @return [Array<OCI::Cims::Models::IssueType>]
    attr_accessor :issue_type_list

    # List of Scope
    # @return [String]
    attr_reader :scope

    # List of Units
    # @return [String]
    attr_reader :unit

    # Limit's unique id
    # @return [String]
    attr_accessor :limit_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'name': :'name',
        'label': :'label',
        'description': :'description',
        'issue_type_list': :'issueTypeList',
        'scope': :'scope',
        'unit': :'unit',
        'limit_id': :'limitId'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'name': :'String',
        'label': :'String',
        'description': :'String',
        'issue_type_list': :'Array<OCI::Cims::Models::IssueType>',
        'scope': :'String',
        'unit': :'String',
        'limit_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :name The value to assign to the {#name} property
    # @option attributes [String] :label The value to assign to the {#label} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [Array<OCI::Cims::Models::IssueType>] :issue_type_list The value to assign to the {#issue_type_list} property
    # @option attributes [String] :scope The value to assign to the {#scope} property
    # @option attributes [String] :unit The value to assign to the {#unit} property
    # @option attributes [String] :limit_id The value to assign to the {#limit_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.name = attributes[:'name'] if attributes[:'name']

      self.label = attributes[:'label'] if attributes[:'label']

      self.description = attributes[:'description'] if attributes[:'description']

      self.issue_type_list = attributes[:'issueTypeList'] if attributes[:'issueTypeList']

      raise 'You cannot provide both :issueTypeList and :issue_type_list' if attributes.key?(:'issueTypeList') && attributes.key?(:'issue_type_list')

      self.issue_type_list = attributes[:'issue_type_list'] if attributes[:'issue_type_list']

      self.scope = attributes[:'scope'] if attributes[:'scope']

      self.unit = attributes[:'unit'] if attributes[:'unit']

      self.limit_id = attributes[:'limitId'] if attributes[:'limitId']

      raise 'You cannot provide both :limitId and :limit_id' if attributes.key?(:'limitId') && attributes.key?(:'limit_id')

      self.limit_id = attributes[:'limit_id'] if attributes[:'limit_id']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scope Object to be assigned
    def scope=(scope)
      # rubocop:disable Style/ConditionalAssignment
      if scope && !SCOPE_ENUM.include?(scope)
        OCI.logger.debug("Unknown value for 'scope' [" + scope + "]. Mapping to 'SCOPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @scope = SCOPE_UNKNOWN_ENUM_VALUE
      else
        @scope = scope
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit Object to be assigned
    def unit=(unit)
      # rubocop:disable Style/ConditionalAssignment
      if unit && !UNIT_ENUM.include?(unit)
        OCI.logger.debug("Unknown value for 'unit' [" + unit + "]. Mapping to 'UNIT_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @unit = UNIT_UNKNOWN_ENUM_VALUE
      else
        @unit = unit
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        name == other.name &&
        label == other.label &&
        description == other.description &&
        issue_type_list == other.issue_type_list &&
        scope == other.scope &&
        unit == other.unit &&
        limit_id == other.limit_id
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [key, name, label, description, issue_type_list, scope, unit, limit_id].hash
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

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
# rubocop:enable Lint/UnneededCopDisableDirective, Metrics/LineLength