# DocspaceApiSdk::SettingsStatisticsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_space_usage_statistics**](SettingsStatisticsApi.md#get_space_usage_statistics) | **GET** /api/2.0/settings/statistics/spaceusage/{id} | Get the space usage statistics |


## get_space_usage_statistics

> <UsageSpaceStatItemArrayWrapper> get_space_usage_statistics(id)

Get the space usage statistics

Returns the storage space used by one portal module, broken down per data category the module tracks (for  example per room type), together with a human-readable size and whether the category is disabled. Requires  Owner or DocSpaceAdmin (the EditPortalSettings permission). `id` identifies the module by the same GUID the  portal's module catalog uses; a module that does not exist, or one that does not report space usage at all,  returns an empty list rather than an error. This is a read-only, idempotent call, and the list is not  paginated. Sizes are already formatted as display strings (for example `1.5 GB`), not raw byte counts.

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
id = '1' # String | The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found.

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
| **id** | **String** | The identifier of the object the operation acts on, as the listing operation of that kind of object reports  it. It has to match the shape the route declares - a GUID where the route is typed as one - since a value of  another shape does not match the route at all and is answered as not found. |  |

### Return type

[**UsageSpaceStatItemArrayWrapper**](UsageSpaceStatItemArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

