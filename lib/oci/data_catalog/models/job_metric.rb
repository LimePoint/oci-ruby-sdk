# Copyright (c) 2016, 2020, Oracle and/or its affiliates. All rights reserved.

require 'date'

# rubocop:disable Lint/UnneededCopDisableDirective, Metrics/LineLength
module OCI
  # A set of metrics are collected periodically to assess the state and performance characteristics of the execution
  # instance of a job. The metrics are grouped based on their category and sub categories and aggregated based on
  # their batch information.
  #
  class DataCatalog::Models::JobMetric
    # **[Required]** Key of the job metric that is immutable.
    # @return [String]
    attr_accessor :key

    # Detailed description of the metric.
    # @return [String]
    attr_accessor :description

    # The unique key of the parent job execution for which the job metric resource is being created.
    # @return [String]
    attr_accessor :job_execution_key

    # The time the metric was logged or captured in the system where the job executed.
    # An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    #
    # @return [DateTime]
    attr_accessor :time_inserted

    # Category of this metric.
    # @return [String]
    attr_accessor :category

    # A user-friendly display name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # Sub category of this metric under the category. Used for aggregating values. May be null.
    # @return [String]
    attr_accessor :sub_category

    # Unit of this metric.
    # @return [String]
    attr_accessor :unit

    # Value of this metric.
    # @return [String]
    attr_accessor :value

    # Batch key for grouping, may be null.
    # @return [String]
    attr_accessor :batch_key

    # URI to the job metric instance in the API.
    # @return [String]
    attr_accessor :uri

    # The date and time the job metric was created, in the format defined by [RFC3339](https://tools.ietf.org/html/rfc3339).
    # Example: `2019-03-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # The last time that this metric was updated. An [RFC3339](https://tools.ietf.org/html/rfc3339) formatted datetime string.
    # @return [DateTime]
    attr_accessor :time_updated

    # OCID of the user who created the metric for this job. Usually the executor of the job instance.
    #
    # @return [String]
    attr_accessor :created_by_id

    # OCID of the user who created the metric for this job. Usually the executor of the job instance.
    #
    # @return [String]
    attr_accessor :updated_by_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'key',
        'description': :'description',
        'job_execution_key': :'jobExecutionKey',
        'time_inserted': :'timeInserted',
        'category': :'category',
        'display_name': :'displayName',
        'sub_category': :'subCategory',
        'unit': :'unit',
        'value': :'value',
        'batch_key': :'batchKey',
        'uri': :'uri',
        'time_created': :'timeCreated',
        'time_updated': :'timeUpdated',
        'created_by_id': :'createdById',
        'updated_by_id': :'updatedById'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'key': :'String',
        'description': :'String',
        'job_execution_key': :'String',
        'time_inserted': :'DateTime',
        'category': :'String',
        'display_name': :'String',
        'sub_category': :'String',
        'unit': :'String',
        'value': :'String',
        'batch_key': :'String',
        'uri': :'String',
        'time_created': :'DateTime',
        'time_updated': :'DateTime',
        'created_by_id': :'String',
        'updated_by_id': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :key The value to assign to the {#key} property
    # @option attributes [String] :description The value to assign to the {#description} property
    # @option attributes [String] :job_execution_key The value to assign to the {#job_execution_key} property
    # @option attributes [DateTime] :time_inserted The value to assign to the {#time_inserted} property
    # @option attributes [String] :category The value to assign to the {#category} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :sub_category The value to assign to the {#sub_category} property
    # @option attributes [String] :unit The value to assign to the {#unit} property
    # @option attributes [String] :value The value to assign to the {#value} property
    # @option attributes [String] :batch_key The value to assign to the {#batch_key} property
    # @option attributes [String] :uri The value to assign to the {#uri} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [DateTime] :time_updated The value to assign to the {#time_updated} property
    # @option attributes [String] :created_by_id The value to assign to the {#created_by_id} property
    # @option attributes [String] :updated_by_id The value to assign to the {#updated_by_id} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.key = attributes[:'key'] if attributes[:'key']

      self.description = attributes[:'description'] if attributes[:'description']

      self.job_execution_key = attributes[:'jobExecutionKey'] if attributes[:'jobExecutionKey']

      raise 'You cannot provide both :jobExecutionKey and :job_execution_key' if attributes.key?(:'jobExecutionKey') && attributes.key?(:'job_execution_key')

      self.job_execution_key = attributes[:'job_execution_key'] if attributes[:'job_execution_key']

      self.time_inserted = attributes[:'timeInserted'] if attributes[:'timeInserted']

      raise 'You cannot provide both :timeInserted and :time_inserted' if attributes.key?(:'timeInserted') && attributes.key?(:'time_inserted')

      self.time_inserted = attributes[:'time_inserted'] if attributes[:'time_inserted']

      self.category = attributes[:'category'] if attributes[:'category']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.sub_category = attributes[:'subCategory'] if attributes[:'subCategory']

      raise 'You cannot provide both :subCategory and :sub_category' if attributes.key?(:'subCategory') && attributes.key?(:'sub_category')

      self.sub_category = attributes[:'sub_category'] if attributes[:'sub_category']

      self.unit = attributes[:'unit'] if attributes[:'unit']

      self.value = attributes[:'value'] if attributes[:'value']

      self.batch_key = attributes[:'batchKey'] if attributes[:'batchKey']

      raise 'You cannot provide both :batchKey and :batch_key' if attributes.key?(:'batchKey') && attributes.key?(:'batch_key')

      self.batch_key = attributes[:'batch_key'] if attributes[:'batch_key']

      self.uri = attributes[:'uri'] if attributes[:'uri']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.time_updated = attributes[:'timeUpdated'] if attributes[:'timeUpdated']

      raise 'You cannot provide both :timeUpdated and :time_updated' if attributes.key?(:'timeUpdated') && attributes.key?(:'time_updated')

      self.time_updated = attributes[:'time_updated'] if attributes[:'time_updated']

      self.created_by_id = attributes[:'createdById'] if attributes[:'createdById']

      raise 'You cannot provide both :createdById and :created_by_id' if attributes.key?(:'createdById') && attributes.key?(:'created_by_id')

      self.created_by_id = attributes[:'created_by_id'] if attributes[:'created_by_id']

      self.updated_by_id = attributes[:'updatedById'] if attributes[:'updatedById']

      raise 'You cannot provide both :updatedById and :updated_by_id' if attributes.key?(:'updatedById') && attributes.key?(:'updated_by_id')

      self.updated_by_id = attributes[:'updated_by_id'] if attributes[:'updated_by_id']
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
        description == other.description &&
        job_execution_key == other.job_execution_key &&
        time_inserted == other.time_inserted &&
        category == other.category &&
        display_name == other.display_name &&
        sub_category == other.sub_category &&
        unit == other.unit &&
        value == other.value &&
        batch_key == other.batch_key &&
        uri == other.uri &&
        time_created == other.time_created &&
        time_updated == other.time_updated &&
        created_by_id == other.created_by_id &&
        updated_by_id == other.updated_by_id
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
      [key, description, job_execution_key, time_inserted, category, display_name, sub_category, unit, value, batch_key, uri, time_created, time_updated, created_by_id, updated_by_id].hash
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
