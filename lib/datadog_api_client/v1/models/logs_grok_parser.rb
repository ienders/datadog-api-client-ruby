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
  # Create custom grok rules to parse the full message or [a specific attribute of your raw event](https://docs.datadoghq.com/logs/log_configuration/parsing/#advanced-settings).
  # For more information, see the [parsing section](https://docs.datadoghq.com/logs/log_configuration/parsing).
  class LogsGrokParser
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Set of rules for the grok parser.
    attr_reader :grok

    # Whether or not the processor is enabled.
    attr_accessor :is_enabled

    # Name of the processor.
    attr_accessor :name

    # List of sample logs to test this grok parser.
    attr_reader :samples

    # Name of the log attribute to parse.
    attr_reader :source

    # Type of logs grok parser.
    attr_reader :type

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'grok' => :'grok',
        :'is_enabled' => :'is_enabled',
        :'name' => :'name',
        :'samples' => :'samples',
        :'source' => :'source',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'grok' => :'LogsGrokParserRules',
        :'is_enabled' => :'Boolean',
        :'name' => :'String',
        :'samples' => :'Array<String>',
        :'source' => :'String',
        :'type' => :'LogsGrokParserType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsGrokParser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsGrokParser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'grok')
        self.grok = attributes[:'grok']
      end

      if attributes.key?(:'is_enabled')
        self.is_enabled = attributes[:'is_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'samples')
        if (value = attributes[:'samples']).is_a?(Array)
          self.samples = value
        end
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @grok.nil?
      return false if !@samples.nil? && @samples.length > 5
      return false if @source.nil?
      return false if @type.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param grok [Object] Object to be assigned
    # @!visibility private
    def grok=(grok)
      if grok.nil?
        fail ArgumentError, 'invalid value for "grok", grok cannot be nil.'
      end
      @grok = grok
    end

    # Custom attribute writer method with validation
    # @param samples [Object] Object to be assigned
    # @!visibility private
    def samples=(samples)
      if !samples.nil? && samples.length > 5
        fail ArgumentError, 'invalid value for "samples", number of items must be less than or equal to 5.'
      end
      @samples = samples
    end

    # Custom attribute writer method with validation
    # @param source [Object] Object to be assigned
    # @!visibility private
    def source=(source)
      if source.nil?
        fail ArgumentError, 'invalid value for "source", source cannot be nil.'
      end
      @source = source
    end

    # Custom attribute writer method with validation
    # @param type [Object] Object to be assigned
    # @!visibility private
    def type=(type)
      if type.nil?
        fail ArgumentError, 'invalid value for "type", type cannot be nil.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          grok == o.grok &&
          is_enabled == o.is_enabled &&
          name == o.name &&
          samples == o.samples &&
          source == o.source &&
          type == o.type
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [grok, is_enabled, name, samples, source, type].hash
    end
  end
end
