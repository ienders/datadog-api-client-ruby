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
  class SyntheticsStepType
    ASSERT_CURRENT_URL = "assertCurrentUrl".freeze
    ASSERT_ELEMENT_ATTRIBUTE = "assertElementAttribute".freeze
    ASSERT_ELEMENT_CONTENT = "assertElementContent".freeze
    ASSERT_ELEMENT_PRESENT = "assertElementPresent".freeze
    ASSERT_EMAIL = "assertEmail".freeze
    ASSERT_FILE_DOWNLOAD = "assertFileDownload".freeze
    ASSERT_FROM_JAVASCRIPT = "assertFromJavascript".freeze
    ASSERT_PAGE_CONTAINS = "assertPageContains".freeze
    ASSERT_PAGE_LACKS = "assertPageLacks".freeze
    CLICK = "click".freeze
    EXTRACT_FROM_JAVASCRIPT = "extractFromJavascript".freeze
    EXTRACT_VARIABLE = "extractVariable".freeze
    GO_TO_EMAIL_LINK = "goToEmailLink".freeze
    GO_TO_URL = "goToUrl".freeze
    GO_TO_URL_AND_MEASURE_TTI = "goToUrlAndMeasureTti".freeze
    HOVER = "hover".freeze
    PLAY_SUB_TEST = "playSubTest".freeze
    PRESS_KEY = "pressKey".freeze
    REFRESH = "refresh".freeze
    RUN_API_TEST = "runApiTest".freeze
    SCROLL = "scroll".freeze
    SELECT_OPTION = "selectOption".freeze
    TYPE_TEXT = "typeText".freeze
    UPLOAD_FILES = "uploadFiles".freeze
    WAIT = "wait".freeze

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param value [String] The enum value in the form of the string
    # @return [String] The enum value
    # @!visibility private
    def build_from_hash(value)
      constantValues = SyntheticsStepType.constants.select { |c| SyntheticsStepType::const_get(c) == value }
      constantValues.empty? ? DatadogAPIClient::V1::UnparsedObject.new(value) : value
    end
  end

end
