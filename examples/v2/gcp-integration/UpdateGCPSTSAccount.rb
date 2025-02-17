# Update STS Service Account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

# there is a valid "gcp_sts_account" in the system
GCP_STS_ACCOUNT_DATA_ID = ENV["GCP_STS_ACCOUNT_DATA_ID"]

body = DatadogAPIClient::V2::GCPSTSServiceAccountUpdateRequest.new({
  data: DatadogAPIClient::V2::GCPSTSServiceAccountUpdateRequestData.new({
    attributes: DatadogAPIClient::V2::GCPSTSServiceAccountAttributes.new({
      client_email: "252bf553ef04b351@example.com",
      host_filters: [
        "foo:bar",
      ],
    }),
    id: GCP_STS_ACCOUNT_DATA_ID,
    type: DatadogAPIClient::V2::GCPServiceAccountType::GCP_SERVICE_ACCOUNT,
  }),
})
p api_instance.update_gcpsts_account(GCP_STS_ACCOUNT_DATA_ID, body)
