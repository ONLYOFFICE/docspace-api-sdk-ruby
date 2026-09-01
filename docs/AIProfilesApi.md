# DocspaceApiSdk::AIProfilesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_profiles_create**](AIProfilesApi.md#ai_profiles_create) | **POST** /api/2.0/ai/profiles/create | Create |
| [**ai_profiles_delete**](AIProfilesApi.md#ai_profiles_delete) | **DELETE** /api/2.0/ai/profiles/delete | Delete |
| [**ai_profiles_get_by_id**](AIProfilesApi.md#ai_profiles_get_by_id) | **GET** /api/2.0/ai/profiles/get-by-id | Get by id |
| [**ai_profiles_list**](AIProfilesApi.md#ai_profiles_list) | **GET** /api/2.0/ai/profiles/list | List |
| [**ai_profiles_list_models**](AIProfilesApi.md#ai_profiles_list_models) | **GET** /api/2.0/ai/profiles/list-models | List models |
| [**ai_profiles_list_provider_models**](AIProfilesApi.md#ai_profiles_list_provider_models) | **POST** /api/2.0/ai/profiles/list-provider-models | List provider models |
| [**ai_profiles_test_connection**](AIProfilesApi.md#ai_profiles_test_connection) | **POST** /api/2.0/ai/profiles/test-connection | Test connection |
| [**ai_profiles_update**](AIProfilesApi.md#ai_profiles_update) | **PUT** /api/2.0/ai/profiles/update | Update |


## ai_profiles_create

> <AiProfileMutationResult> ai_profiles_create(ai_create_profile_input)

Create

Creates an AI provider profile. The name must be unique and the credentials are validated against the provider before the profile is stored; the portal's first profile also takes the `Default` assignment slot.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-create/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
ai_create_profile_input = DocspaceApiSdk::AiCreateProfileInput.new({name: 'name_example', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'base_url_example', model_id: 'model_id_example'}) # AiCreateProfileInput | 

begin
  # Create
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
  # Create
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_delete

> <AiSuccessResponse> ai_profiles_delete(body)

Delete

Deletes an AI provider profile and cleans up the assignments pointing at it - the `Default` slot moves to the first remaining profile, the other slots are unbound.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
body = 'body_example' # String | 

begin
  # Delete
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
  # Delete
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
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_get_by_id

> <AiProfilesGetById200Response> ai_profiles_get_by_id(id)

Get by id

Returns one AI provider profile, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-get-by-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
id = 'id_example' # String | The AI provider profile identifier.

begin
  # Get by id
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
  # Get by id
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_profiles_list

> <Array<AiProfile>> ai_profiles_list

List

Lists the portal's AI provider profiles.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new

begin
  # List
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
  # List
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_profiles_list_models

> <Array<AiModel>> ai_profiles_list_models(profile_id)

List models

Lists the models the given profile's provider offers, as reported by the provider itself.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-models/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
profile_id = 'profile_id_example' # String | The AI provider profile identifier.

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_profiles_list_provider_models

> <Array<AiModel>> ai_profiles_list_provider_models(ai_profiles_list_provider_models_request)

List provider models

Lists the models a provider offers for the supplied endpoint and key, before any profile is created from them.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-list-provider-models/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
ai_profiles_list_provider_models_request = DocspaceApiSdk::AiProfilesListProviderModelsRequest.new({provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'base_url_example', api_key: 'api_key_example'}) # AiProfilesListProviderModelsRequest | 

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_test_connection

> <AiProfilesTestConnection200Response> ai_profiles_test_connection(body)

Test connection

Checks a stored profile's credentials against its provider and reports the provider's own error when the call fails. Nothing is written.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-test-connection/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
body = 'body_example' # String | 

begin
  # Test connection
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
  # Test connection
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
| **body** | **String** |  |  |

### Return type

[**AiProfilesTestConnection200Response**](AiProfilesTestConnection200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_profiles_update

> <AiProfileMutationResult> ai_profiles_update(ai_profile)

Update

Updates an AI provider profile, re-checking name uniqueness and the provider credentials.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-profiles-update/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ProfilesApi.new
ai_profile = DocspaceApiSdk::AiProfile.new({id: 'id_example', name: 'name_example', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'base_url_example', model_id: 'model_id_example'}) # AiProfile | 

begin
  # Update
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
  # Update
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

