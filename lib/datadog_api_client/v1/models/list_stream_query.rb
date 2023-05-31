=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Updated list stream widget.
  class ListStreamQuery
    include BaseGenericModel

    # Compute configuration for the List Stream Widget. Compute can be used only with the logs_transaction_stream (from 1 to 5 items) list stream source.
    attr_reader :compute

    # Source from which to query items to display in the stream.
    attr_reader :data_source

    # Size to use to display an event.
    attr_accessor :event_size

    # Group by configuration for the List Stream Widget. Group by can be used only with logs_pattern_stream (up to 3 items) or logs_transaction_stream (one group by item is required) list stream source.
    attr_reader :group_by

    # List of indexes.
    attr_accessor :indexes

    # Widget query.
    attr_reader :query_string

    # Which column and order to sort by
    attr_accessor :sort

    # Option for storage location. Feature in Private Beta.
    attr_accessor :storage

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'compute' => :'compute',
        :'data_source' => :'data_source',
        :'event_size' => :'event_size',
        :'group_by' => :'group_by',
        :'indexes' => :'indexes',
        :'query_string' => :'query_string',
        :'sort' => :'sort',
        :'storage' => :'storage'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'compute' => :'Array<ListStreamComputeItems>',
        :'data_source' => :'ListStreamSource',
        :'event_size' => :'WidgetEventSize',
        :'group_by' => :'Array<ListStreamGroupByItems>',
        :'indexes' => :'Array<String>',
        :'query_string' => :'String',
        :'sort' => :'WidgetFieldSort',
        :'storage' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ListStreamQuery` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ListStreamQuery`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'compute')
        if (value = attributes[:'compute']).is_a?(Array)
          self.compute = value
        end
      end

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'event_size')
        self.event_size = attributes[:'event_size']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'indexes')
        if (value = attributes[:'indexes']).is_a?(Array)
          self.indexes = value
        end
      end

      if attributes.key?(:'query_string')
        self.query_string = attributes[:'query_string']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'storage')
        self.storage = attributes[:'storage']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@compute.nil? && @compute.length > 5
      return false if !@compute.nil? && @compute.length < 1
      return false if @data_source.nil?
      return false if !@group_by.nil? && @group_by.length > 3
      return false if @query_string.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param compute [Object] Object to be assigned
    # @!visibility private
    def compute=(compute)
      if !compute.nil? && compute.length > 5
        fail ArgumentError, 'invalid value for "compute", number of items must be less than or equal to 5.'
      end
      if !compute.nil? && compute.length < 1
        fail ArgumentError, 'invalid value for "compute", number of items must be greater than or equal to 1.'
      end
      @compute = compute
    end

    # Custom attribute writer method with validation
    # @param data_source [Object] Object to be assigned
    # @!visibility private
    def data_source=(data_source)
      if data_source.nil?
        fail ArgumentError, 'invalid value for "data_source", data_source cannot be nil.'
      end
      @data_source = data_source
    end

    # Custom attribute writer method with validation
    # @param group_by [Object] Object to be assigned
    # @!visibility private
    def group_by=(group_by)
      if !group_by.nil? && group_by.length > 3
        fail ArgumentError, 'invalid value for "group_by", number of items must be less than or equal to 3.'
      end
      @group_by = group_by
    end

    # Custom attribute writer method with validation
    # @param query_string [Object] Object to be assigned
    # @!visibility private
    def query_string=(query_string)
      if query_string.nil?
        fail ArgumentError, 'invalid value for "query_string", query_string cannot be nil.'
      end
      @query_string = query_string
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          compute == o.compute &&
          data_source == o.data_source &&
          event_size == o.event_size &&
          group_by == o.group_by &&
          indexes == o.indexes &&
          query_string == o.query_string &&
          sort == o.sort &&
          storage == o.storage
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [compute, data_source, event_size, group_by, indexes, query_string, sort, storage].hash
    end
  end
end
