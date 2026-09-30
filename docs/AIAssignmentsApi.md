# DocspaceApiSdk::AIAssignmentsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_assignments_assign**](AIAssignmentsApi.md#ai_assignments_assign) | **PUT** /api/2.0/ai/assignments/assign | Bind a profile to an action |
| [**ai_assignments_bulk_assign**](AIAssignmentsApi.md#ai_assignments_bulk_assign) | **PUT** /api/2.0/ai/assignments/bulk-assign | Bulk assign |
| [**ai_assignments_cascade_profile_delete**](AIAssignmentsApi.md#ai_assignments_cascade_profile_delete) | **DELETE** /api/2.0/ai/assignments/cascade-profile-delete | Cascade profile delete |
| [**ai_assignments_get_all_assignments**](AIAssignmentsApi.md#ai_assignments_get_all_assignments) | **GET** /api/2.0/ai/assignments/get-all-assignments | Get all assignments |
| [**ai_assignments_get_assignment**](AIAssignmentsApi.md#ai_assignments_get_assignment) | **GET** /api/2.0/ai/assignments/get-assignment | Get assignment |
| [**ai_assignments_resolve_for_action**](AIAssignmentsApi.md#ai_assignments_resolve_for_action) | **GET** /api/2.0/ai/assignments/resolve-for-action | Resolve for action |
| [**ai_assignments_try_resolve_for_action**](AIAssignmentsApi.md#ai_assignments_try_resolve_for_action) | **GET** /api/2.0/ai/assignments/try-resolve-for-action | Try resolve for action |
| [**ai_assignments_unassign**](AIAssignmentsApi.md#ai_assignments_unassign) | **DELETE** /api/2.0/ai/assignments/unassign | Clear an action's profile |


## ai_assignments_assign

> <AiAssignmentMutationResult> ai_assignments_assign(ai_assignments_assign_request)

Bind a profile to an action

Binds a profile to one AI action portal-wide, creating the assignment or replacing it in place, and returns the result. Both `actionType` and `profileId` are required. The profile's declared capabilities are checked against the action, so a model that cannot generate images cannot be bound to `ImageGeneration` - the `Default` slot is exempt, because it stands in for every action. There is no room-scoped form of this write: a room's own binding is created by the agent that owns it, while reads accept an `entityId`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
ai_assignments_assign_request = DocspaceApiSdk::AiAssignmentsAssignRequest.new({action_type: DocspaceApiSdk::AiActionType::DEFAULT, profile_id: 'profile_id_example'}) # AiAssignmentsAssignRequest | 

begin
  # Bind a profile to an action
  result = api_instance.ai_assignments_assign(ai_assignments_assign_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_assign: #{e}"
end
```

#### Using the ai_assignments_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiAssignmentMutationResult>, Integer, Hash)> ai_assignments_assign_with_http_info(ai_assignments_assign_request)

```ruby
begin
  # Bind a profile to an action
  data, status_code, headers = api_instance.ai_assignments_assign_with_http_info(ai_assignments_assign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAssignmentMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_assignments_assign_request** | [**AiAssignmentsAssignRequest**](AiAssignmentsAssignRequest.md) |  |  |

### Return type

[**AiAssignmentMutationResult**](AiAssignmentMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_assignments_bulk_assign

> <AiBulkAssignmentResult> ai_assignments_bulk_assign(request_body)

Bulk assign

Applies many action-to-profile bindings in one write, which is how a settings screen saves the whole set. The body is a plain map of action type to profile ID, and every entry is validated before anything is written: one unknown action or one non-string profile ID rejects the request whole, so the set is never left half-applied. Each entry behaves as the single assign operation does, capability checks included. The answer carries the resulting assignment set.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
request_body = { key: 'inner_example'} # Hash<String, String> | A map of action type to profile ID. Every key has to be a known action type and every value a profile ID; one bad entry rejects the whole map.

begin
  # Bulk assign
  result = api_instance.ai_assignments_bulk_assign(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_bulk_assign: #{e}"
end
```

#### Using the ai_assignments_bulk_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiBulkAssignmentResult>, Integer, Hash)> ai_assignments_bulk_assign_with_http_info(request_body)

```ruby
begin
  # Bulk assign
  data, status_code, headers = api_instance.ai_assignments_bulk_assign_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiBulkAssignmentResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_bulk_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, String&gt;**](String.md) | A map of action type to profile ID. Every key has to be a known action type and every value a profile ID; one bad entry rejects the whole map. |  |

### Return type

[**AiBulkAssignmentResult**](AiBulkAssignmentResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_assignments_cascade_profile_delete

> <AiSuccessResponse> ai_assignments_cascade_profile_delete(ai_assignments_cascade_profile_delete_request)

Cascade profile delete

Detaches a profile from every assignment that points at it, which is the cleanup step before the profile itself is removed. The `Default` slot is promoted to the first remaining profile, or dropped when none is left, and every other slot holding the profile is cleared. `profileId` is required and may be sent in the body or as a query parameter. `DELETE api/2.0/ai/profiles/delete` already does this, so call it directly only when the profile is being removed by some other means.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
ai_assignments_cascade_profile_delete_request = DocspaceApiSdk::AiAssignmentsCascadeProfileDeleteRequest.new({profile_id: '00000000-0000-0000-0000-000000000000'}) # AiAssignmentsCascadeProfileDeleteRequest | The profile to detach from every assignment. May be sent as the `profileId` query parameter instead of in the body.

begin
  # Cascade profile delete
  result = api_instance.ai_assignments_cascade_profile_delete(ai_assignments_cascade_profile_delete_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_cascade_profile_delete: #{e}"
end
```

#### Using the ai_assignments_cascade_profile_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_assignments_cascade_profile_delete_with_http_info(ai_assignments_cascade_profile_delete_request)

```ruby
begin
  # Cascade profile delete
  data, status_code, headers = api_instance.ai_assignments_cascade_profile_delete_with_http_info(ai_assignments_cascade_profile_delete_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_cascade_profile_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_assignments_cascade_profile_delete_request** | [**AiAssignmentsCascadeProfileDeleteRequest**](AiAssignmentsCascadeProfileDeleteRequest.md) | The profile to detach from every assignment. May be sent as the `profileId` query parameter instead of in the body. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_assignments_get_all_assignments

> Hash&lt;String, String&gt; ai_assignments_get_all_assignments(opts)

Get all assignments

Returns every action-to-profile binding of a scope as one map, which is what a settings screen loads. `entityId` narrows it to a room and has to name one the caller can open; a room that is not an agent room degrades to the portal-wide set rather than answering empty, and omitting the parameter reads the portal-wide set directly. Actions with no binding are simply absent from the map. The `Default` slot is reported as an entry of its own rather than being folded into the others.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get all assignments
  result = api_instance.ai_assignments_get_all_assignments(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_get_all_assignments: #{e}"
end
```

#### Using the ai_assignments_get_all_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, String&gt;, Integer, Hash)> ai_assignments_get_all_assignments_with_http_info(opts)

```ruby
begin
  # Get all assignments
  data, status_code, headers = api_instance.ai_assignments_get_all_assignments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, String&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_get_all_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_get_assignment

> String ai_assignments_get_assignment(action_type)

Get assignment

Returns the profile bound to one AI action, without applying the `Default` fallback - an empty answer means this action has no profile of its own, not that nothing is configured. `actionType` is required and is read from the query. Use `GET api/2.0/ai/assignments/resolve-for-action` to learn which profile would actually serve the action. This reads the portal-wide binding and accepts no `entityId`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
action_type = 'Chat' # String | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision, FormAnalysis.

begin
  # Get assignment
  result = api_instance.ai_assignments_get_assignment(action_type)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_get_assignment: #{e}"
end
```

#### Using the ai_assignments_get_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> ai_assignments_get_assignment_with_http_info(action_type)

```ruby
begin
  # Get assignment
  data, status_code, headers = api_instance.ai_assignments_get_assignment_with_http_info(action_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_get_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | **String** | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision, FormAnalysis. |  |

### Return type

**String**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_resolve_for_action

> <AiResolvedAssignment> ai_assignments_resolve_for_action(action_type, opts)

Resolve for action

Returns the profile that will serve one AI action, falling back to the `Default` slot when the action has no profile of its own. `actionType` is required and has to be one of the known actions - an unknown or misspelled value is rejected rather than resolved to the default. `entityId` narrows the lookup to a room, and a room with no assignment of its own degrades to the portal-wide one. This fails when neither slot is set or the bound profile is gone, so use `GET api/2.0/ai/assignments/try-resolve-for-action` when an unconfigured portal should answer empty instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-resolve-for-action/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
action_type = 'Chat' # String | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision, FormAnalysis.
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Resolve for action
  result = api_instance.ai_assignments_resolve_for_action(action_type, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_resolve_for_action: #{e}"
end
```

#### Using the ai_assignments_resolve_for_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiResolvedAssignment>, Integer, Hash)> ai_assignments_resolve_for_action_with_http_info(action_type, opts)

```ruby
begin
  # Resolve for action
  data, status_code, headers = api_instance.ai_assignments_resolve_for_action_with_http_info(action_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiResolvedAssignment>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_resolve_for_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | **String** | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision, FormAnalysis. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiResolvedAssignment**](AiResolvedAssignment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_try_resolve_for_action

> <AiResolvedAssignment> ai_assignments_try_resolve_for_action(action_type, opts)

Try resolve for action

Returns the profile that will serve one AI action, exactly as `GET api/2.0/ai/assignments/resolve-for-action` does, but answers with an empty result rather than failing when nothing is configured. `actionType` is required and is validated the same way, and `entityId` narrows the lookup to a room. This is the operation to call when the absence of a profile is a normal state to render - a settings screen, or a feature that hides itself. Both operations are read-only.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-try-resolve-for-action/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
action_type = 'Chat' # String | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision, FormAnalysis.
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Try resolve for action
  result = api_instance.ai_assignments_try_resolve_for_action(action_type, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_try_resolve_for_action: #{e}"
end
```

#### Using the ai_assignments_try_resolve_for_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiResolvedAssignment>, Integer, Hash)> ai_assignments_try_resolve_for_action_with_http_info(action_type, opts)

```ruby
begin
  # Try resolve for action
  data, status_code, headers = api_instance.ai_assignments_try_resolve_for_action_with_http_info(action_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiResolvedAssignment>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_try_resolve_for_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | **String** | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision, FormAnalysis. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiResolvedAssignment**](AiResolvedAssignment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_unassign

> <AiSuccessResponse> ai_assignments_unassign(body)

Clear an action's profile

Clears the portal-wide binding of one AI action, after which the action falls back to the `Default` slot. `actionType` is required and may be sent in the body or as a query parameter. An action whose slot is already empty is not reported as an error - the call answers success either way, so it is safe to repeat. Clearing `Default` itself leaves the actions that relied on it unresolvable.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/).

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

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
body = 'body_example' # String | 

begin
  # Clear an action's profile
  result = api_instance.ai_assignments_unassign(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_unassign: #{e}"
end
```

#### Using the ai_assignments_unassign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_assignments_unassign_with_http_info(body)

```ruby
begin
  # Clear an action's profile
  data, status_code, headers = api_instance.ai_assignments_unassign_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_unassign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

