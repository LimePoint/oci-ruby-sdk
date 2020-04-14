# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Summary of a term relationship. Business term relationship between two terms in a business glossary.
  #
  class DataCatalog::Models::TermRelationshipSummary
    # **[Required]** Unique term relationship key that is immutable.
    # @return [String]
    attr_accessor :key

    # A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.This is the same as relationshipType for termRelationship
    #
    # @return [String]
    attr_accessor :display_name

    # Detailed description of the term relationship usually defined at the time of creation.
    # @return [String]
    attr_accessor :description

    # Unique id of the related term.
    # @return [String]
    attr_accessor :related_term_key

    # Name of the related term.
    # @return [String]
    attr_accessor :related_term_display_name

    # Description of the related term.
    # @return [String]
    attr_accessor :related_term_description

    # URI to the term relationship instance in the API.
    # @return [String]
    attr_accessor :uri

    # This relationships parent term key.
    # @return [String]
    attr_accessor :parent_term_key

    # Name of the parent term.
    # @return [String]
    attr_accessor :parent_term_display_name

    # Description of the parent term.
    # @return [String]
    attr_accessor :parent_term_description

    # The date and time the term relationship was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # State of the term relationship.
    # @return [String]
    attr_accessor :lifecycle_state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'display_name': :'displayName',
        'description': :'description',
        'related_term_key': :'relatedTermKey',
        'related_term_display_name': :'relatedTermDisplayName',
        'related_term_description': :'relatedTermDescription',
        'uri': :'uri',
        'parent_term_key': :'parentTermKey',
        'parent_term_display_name': :'parentTermDisplayName',
        'parent_term_description': :'parentTermDescription',
        'time_created': :'timeCreated',
        'lifecycle_state': :'lifecycleState'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'display_name': :'String',
        'description': :'String',
        'related_term_key': :'String',
        'related_term_display_name': :'String',
        'related_term_description': :'String',
        'uri': :'String',
        'parent_term_key': :'String',
        'parent_term_display_name': :'String',
        'parent_term_description': :'String',
        'time_created': :'DateTime',
        'lifecycle_state': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :related_term_key The value to assign to the {#related_term_key} property
    # @option attributes [String] :related_term_display_name The value to assign to the {#related_term_display_name} property
    # @option attributes [String] :related_term_description The value to assign to the {#related_term_description} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    # @option attributes [String] :parent_term_key The value to assign to the {#parent_term_key} property
    # @option attributes [String] :parent_term_display_name The value to assign to the {#parent_term_display_name} property
    # @option attributes [String] :parent_term_description The value to assign to the {#parent_term_description} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.description = attributes[:'description'] if attributes[:'description']

      self.related_term_key = attributes[:'relatedTermKey'] if attributes[:'relatedTermKey']

      raise 'You cannot provide both :relatedTermKey and :related_term_key' if attributes.key?(:'relatedTermKey') && attributes.key?(:'related_term_key')

      self.related_term_key = attributes[:'related_term_key'] if attributes[:'related_term_key']

      self.related_term_display_name = attributes[:'relatedTermDisplayName'] if attributes[:'relatedTermDisplayName']

      raise 'You cannot provide both :relatedTermDisplayName and :related_term_display_name' if attributes.key?(:'relatedTermDisplayName') && attributes.key?(:'related_term_display_name')

      self.related_term_display_name = attributes[:'related_term_display_name'] if attributes[:'related_term_display_name']

      self.related_term_description = attributes[:'relatedTermDescription'] if attributes[:'relatedTermDescription']

      raise 'You cannot provide both :relatedTermDescription and :related_term_description' if attributes.key?(:'relatedTermDescription') && attributes.key?(:'related_term_description')

      self.related_term_description = attributes[:'related_term_description'] if attributes[:'related_term_description']

      self.uri = attributes[:'uri'] if attributes[:'uri']

      self.parent_term_key = attributes[:'parentTermKey'] if attributes[:'parentTermKey']

      raise 'You cannot provide both :parentTermKey and :parent_term_key' if attributes.key?(:'parentTermKey') && attributes.key?(:'parent_term_key')

      self.parent_term_key = attributes[:'parent_term_key'] if attributes[:'parent_term_key']

      self.parent_term_display_name = attributes[:'parentTermDisplayName'] if attributes[:'parentTermDisplayName']

      raise 'You cannot provide both :parentTermDisplayName and :parent_term_display_name' if attributes.key?(:'parentTermDisplayName') && attributes.key?(:'parent_term_display_name')

      self.parent_term_display_name = attributes[:'parent_term_display_name'] if attributes[:'parent_term_display_name']

      self.parent_term_description = attributes[:'parentTermDescription'] if attributes[:'parentTermDescription']

      raise 'You cannot provide both :parentTermDescription and :parent_term_description' if attributes.key?(:'parentTermDescription') && attributes.key?(:'parent_term_description')

      self.parent_term_description = attributes[:'parent_term_description'] if attributes[:'parent_term_description']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        key == other.key &&
        display_name == other.display_name &&
        description == other.description &&
        related_term_key == other.related_term_key &&
        related_term_display_name == other.related_term_display_name &&
        related_term_description == other.related_term_description &&
        uri == other.uri &&
        parent_term_key == other.parent_term_key &&
        parent_term_display_name == other.parent_term_display_name &&
        parent_term_description == other.parent_term_description &&
        time_created == other.time_created &&
        lifecycle_state == other.lifecycle_state
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
      [key, display_name, description, related_term_key, related_term_display_name, related_term_description, uri, parent_term_key, parent_term_display_name, parent_term_description, time_created, lifecycle_state].hash
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
