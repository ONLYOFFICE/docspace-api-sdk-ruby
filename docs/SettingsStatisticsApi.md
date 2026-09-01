# DocspaceApiSdk::SettingsStatisticsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_space_usage_statistics**](SettingsStatisticsApi.md#get_space_usage_statistics) | **GET** /api/2.0/settings/statistics/spaceusage/{id} | Get the space usage statistics |


## get_space_usage_statistics

> <UsageSpaceStatItemArrayWrapper> get_space_usage_statistics(id)

Get the space usage statistics

Returns the space usage statistics for the module with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-space-usage-statistics/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Settings::StatisticsApi.new
id = '1' # String | The ID extracted from the route parameters.

begin
  # Get the space usage statistics
  result = api_instance.get_space_usage_statistics(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StatisticsApi->get_space_usage_statistics: #{e}"
end
```

#### Using the get_space_usage_statistics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsageSpaceStatItemArrayWrapper>, Integer, Hash)> get_space_usage_statistics_with_http_info(id)

```ruby
begin
  # Get the space usage statistics
  data, status_code, headers = api_instance.get_space_usage_statistics_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsageSpaceStatItemArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StatisticsApi->get_space_usage_statistics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID extracted from the route parameters. |  |

### Return type

[**UsageSpaceStatItemArrayWrapper**](UsageSpaceStatItemArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

