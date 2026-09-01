# DocspaceApiSdk::AIAssignmentsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_assignments_assign**](AIAssignmentsApi.md#ai_assignments_assign) | **PUT** /api/2.0/ai/assignments/assign | Assign |
| [**ai_assignments_bulk_assign**](AIAssignmentsApi.md#ai_assignments_bulk_assign) | **PUT** /api/2.0/ai/assignments/bulk-assign | Bulk assign |
| [**ai_assignments_cascade_profile_delete**](AIAssignmentsApi.md#ai_assignments_cascade_profile_delete) | **DELETE** /api/2.0/ai/assignments/cascade-profile-delete | Cascade profile delete |
| [**ai_assignments_get_all_assignments**](AIAssignmentsApi.md#ai_assignments_get_all_assignments) | **GET** /api/2.0/ai/assignments/get-all-assignments | Get all assignments |
| [**ai_assignments_get_assignment**](AIAssignmentsApi.md#ai_assignments_get_assignment) | **GET** /api/2.0/ai/assignments/get-assignment | Get assignment |
| [**ai_assignments_resolve_for_action**](AIAssignmentsApi.md#ai_assignments_resolve_for_action) | **GET** /api/2.0/ai/assignments/resolve-for-action | Resolve for action |
| [**ai_assignments_try_resolve_for_action**](AIAssignmentsApi.md#ai_assignments_try_resolve_for_action) | **GET** /api/2.0/ai/assignments/try-resolve-for-action | Try resolve for action |
| [**ai_assignments_unassign**](AIAssignmentsApi.md#ai_assignments_unassign) | **DELETE** /api/2.0/ai/assignments/unassign | Unassign |


## ai_assignments_assign

> <AiAssignmentMutationResult> ai_assignments_assign(ai_assignments_assign_request)

Assign

Binds a profile to an AI action, creating the assignment or updating it in place. The profile's declared capabilities are validated against the action, except for the `Default` slot.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-assign/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
ai_assignments_assign_request = DocspaceApiSdk::AiAssignmentsAssignRequest.new({action_type: DocspaceApiSdk::AiActionType::DEFAULT, profile_id: 'profile_id_example'}) # AiAssignmentsAssignRequest | 

begin
  # Assign
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
  # Assign
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_assignments_bulk_assign

> <AiBulkAssignmentResult> ai_assignments_bulk_assign(request_body)

Bulk assign

Applies many action-to-profile bindings at once. Every entry is validated first and nothing is written if any of them fails, so the assignment set is never left half-written.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-bulk-assign/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
request_body = { key: 'inner_example'} # Hash<String, String> | 

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
| **request_body** | [**Hash&lt;String, String&gt;**](String.md) |  |  |

### Return type

[**AiBulkAssignmentResult**](AiBulkAssignmentResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_assignments_cascade_profile_delete

> <AiSuccessResponse> ai_assignments_cascade_profile_delete(body)

Cascade profile delete

Cleans up the assignments pointing at a profile that is about to be deleted: the `Default` slot is promoted to the first remaining profile (or dropped when none is left), and every other slot holding that profile is unbound.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-cascade-profile-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
body = 'body_example' # String | 

begin
  # Cascade profile delete
  result = api_instance.ai_assignments_cascade_profile_delete(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AssignmentsApi->ai_assignments_cascade_profile_delete: #{e}"
end
```

#### Using the ai_assignments_cascade_profile_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_assignments_cascade_profile_delete_with_http_info(body)

```ruby
begin
  # Cascade profile delete
  data, status_code, headers = api_instance.ai_assignments_cascade_profile_delete_with_http_info(body)
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
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_assignments_get_all_assignments

> Hash&lt;String, String&gt; ai_assignments_get_all_assignments(opts)

Get all assignments

Returns the full action-to-profile assignment map of the scope.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-all-assignments/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_get_assignment

> String ai_assignments_get_assignment(action_type)

Get assignment

Returns the profile bound to one AI action, without the `Default` fallback.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-get-assignment/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
action_type = 'action_type_example' # String | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.

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
| **action_type** | **String** | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_resolve_for_action

> <AiResolvedAssignment> ai_assignments_resolve_for_action(action_type, opts)

Resolve for action

Resolves the profile bound to an AI action, falling back to the `Default` slot when the action itself has none. Fails when neither slot is set or the bound profile no longer exists - use `try-resolve-for-action` for an empty answer instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-resolve-for-action/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
action_type = 'action_type_example' # String | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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
| **action_type** | **String** | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiResolvedAssignment**](AiResolvedAssignment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_try_resolve_for_action

> <AiResolvedAssignment> ai_assignments_try_resolve_for_action(action_type, opts)

Try resolve for action

Resolves the profile bound to an AI action exactly like `resolve-for-action`, but answers with an empty result instead of failing when nothing is configured.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-try-resolve-for-action/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
action_type = 'action_type_example' # String | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision.
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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
| **action_type** | **String** | The AI action the request applies to - one of Default, Chat, Code, Summarization, Translation, TextAnalyze, ImageGeneration, OCR, Vision. |  |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiResolvedAssignment**](AiResolvedAssignment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_assignments_unassign

> <AiSuccessResponse> ai_assignments_unassign(body)

Unassign

Removes the profile binding of an AI action. Does nothing when that slot is already empty.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-assignments-unassign/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AssignmentsApi.new
body = 'body_example' # String | 

begin
  # Unassign
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
  # Unassign
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

