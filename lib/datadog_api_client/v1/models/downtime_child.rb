=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # The downtime object definition of the active child for the original parent recurring downtime. This field will only exist on recurring downtimes.
  class DowntimeChild
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # If a scheduled downtime currently exists.
    attr_accessor :active

    # If a scheduled downtime is canceled.
    attr_accessor :canceled

    # User ID of the downtime creator.
    attr_accessor :creator_id

    # If a downtime has been disabled.
    attr_accessor :disabled

    # `0` for a downtime applied on `*` or all, `1` when the downtime is only scoped to hosts, or `2` when the downtime is scoped to anything but hosts.
    attr_accessor :downtime_type

    # POSIX timestamp to end the downtime. If not provided, the downtime is in effect indefinitely until you cancel it.
    attr_accessor :_end

    # The downtime ID.
    attr_accessor :id

    # A message to include with notifications for this downtime. Email notifications can be sent to specific users by using the same `@username` notation as events.
    attr_accessor :message

    # A single monitor to which the downtime applies. If not provided, the downtime applies to all monitors.
    attr_accessor :monitor_id

    # A comma-separated list of monitor tags. For example, tags that are applied directly to monitors, not tags that are used in monitor queries (which are filtered by the scope parameter), to which the downtime applies. The resulting downtime applies to monitors that match ALL provided monitor tags. For example, `service:postgres` **AND** `team:frontend`.
    attr_accessor :monitor_tags

    # ID of the parent Downtime.
    attr_accessor :parent_id

    attr_accessor :recurrence

    # The scope(s) to which the downtime applies. For example, `host:app2`. Provide multiple scopes as a comma-separated list like `env:dev,env:prod`. The resulting downtime applies to sources that matches ALL provided scopes (`env:dev` **AND** `env:prod`).
    attr_accessor :scope

    # POSIX timestamp to start the downtime. If not provided, the downtime starts the moment it is created.
    attr_accessor :start

    # The timezone in which to display the downtime's start and end times in Datadog applications.
    attr_accessor :timezone

    # ID of the last user that updated the downtime.
    attr_accessor :updater_id

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'active' => :'active',
        :'canceled' => :'canceled',
        :'creator_id' => :'creator_id',
        :'disabled' => :'disabled',
        :'downtime_type' => :'downtime_type',
        :'_end' => :'end',
        :'id' => :'id',
        :'message' => :'message',
        :'monitor_id' => :'monitor_id',
        :'monitor_tags' => :'monitor_tags',
        :'parent_id' => :'parent_id',
        :'recurrence' => :'recurrence',
        :'scope' => :'scope',
        :'start' => :'start',
        :'timezone' => :'timezone',
        :'updater_id' => :'updater_id'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'canceled' => :'Integer',
        :'creator_id' => :'Integer',
        :'disabled' => :'Boolean',
        :'downtime_type' => :'Integer',
        :'_end' => :'Integer',
        :'id' => :'Integer',
        :'message' => :'String',
        :'monitor_id' => :'Integer',
        :'monitor_tags' => :'Array<String>',
        :'parent_id' => :'Integer',
        :'recurrence' => :'DowntimeRecurrence',
        :'scope' => :'Array<String>',
        :'start' => :'Integer',
        :'timezone' => :'String',
        :'updater_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'canceled',
        :'_end',
        :'monitor_id',
        :'parent_id',
        :'recurrence',
        :'updater_id'
      ])
    end

    # Initializes the object
    # @param attributes [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::DowntimeChild` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::DowntimeChild`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'canceled')
        self.canceled = attributes[:'canceled']
      end

      if attributes.key?(:'creator_id')
        self.creator_id = attributes[:'creator_id']
      end

      if attributes.key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.key?(:'downtime_type')
        self.downtime_type = attributes[:'downtime_type']
      end

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'monitor_id')
        self.monitor_id = attributes[:'monitor_id']
      end

      if attributes.key?(:'monitor_tags')
        if (value = attributes[:'monitor_tags']).is_a?(Array)
          self.monitor_tags = value
        end
      end

      if attributes.key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end

      if attributes.key?(:'recurrence')
        self.recurrence = attributes[:'recurrence']
      end

      if attributes.key?(:'scope')
        if (value = attributes[:'scope']).is_a?(Array)
          self.scope = value
        end
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'updater_id')
        self.updater_id = attributes[:'updater_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @!visibility private
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@creator_id.nil? && @creator_id > 2147483647
        invalid_properties.push('invalid value for "creator_id", must be smaller than or equal to 2147483647.')
      end

      if !@downtime_type.nil? && @downtime_type > 2147483647
        invalid_properties.push('invalid value for "downtime_type", must be smaller than or equal to 2147483647.')
      end

      if !@updater_id.nil? && @updater_id > 2147483647
        invalid_properties.push('invalid value for "updater_id", must be smaller than or equal to 2147483647.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@creator_id.nil? && @creator_id > 2147483647
      return false if !@downtime_type.nil? && @downtime_type > 2147483647
      return false if !@updater_id.nil? && @updater_id > 2147483647
      true
    end

    # Custom attribute writer method with validation
    # @param creator_id [Object] creator_id Value to be assigned
    def creator_id=(creator_id)
      if !creator_id.nil? && creator_id > 2147483647
        fail ArgumentError, 'invalid value for "creator_id", must be smaller than or equal to 2147483647.'
      end

      @creator_id = creator_id
    end

    # Custom attribute writer method with validation
    # @param downtime_type [Object] downtime_type Value to be assigned
    def downtime_type=(downtime_type)
      if !downtime_type.nil? && downtime_type > 2147483647
        fail ArgumentError, 'invalid value for "downtime_type", must be smaller than or equal to 2147483647.'
      end

      @downtime_type = downtime_type
    end

    # Custom attribute writer method with validation
    # @param updater_id [Object] updater_id Value to be assigned
    def updater_id=(updater_id)
      if !updater_id.nil? && updater_id > 2147483647
        fail ArgumentError, 'invalid value for "updater_id", must be smaller than or equal to 2147483647.'
      end

      @updater_id = updater_id
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          canceled == o.canceled &&
          creator_id == o.creator_id &&
          disabled == o.disabled &&
          downtime_type == o.downtime_type &&
          _end == o._end &&
          id == o.id &&
          message == o.message &&
          monitor_id == o.monitor_id &&
          monitor_tags == o.monitor_tags &&
          parent_id == o.parent_id &&
          recurrence == o.recurrence &&
          scope == o.scope &&
          start == o.start &&
          timezone == o.timezone &&
          updater_id == o.updater_id
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [active, canceled, creator_id, disabled, downtime_type, _end, id, message, monitor_id, monitor_tags, parent_id, recurrence, scope, start, timezone, updater_id].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param attributes [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param type [string] Data type
    # @param value [string] Value to be deserialized
    # @return [Object] Deserialized data
    # @!visibility private
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    # @!visibility private
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param value [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    # @!visibility private
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
