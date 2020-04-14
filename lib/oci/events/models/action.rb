# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # An object that represents an action to trigger for events that match a rule.
  #
  # This class has direct subclasses. If you are using this class as input to a service operations then you should favor using a subclass over the base class
  class Events::Models::Action
    ACTION_TYPE_ENUM = [
      ACTION_TYPE_ONS = 'ONS'.freeze,
      ACTION_TYPE_OSS = 'OSS'.freeze,
      ACTION_TYPE_FAAS = 'FAAS'.freeze,
      ACTION_TYPE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_CREATING = 'CREATING'.freeze,
      LIFECYCLE_STATE_ACTIVE = 'ACTIVE'.freeze,
      LIFECYCLE_STATE_INACTIVE = 'INACTIVE'.freeze,
      LIFECYCLE_STATE_UPDATING = 'UPDATING'.freeze,
      LIFECYCLE_STATE_DELETING = 'DELETING'.freeze,
      LIFECYCLE_STATE_DELETED = 'DELETED'.freeze,
      LIFECYCLE_STATE_FAILED = 'FAILED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The action to perform if the condition in the rule matches an event.
    #
    # * **ONS:** Send to an Oracle Notification Service topic.
    # * **OSS:** Send to a stream from Oracle Streaming Service.
    # * **FAAS:** Send to an Oracle Functions Service endpoint.
    #
    # @return [String]
    attr_reader :action_type

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/identifiers.htm) of the action.
    #
    # @return [String]
    attr_accessor :id

    # **[Required]** A message generated by the Events service about the current state of this action.
    #
    # @return [String]
    attr_accessor :lifecycle_message

    # **[Required]** The current state of the rule.
    #
    # @return [String]
    attr_reader :lifecycle_state

    # Whether or not this action is currently enabled.
    #
    # Example: `true`
    #
    # @return [BOOLEAN]
    attr_accessor :is_enabled

    # A string that describes the details of the action. It does not have to be unique, and you can change it. Avoid entering
    # confidential information.
    #
    # @return [String]
    attr_accessor :description

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'action_type': :'actionType',
        'id': :'id',
        'lifecycle_message': :'lifecycleMessage',
        'lifecycle_state': :'lifecycleState',
        'is_enabled': :'isEnabled',
        'description': :'description'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'action_type': :'String',
        'id': :'String',
        'lifecycle_message': :'String',
        'lifecycle_state': :'String',
        'is_enabled': :'BOOLEAN',
        'description': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize


    # Given the hash representation of a subtype of this class,
    # use the info in the hash to return the class of the subtype.
    def self.get_subtype(object_hash)
      type = object_hash[:'actionType'] # rubocop:disable Style/SymbolLiteral

      return 'OCI::Events::Models::StreamingServiceAction' if type == 'OSS'
      return 'OCI::Events::Models::NotificationServiceAction' if type == 'ONS'
      return 'OCI::Events::Models::FaaSAction' if type == 'FAAS'

      # TODO: Log a warning when the subtype is not found.
      'OCI::Events::Models::Action'
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Layout/EmptyLines, Metrics/PerceivedComplexity, Metrics/AbcSize

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :action_type The value to assign to the {#action_type} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :lifecycle_message The value to assign to the {#lifecycle_message} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [BOOLEAN] :is_enabled The value to assign to the {#is_enabled} property
    # @option attributes [String] :description The value to assign to the {#description} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.action_type = attributes[:'actionType'] if attributes[:'actionType']

      raise 'You cannot provide both :actionType and :action_type' if attributes.key?(:'actionType') && attributes.key?(:'action_type')

      self.action_type = attributes[:'action_type'] if attributes[:'action_type']

      self.id = attributes[:'id'] if attributes[:'id']

      self.lifecycle_message = attributes[:'lifecycleMessage'] if attributes[:'lifecycleMessage']

      raise 'You cannot provide both :lifecycleMessage and :lifecycle_message' if attributes.key?(:'lifecycleMessage') && attributes.key?(:'lifecycle_message')

      self.lifecycle_message = attributes[:'lifecycle_message'] if attributes[:'lifecycle_message']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.is_enabled = attributes[:'isEnabled'] unless attributes[:'isEnabled'].nil?
      self.is_enabled = true if is_enabled.nil? && !attributes.key?(:'isEnabled') # rubocop:disable Style/StringLiterals

      raise 'You cannot provide both :isEnabled and :is_enabled' if attributes.key?(:'isEnabled') && attributes.key?(:'is_enabled')

      self.is_enabled = attributes[:'is_enabled'] unless attributes[:'is_enabled'].nil?
      self.is_enabled = true if is_enabled.nil? && !attributes.key?(:'isEnabled') && !attributes.key?(:'is_enabled') # rubocop:disable Style/StringLiterals

      self.description = attributes[:'description'] if attributes[:'description']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action_type Object to be assigned
    def action_type=(action_type)
      # rubocop:disable Style/ConditionalAssignment
      if action_type && !ACTION_TYPE_ENUM.include?(action_type)
        OCI.logger.debug("Unknown value for 'action_type' [" + action_type + "]. Mapping to 'ACTION_TYPE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @action_type = ACTION_TYPE_UNKNOWN_ENUM_VALUE
      else
        @action_type = action_type
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        action_type == other.action_type &&
        id == other.id &&
        lifecycle_message == other.lifecycle_message &&
        lifecycle_state == other.lifecycle_state &&
        is_enabled == other.is_enabled &&
        description == other.description
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
      [action_type, id, lifecycle_message, lifecycle_state, is_enabled, description].hash
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
