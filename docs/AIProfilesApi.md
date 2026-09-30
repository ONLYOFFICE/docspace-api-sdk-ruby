# DocspaceApiSdk::AIProfilesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_profiles_create**](AIProfilesApi.md#ai_profiles_create) | **POST** /api/2.0/ai/profiles/create | Create a provider profile |
| [**ai_profiles_delete**](AIProfilesApi.md#ai_profiles_delete) | **DELETE** /api/2.0/ai/profiles/delete | Delete a provider profile |
| [**ai_profiles_get_by_id**](AIProfilesApi.md#ai_profiles_get_by_id) | **GET** /api/2.0/ai/profiles/get-by-id | Get a provider profile |
| [**ai_profiles_list**](AIProfilesApi.md#ai_profiles_list) | **GET** /api/2.0/ai/profiles/list | List provider profiles |
| [**ai_profiles_list_models**](AIProfilesApi.md#ai_profiles_list_models) | **GET** /api/2.0/ai/profiles/list-models | List models |
| [**ai_profiles_list_provider_models**](AIProfilesApi.md#ai_profiles_list_provider_models) | **POST** /api/2.0/ai/profiles/list-provider-models | List provider models |
| [**ai_profiles_test_connection**](AIProfilesApi.md#ai_profiles_test_connection) | **POST** /api/2.0/ai/profiles/test-connection | Test a profile's provider |
| [**ai_profiles_update**](AIProfilesApi.md#ai_profiles_update) | **PUT** /api/2.0/ai/profiles/update | Update a provider profile |


## ai_profiles_create

> <AiProfileMutationResult> ai_profiles_create(ai_create_profile_input)

Create a provider profile

Creates an AI provider profile - the endpoint, credentials and model that a chat round runs on - and returns it. The name has to be unique, the credentials are probed against the live provider before anything is stored, and the portal's first profile also takes the `Default` assignment slot. Two inputs are refused outright: a `baseUrl` pointing at a private network address, and `providerType: external`, which delegates transport to the host application and therefore cannot work for a profile the server manages. On a portal running the AI gateway, profiles are managed centrally and this operation answers 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
ai_create_profile_input = DocspaceApiSdk::AiCreateProfileInput.new({name: 'OpenAI GPT-4o', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'https://api.openai.com/v1', model_id: 'gpt-4o'}) # AiCreateProfileInput | 

begin
  # Create a provider profile
  result = api_instance.ai_profiles_create(ai_create_profile_input)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_create: #{e}"
end
```

#### Using the ai_profiles_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProfileMutationResult>, Integer, Hash)> ai_profiles_create_with_http_info(ai_create_profile_input)

```ruby
begin
  # Create a provider profile
  data, status_code, headers = api_instance.ai_profiles_create_with_http_info(ai_create_profile_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProfileMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_create_profile_input** | [**AiCreateProfileInput**](AiCreateProfileInput.md) |  |  |

### Return type

[**AiProfileMutationResult**](AiProfileMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_delete

> <AiSuccessResponse> ai_profiles_delete(body)

Delete a provider profile

Deletes an AI provider profile and cleans up every assignment pointing at it: the `Default` slot moves to the first remaining profile and the other slots are left unbound. The ID is required and may be sent in the body or as a query parameter. An unknown ID is not reported - the call answers success without deleting anything. Threads already bound to the profile keep the stored reference, so a round on such a thread falls back to whatever the scope resolves to.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
body = 'body_example' # String | The ID of the profile to delete, as a bare JSON string.

begin
  # Delete a provider profile
  result = api_instance.ai_profiles_delete(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_delete: #{e}"
end
```

#### Using the ai_profiles_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_profiles_delete_with_http_info(body)

```ruby
begin
  # Delete a provider profile
  data, status_code, headers = api_instance.ai_profiles_delete_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The ID of the profile to delete, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_get_by_id

> <AiProfilesGetById200Response> ai_profiles_get_by_id(id)

Get a provider profile

Returns one AI provider profile by its ID, with its secrets stripped: neither the API key nor the custom headers are ever sent back, on any portal. The ID is required and is read from the query, and an unknown one answers 404. The `baseUrl` in the answer is the one that was stored, not the internal gateway address a round actually dials, so it cannot be used to reach the provider directly. Use `GET api/2.0/ai/profiles/list` to enumerate profiles instead of reading them one by one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The AI provider profile identifier.

begin
  # Get a provider profile
  result = api_instance.ai_profiles_get_by_id(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_get_by_id: #{e}"
end
```

#### Using the ai_profiles_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProfilesGetById200Response>, Integer, Hash)> ai_profiles_get_by_id_with_http_info(id)

```ruby
begin
  # Get a provider profile
  data, status_code, headers = api_instance.ai_profiles_get_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProfilesGetById200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The AI provider profile identifier. |  |

### Return type

[**AiProfilesGetById200Response**](AiProfilesGetById200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_profiles_list

> <Array<AiProfile>> ai_profiles_list

List provider profiles

Lists the portal's AI provider profiles with their secrets stripped, the same way the single-profile read does. It takes no parameters and is not paginated, because a portal holds few profiles. On a portal running the AI gateway the answer is synthesised from the gateway's own catalogue rather than from stored records. The IDs in the answer are what the assignment operations and every round's `profileId` accept.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new

begin
  # List provider profiles
  result = api_instance.ai_profiles_list
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_list: #{e}"
end
```

#### Using the ai_profiles_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiProfile>>, Integer, Hash)> ai_profiles_list_with_http_info

```ruby
begin
  # List provider profiles
  data, status_code, headers = api_instance.ai_profiles_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiProfile>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AiProfile&gt;**](AiProfile.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_profiles_list_models

> <Array<AiModel>> ai_profiles_list_models(profile_id)

List models

Lists the models a stored profile's provider currently offers, asking the provider itself rather than reading a cached list. `profileId` is required and is read from the query. A failure is reported with the provider's own verdict: an unusable key comes back as 400 and a provider that is unreachable or broken as 502, while a missing profile or a caller without access keeps the status the portal gave it. Use `POST api/2.0/ai/profiles/list-provider-models` to probe an endpoint that has no profile yet.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
profile_id = '00000000-0000-0000-0000-000000000000' # String | The AI provider profile identifier.

begin
  # List models
  result = api_instance.ai_profiles_list_models(profile_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_list_models: #{e}"
end
```

#### Using the ai_profiles_list_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiModel>>, Integer, Hash)> ai_profiles_list_models_with_http_info(profile_id)

```ruby
begin
  # List models
  data, status_code, headers = api_instance.ai_profiles_list_models_with_http_info(profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiModel>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_list_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The AI provider profile identifier. |  |

### Return type

[**Array&lt;AiModel&gt;**](AiModel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_profiles_list_provider_models

> <Array<AiModel>> ai_profiles_list_provider_models(ai_profiles_list_provider_models_request)

List provider models

Lists the models an endpoint offers for credentials supplied in the request, before any profile exists - this is what a provider-setup form calls to fill its model picker. `providerType` and `baseUrl` are both required, and a 400 for either names the offending input in a `field` member so the form can highlight it; a `baseUrl` pointing at a private network address is refused as well. For `providerType: onlyoffice` the answer comes from the portal gateway's catalogue, which carries richer capability data than the provider's own listing and matches what `GET api/2.0/ai/profiles/list` reports; a portal without that gateway falls back to asking the provider. A provider that is unreachable or broken is reported as 502, and one that rejects the key as 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
ai_profiles_list_provider_models_request = DocspaceApiSdk::AiProfilesListProviderModelsRequest.new({provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'https://api.openai.com/v1'}) # AiProfilesListProviderModelsRequest | 

begin
  # List provider models
  result = api_instance.ai_profiles_list_provider_models(ai_profiles_list_provider_models_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_list_provider_models: #{e}"
end
```

#### Using the ai_profiles_list_provider_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiModel>>, Integer, Hash)> ai_profiles_list_provider_models_with_http_info(ai_profiles_list_provider_models_request)

```ruby
begin
  # List provider models
  data, status_code, headers = api_instance.ai_profiles_list_provider_models_with_http_info(ai_profiles_list_provider_models_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiModel>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_list_provider_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_profiles_list_provider_models_request** | [**AiProfilesListProviderModelsRequest**](AiProfilesListProviderModelsRequest.md) |  |  |

### Return type

[**Array&lt;AiModel&gt;**](AiModel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_test_connection

> <AiProfilesTestConnection200Response> ai_profiles_test_connection(body)

Test a profile's provider

Probes a stored profile's credentials against its provider and reports the outcome in the answer, writing nothing - this is what a Test button calls so that a failure does not commit anything. `profileId` is required and may be sent in the body or as a query parameter. The result is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload. To validate credentials that are not stored yet, use `POST api/2.0/ai/profiles/list-provider-models`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
body = 'body_example' # String | The ID of the profile to probe, as a bare JSON string.

begin
  # Test a profile's provider
  result = api_instance.ai_profiles_test_connection(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_test_connection: #{e}"
end
```

#### Using the ai_profiles_test_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProfilesTestConnection200Response>, Integer, Hash)> ai_profiles_test_connection_with_http_info(body)

```ruby
begin
  # Test a profile's provider
  data, status_code, headers = api_instance.ai_profiles_test_connection_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProfilesTestConnection200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_test_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The ID of the profile to probe, as a bare JSON string. |  |

### Return type

[**AiProfilesTestConnection200Response**](AiProfilesTestConnection200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_update

> <AiProfileMutationResult> ai_profiles_update(ai_profile)

Update a provider profile

Replaces a stored AI provider profile and returns it, re-checking name uniqueness and probing the credentials against the live provider again. The same two inputs are refused as on create - a private-network `baseUrl` and `providerType: external` - and the whole profile is overwritten by the one supplied rather than merged. On a portal running the AI gateway this answers 403, because profiles are managed centrally there. A profile that is bound to an action or an agent keeps those bindings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
ai_profile = DocspaceApiSdk::AiProfile.new({id: '00000000-0000-0000-0000-000000000000', name: 'OpenAI GPT-4o', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'https://api.openai.com/v1', model_id: 'gpt-4o'}) # AiProfile | 

begin
  # Update a provider profile
  result = api_instance.ai_profiles_update(ai_profile)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_update: #{e}"
end
```

#### Using the ai_profiles_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProfileMutationResult>, Integer, Hash)> ai_profiles_update_with_http_info(ai_profile)

```ruby
begin
  # Update a provider profile
  data, status_code, headers = api_instance.ai_profiles_update_with_http_info(ai_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProfileMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProfilesApi->ai_profiles_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_profile** | [**AiProfile**](AiProfile.md) |  |  |

### Return type

[**AiProfileMutationResult**](AiProfileMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

