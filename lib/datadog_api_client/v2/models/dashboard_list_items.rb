=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # Dashboards within a list.
  class DashboardListItems
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # List of dashboards in the dashboard list.
    attr_reader :dashboards

    # Number of dashboards in the dashboard list.
    attr_accessor :total

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'dashboards' => :'dashboards',
        :'total' => :'total'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'dashboards' => :'Array<DashboardListItem>',
        :'total' => :'Integer'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::DashboardListItems` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::DashboardListItems`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'dashboards')
        if (value = attributes[:'dashboards']).is_a?(Array)
          self.dashboards = value
        end
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @dashboards.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param dashboards [Object] Object to be assigned
    # @!visibility private
    def dashboards=(dashboards)
      if dashboards.nil?
        fail ArgumentError, 'invalid value for "dashboards", dashboards cannot be nil.'
      end
      @dashboards = dashboards
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          dashboards == o.dashboards &&
          total == o.total
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [dashboards, total].hash
    end
  end
end
