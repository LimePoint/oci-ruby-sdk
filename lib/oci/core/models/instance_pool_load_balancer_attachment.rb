# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Represents a load balancer that is attached to an instance pool.
  class Core::Models::InstancePoolLoadBalancerAttachment
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_ATTACHING = 'ATTACHING'.freeze,
      LIFECYCLE_STATE_ATTACHED = 'ATTACHED'.freeze,
      LIFECYCLE_STATE_DETACHING = 'DETACHING'.freeze,
      LIFECYCLE_STATE_DETACHED = 'DETACHED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the load balancer attachment.
    # @return [String]
    attr_accessor :id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the instance pool of the load balancer attachment.
    #
    # @return [String]
    attr_accessor :instance_pool_id

    # **[Required]** The [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm) of the load balancer attached to the instance pool.
    #
    # @return [String]
    attr_accessor :load_balancer_id

    # **[Required]** The name of the backend set on the load balancer.
    # @return [String]
    attr_accessor :backend_set_name

    # **[Required]** The port value used for the backends.
    # @return [Integer]
    attr_accessor :port

    # **[Required]** Indicates which VNIC on each instance in the instance pool should be used to associate with the load balancer. Possible values are \"PrimaryVnic\" or the displayName of one of the secondary VNICs on the instance configuration that is associated with the instance pool.
    # @return [String]
    attr_accessor :vnic_selection

    # **[Required]** The status of the interaction between the instance pool and the load balancer.
    # @return [String]
    attr_reader :lifecycle_state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'id',
        'instance_pool_id': :'instancePoolId',
        'load_balancer_id': :'loadBalancerId',
        'backend_set_name': :'backendSetName',
        'port': :'port',
        'vnic_selection': :'vnicSelection',
        'lifecycle_state': :'lifecycleState'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'id': :'String',
        'instance_pool_id': :'String',
        'load_balancer_id': :'String',
        'backend_set_name': :'String',
        'port': :'Integer',
        'vnic_selection': :'String',
        'lifecycle_state': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :instance_pool_id The value to assign to the {#instance_pool_id} property
    # @option attributes [String] :load_balancer_id The value to assign to the {#load_balancer_id} property
    # @option attributes [String] :backend_set_name The value to assign to the {#backend_set_name} property
    # @option attributes [Integer] :port The value to assign to the {#port} property
    # @option attributes [String] :vnic_selection The value to assign to the {#vnic_selection} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.id = attributes[:'id'] if attributes[:'id']

      self.instance_pool_id = attributes[:'instancePoolId'] if attributes[:'instancePoolId']

      raise 'You cannot provide both :instancePoolId and :instance_pool_id' if attributes.key?(:'instancePoolId') && attributes.key?(:'instance_pool_id')

      self.instance_pool_id = attributes[:'instance_pool_id'] if attributes[:'instance_pool_id']

      self.load_balancer_id = attributes[:'loadBalancerId'] if attributes[:'loadBalancerId']

      raise 'You cannot provide both :loadBalancerId and :load_balancer_id' if attributes.key?(:'loadBalancerId') && attributes.key?(:'load_balancer_id')

      self.load_balancer_id = attributes[:'load_balancer_id'] if attributes[:'load_balancer_id']

      self.backend_set_name = attributes[:'backendSetName'] if attributes[:'backendSetName']

      raise 'You cannot provide both :backendSetName and :backend_set_name' if attributes.key?(:'backendSetName') && attributes.key?(:'backend_set_name')

      self.backend_set_name = attributes[:'backend_set_name'] if attributes[:'backend_set_name']

      self.port = attributes[:'port'] if attributes[:'port']

      self.vnic_selection = attributes[:'vnicSelection'] if attributes[:'vnicSelection']

      raise 'You cannot provide both :vnicSelection and :vnic_selection' if attributes.key?(:'vnicSelection') && attributes.key?(:'vnic_selection')

      self.vnic_selection = attributes[:'vnic_selection'] if attributes[:'vnic_selection']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

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
        id == other.id &&
        instance_pool_id == other.instance_pool_id &&
        load_balancer_id == other.load_balancer_id &&
        backend_set_name == other.backend_set_name &&
        port == other.port &&
        vnic_selection == other.vnic_selection &&
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
      [id, instance_pool_id, load_balancer_id, backend_set_name, port, vnic_selection, lifecycle_state].hash
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
