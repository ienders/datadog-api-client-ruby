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
  # Updated change widget.
  class ChangeWidgetRequest
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The log query.
    attr_accessor :apm_query

    # Show the absolute or the relative change.
    attr_accessor :change_type

    # Timeframe used for the change comparison.
    attr_accessor :compare_to

    # The log query.
    attr_accessor :event_query

    # List of formulas that operate on queries.
    attr_accessor :formulas

    # Whether to show increase as good.
    attr_accessor :increase_good

    # The log query.
    attr_accessor :log_query

    # The log query.
    attr_accessor :network_query

    # What to order by.
    attr_accessor :order_by

    # Widget sorting methods.
    attr_accessor :order_dir

    # The process query to use in the widget.
    attr_accessor :process_query

    # The log query.
    attr_accessor :profile_metrics_query

    # Query definition.
    attr_accessor :q

    # List of queries that can be returned directly or used in formulas.
    attr_accessor :queries

    # Timeseries or Scalar response.
    attr_accessor :response_format

    # The log query.
    attr_accessor :rum_query

    # The log query.
    attr_accessor :security_query

    # Whether to show the present value.
    attr_accessor :show_present

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'apm_query' => :'apm_query',
        :'change_type' => :'change_type',
        :'compare_to' => :'compare_to',
        :'event_query' => :'event_query',
        :'formulas' => :'formulas',
        :'increase_good' => :'increase_good',
        :'log_query' => :'log_query',
        :'network_query' => :'network_query',
        :'order_by' => :'order_by',
        :'order_dir' => :'order_dir',
        :'process_query' => :'process_query',
        :'profile_metrics_query' => :'profile_metrics_query',
        :'q' => :'q',
        :'queries' => :'queries',
        :'response_format' => :'response_format',
        :'rum_query' => :'rum_query',
        :'security_query' => :'security_query',
        :'show_present' => :'show_present'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'apm_query' => :'LogQueryDefinition',
        :'change_type' => :'WidgetChangeType',
        :'compare_to' => :'WidgetCompareTo',
        :'event_query' => :'LogQueryDefinition',
        :'formulas' => :'Array<WidgetFormula>',
        :'increase_good' => :'Boolean',
        :'log_query' => :'LogQueryDefinition',
        :'network_query' => :'LogQueryDefinition',
        :'order_by' => :'WidgetOrderBy',
        :'order_dir' => :'WidgetSort',
        :'process_query' => :'ProcessQueryDefinition',
        :'profile_metrics_query' => :'LogQueryDefinition',
        :'q' => :'String',
        :'queries' => :'Array<FormulaAndFunctionQueryDefinition>',
        :'response_format' => :'FormulaAndFunctionResponseFormat',
        :'rum_query' => :'LogQueryDefinition',
        :'security_query' => :'LogQueryDefinition',
        :'show_present' => :'Boolean'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ChangeWidgetRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::ChangeWidgetRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'apm_query')
        self.apm_query = attributes[:'apm_query']
      end

      if attributes.key?(:'change_type')
        self.change_type = attributes[:'change_type']
      end

      if attributes.key?(:'compare_to')
        self.compare_to = attributes[:'compare_to']
      end

      if attributes.key?(:'event_query')
        self.event_query = attributes[:'event_query']
      end

      if attributes.key?(:'formulas')
        if (value = attributes[:'formulas']).is_a?(Array)
          self.formulas = value
        end
      end

      if attributes.key?(:'increase_good')
        self.increase_good = attributes[:'increase_good']
      end

      if attributes.key?(:'log_query')
        self.log_query = attributes[:'log_query']
      end

      if attributes.key?(:'network_query')
        self.network_query = attributes[:'network_query']
      end

      if attributes.key?(:'order_by')
        self.order_by = attributes[:'order_by']
      end

      if attributes.key?(:'order_dir')
        self.order_dir = attributes[:'order_dir']
      end

      if attributes.key?(:'process_query')
        self.process_query = attributes[:'process_query']
      end

      if attributes.key?(:'profile_metrics_query')
        self.profile_metrics_query = attributes[:'profile_metrics_query']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'response_format')
        self.response_format = attributes[:'response_format']
      end

      if attributes.key?(:'rum_query')
        self.rum_query = attributes[:'rum_query']
      end

      if attributes.key?(:'security_query')
        self.security_query = attributes[:'security_query']
      end

      if attributes.key?(:'show_present')
        self.show_present = attributes[:'show_present']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          apm_query == o.apm_query &&
          change_type == o.change_type &&
          compare_to == o.compare_to &&
          event_query == o.event_query &&
          formulas == o.formulas &&
          increase_good == o.increase_good &&
          log_query == o.log_query &&
          network_query == o.network_query &&
          order_by == o.order_by &&
          order_dir == o.order_dir &&
          process_query == o.process_query &&
          profile_metrics_query == o.profile_metrics_query &&
          q == o.q &&
          queries == o.queries &&
          response_format == o.response_format &&
          rum_query == o.rum_query &&
          security_query == o.security_query &&
          show_present == o.show_present
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [apm_query, change_type, compare_to, event_query, formulas, increase_good, log_query, network_query, order_by, order_dir, process_query, profile_metrics_query, q, queries, response_format, rum_query, security_query, show_present].hash
    end
  end
end
