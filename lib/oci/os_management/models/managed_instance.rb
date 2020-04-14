# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # Detail information for an OCI Compute instance that is being managed
  class OsManagement::Models::ManagedInstance
    STATUS_ENUM = [
      STATUS_NORMAL = 'NORMAL'.freeze,
      STATUS_UNREACHABLE = 'UNREACHABLE'.freeze,
      STATUS_ERROR = 'ERROR'.freeze,
      STATUS_WARNING = 'WARNING'.freeze,
      STATUS_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # **[Required]** Managed Instance identifier
    # @return [String]
    attr_accessor :display_name

    # **[Required]** OCID for the managed instance
    # @return [String]
    attr_accessor :id

    # Information specified by the user about the managed instance
    # @return [String]
    attr_accessor :description

    # Time at which the instance last checked in
    # @return [String]
    attr_accessor :last_checkin

    # Time at which the instance last booted
    # @return [String]
    attr_accessor :last_boot

    # Number of updates available to be installed
    # @return [Integer]
    attr_accessor :updates_available

    # Operating System Name
    # @return [String]
    attr_accessor :os_name

    # Operating System Version
    # @return [String]
    attr_accessor :os_version

    # Operating System Kernel Version
    # @return [String]
    attr_accessor :os_kernel_version

    # **[Required]** OCID for the Compartment
    # @return [String]
    attr_accessor :compartment_id

    # status of the managed instance.
    # @return [String]
    attr_reader :status

    # the parent (base) Software Source attached to the Managed Instance
    # @return [OCI::OsManagement::Models::SoftwareSourceId]
    attr_accessor :parent_software_source

    # list of child Software Sources attached to the Managed Instance
    # @return [Array<OCI::OsManagement::Models::SoftwareSourceId>]
    attr_accessor :child_software_sources

    # The ids of the managed instance groups of which this instance is a
    # member.
    #
    # @return [Array<OCI::OsManagement::Models::Id>]
    attr_accessor :managed_instance_groups

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'displayName',
        'id': :'id',
        'description': :'description',
        'last_checkin': :'lastCheckin',
        'last_boot': :'lastBoot',
        'updates_available': :'updatesAvailable',
        'os_name': :'osName',
        'os_version': :'osVersion',
        'os_kernel_version': :'osKernelVersion',
        'compartment_id': :'compartmentId',
        'status': :'status',
        'parent_software_source': :'parentSoftwareSource',
        'child_software_sources': :'childSoftwareSources',
        'managed_instance_groups': :'managedInstanceGroups'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'display_name': :'String',
        'id': :'String',
        'description': :'String',
        'last_checkin': :'String',
        'last_boot': :'String',
        'updates_available': :'Integer',
        'os_name': :'String',
        'os_version': :'String',
        'os_kernel_version': :'String',
        'compartment_id': :'String',
        'status': :'String',
        'parent_software_source': :'OCI::OsManagement::Models::SoftwareSourceId',
        'child_software_sources': :'Array<OCI::OsManagement::Models::SoftwareSourceId>',
        'managed_instance_groups': :'Array<OCI::OsManagement::Models::Id>'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :last_checkin The value to assign to the {#last_checkin} property
    # @option attributes [String] :last_boot The value to assign to the {#last_boot} property
    # @option attributes [Integer] :updates_available The value to assign to the {#updates_available} property
    # @option attributes [String] :os_name The value to assign to the {#os_name} property
    # @option attributes [String] :os_version The value to assign to the {#os_version} property
    # @option attributes [String] :os_kernel_version The value to assign to the {#os_kernel_version} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [String] :status The value to assign to the {#status} property
    # @option attributes [OCI::OsManagement::Models::SoftwareSourceId] :parent_software_source The value to assign to the {#parent_software_source} property
    # @option attributes [Array<OCI::OsManagement::Models::SoftwareSourceId>] :child_software_sources The value to assign to the {#child_software_sources} property
    # @option attributes [Array<OCI::OsManagement::Models::Id>] :managed_instance_groups The value to assign to the {#managed_instance_groups} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.id = attributes[:'id'] if attributes[:'id']

      self.description = attributes[:'description'] if attributes[:'description']

      self.last_checkin = attributes[:'lastCheckin'] if attributes[:'lastCheckin']

      raise 'You cannot provide both :lastCheckin and :last_checkin' if attributes.key?(:'lastCheckin') && attributes.key?(:'last_checkin')

      self.last_checkin = attributes[:'last_checkin'] if attributes[:'last_checkin']

      self.last_boot = attributes[:'lastBoot'] if attributes[:'lastBoot']

      raise 'You cannot provide both :lastBoot and :last_boot' if attributes.key?(:'lastBoot') && attributes.key?(:'last_boot')

      self.last_boot = attributes[:'last_boot'] if attributes[:'last_boot']

      self.updates_available = attributes[:'updatesAvailable'] if attributes[:'updatesAvailable']

      raise 'You cannot provide both :updatesAvailable and :updates_available' if attributes.key?(:'updatesAvailable') && attributes.key?(:'updates_available')

      self.updates_available = attributes[:'updates_available'] if attributes[:'updates_available']

      self.os_name = attributes[:'osName'] if attributes[:'osName']

      raise 'You cannot provide both :osName and :os_name' if attributes.key?(:'osName') && attributes.key?(:'os_name')

      self.os_name = attributes[:'os_name'] if attributes[:'os_name']

      self.os_version = attributes[:'osVersion'] if attributes[:'osVersion']

      raise 'You cannot provide both :osVersion and :os_version' if attributes.key?(:'osVersion') && attributes.key?(:'os_version')

      self.os_version = attributes[:'os_version'] if attributes[:'os_version']

      self.os_kernel_version = attributes[:'osKernelVersion'] if attributes[:'osKernelVersion']

      raise 'You cannot provide both :osKernelVersion and :os_kernel_version' if attributes.key?(:'osKernelVersion') && attributes.key?(:'os_kernel_version')

      self.os_kernel_version = attributes[:'os_kernel_version'] if attributes[:'os_kernel_version']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.status = attributes[:'status'] if attributes[:'status']

      self.parent_software_source = attributes[:'parentSoftwareSource'] if attributes[:'parentSoftwareSource']

      raise 'You cannot provide both :parentSoftwareSource and :parent_software_source' if attributes.key?(:'parentSoftwareSource') && attributes.key?(:'parent_software_source')

      self.parent_software_source = attributes[:'parent_software_source'] if attributes[:'parent_software_source']

      self.child_software_sources = attributes[:'childSoftwareSources'] if attributes[:'childSoftwareSources']

      raise 'You cannot provide both :childSoftwareSources and :child_software_sources' if attributes.key?(:'childSoftwareSources') && attributes.key?(:'child_software_sources')

      self.child_software_sources = attributes[:'child_software_sources'] if attributes[:'child_software_sources']

      self.managed_instance_groups = attributes[:'managedInstanceGroups'] if attributes[:'managedInstanceGroups']

      raise 'You cannot provide both :managedInstanceGroups and :managed_instance_groups' if attributes.key?(:'managedInstanceGroups') && attributes.key?(:'managed_instance_groups')

      self.managed_instance_groups = attributes[:'managed_instance_groups'] if attributes[:'managed_instance_groups']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      # rubocop:disable Style/ConditionalAssignment
      if status && !STATUS_ENUM.include?(status)
        OCI.logger.debug("Unknown value for 'status' [" + status + "]. Mapping to 'STATUS_UNKNOWN_ENUM_VALUE'") if OCI.logger
        @status = STATUS_UNKNOWN_ENUM_VALUE
      else
        @status = status
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        display_name == other.display_name &&
        id == other.id &&
        description == other.description &&
        last_checkin == other.last_checkin &&
        last_boot == other.last_boot &&
        updates_available == other.updates_available &&
        os_name == other.os_name &&
        os_version == other.os_version &&
        os_kernel_version == other.os_kernel_version &&
        compartment_id == other.compartment_id &&
        status == other.status &&
        parent_software_source == other.parent_software_source &&
        child_software_sources == other.child_software_sources &&
        managed_instance_groups == other.managed_instance_groups
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
      [display_name, id, description, last_checkin, last_boot, updates_available, os_name, os_version, os_kernel_version, compartment_id, status, parent_software_source, child_software_sources, managed_instance_groups].hash
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
