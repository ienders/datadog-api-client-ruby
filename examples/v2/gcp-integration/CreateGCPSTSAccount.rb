# Create a new entry for your service account returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::GCPIntegrationAPI.new

body = DatadogAPIClient::V2::GCPSTSServiceAccountCreateRequest.new({
  data: DatadogAPIClient::V2::GCPSTSServiceAccountData.new({
    attributes: DatadogAPIClient::V2::GCPSTSServiceAccountAttributes.new({
      client_email: "252bf553ef04b351@test-project.iam.gserviceaccount.com",
      host_filters: [],
    }),
    type: DatadogAPIClient::V2::GCPServiceAccountType::GCP_SERVICE_ACCOUNT,
  }),
})
p api_instance.create_gcpsts_account(body)
