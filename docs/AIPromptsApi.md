# DocspaceApiSdk::AIPromptsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_prompts_create**](AIPromptsApi.md#ai_prompts_create) | **POST** /api/2.0/ai/prompts/create | Save a prompt |
| [**ai_prompts_create_folder**](AIPromptsApi.md#ai_prompts_create_folder) | **POST** /api/2.0/ai/prompts/create-folder | Create folder |
| [**ai_prompts_delete**](AIPromptsApi.md#ai_prompts_delete) | **DELETE** /api/2.0/ai/prompts/delete | Delete a saved prompt |
| [**ai_prompts_delete_folder**](AIPromptsApi.md#ai_prompts_delete_folder) | **DELETE** /api/2.0/ai/prompts/delete-folder | Delete folder |
| [**ai_prompts_export**](AIPromptsApi.md#ai_prompts_export) | **GET** /api/2.0/ai/prompts/export | Export the prompt library |
| [**ai_prompts_get_by_id**](AIPromptsApi.md#ai_prompts_get_by_id) | **GET** /api/2.0/ai/prompts/get-by-id | Get a saved prompt |
| [**ai_prompts_get_folder_by_id**](AIPromptsApi.md#ai_prompts_get_folder_by_id) | **GET** /api/2.0/ai/prompts/get-folder-by-id | Get a prompt folder |
| [**ai_prompts_import_bundle**](AIPromptsApi.md#ai_prompts_import_bundle) | **POST** /api/2.0/ai/prompts/import-bundle | Import bundle |
| [**ai_prompts_list**](AIPromptsApi.md#ai_prompts_list) | **GET** /api/2.0/ai/prompts/list | List saved prompts |
| [**ai_prompts_list_folders**](AIPromptsApi.md#ai_prompts_list_folders) | **GET** /api/2.0/ai/prompts/list-folders | List folders |
| [**ai_prompts_move**](AIPromptsApi.md#ai_prompts_move) | **PUT** /api/2.0/ai/prompts/move | Move a prompt to a folder |
| [**ai_prompts_rename_folder**](AIPromptsApi.md#ai_prompts_rename_folder) | **PUT** /api/2.0/ai/prompts/rename-folder | Rename folder |
| [**ai_prompts_update**](AIPromptsApi.md#ai_prompts_update) | **PUT** /api/2.0/ai/prompts/update | Update a saved prompt |


## ai_prompts_create

> <AiPromptMutationResult> ai_prompts_create(ai_create_prompt_input)

Save a prompt

Saves a new prompt in the caller's own prompt library and returns it. The name has to be non-empty and unique inside its folder, and `folderId` has to name an existing folder - omit it to save the prompt at the root. Prompts are per-user: another user's library is never visible here, and no permission beyond having AI enabled is needed. The answer carries the stored prompt including the ID to use with the update, move and delete operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_create_prompt_input = DocspaceApiSdk::AiCreatePromptInput.new({name: 'Contract summary', text: 'Summarise the key obligations and dates in the attached contract.'}) # AiCreatePromptInput | 

begin
  # Save a prompt
  result = api_instance.ai_prompts_create(ai_create_prompt_input)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_create: #{e}"
end
```

#### Using the ai_prompts_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPromptMutationResult>, Integer, Hash)> ai_prompts_create_with_http_info(ai_create_prompt_input)

```ruby
begin
  # Save a prompt
  data, status_code, headers = api_instance.ai_prompts_create_with_http_info(ai_create_prompt_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPromptMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_create_prompt_input** | [**AiCreatePromptInput**](AiCreatePromptInput.md) |  |  |

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_create_folder

> <AiFolderMutationResult> ai_prompts_create_folder(body)

Create folder

Creates a folder in the caller's prompt library and returns it. The name has to be non-empty and unique across that library. Folders do not nest: there is one flat level, so a folder cannot be created inside another. The answer carries the folder ID to use as `folderId` when saving or moving prompts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
body = 'body_example' # String | The name of the folder to create, as a bare JSON string.

begin
  # Create folder
  result = api_instance.ai_prompts_create_folder(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_create_folder: #{e}"
end
```

#### Using the ai_prompts_create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderMutationResult>, Integer, Hash)> ai_prompts_create_folder_with_http_info(body)

```ruby
begin
  # Create folder
  data, status_code, headers = api_instance.ai_prompts_create_folder_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The name of the folder to create, as a bare JSON string. |  |

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_delete

> <AiSuccessResponse> ai_prompts_delete(body)

Delete a saved prompt

Deletes one saved prompt from the caller's library. The ID may be sent in the body or as a query parameter, and it is required. An ID that does not exist, or that belongs to another user, is not reported: the call answers success without deleting anything. The deletion is permanent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
body = 'body_example' # String | The ID of the prompt to delete, as a bare JSON string.

begin
  # Delete a saved prompt
  result = api_instance.ai_prompts_delete(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_delete: #{e}"
end
```

#### Using the ai_prompts_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_prompts_delete_with_http_info(body)

```ruby
begin
  # Delete a saved prompt
  data, status_code, headers = api_instance.ai_prompts_delete_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The ID of the prompt to delete, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_delete_folder

> <AiSuccessResponse> ai_prompts_delete_folder(body)

Delete folder

Deletes a folder together with every prompt inside it, permanently. The ID is required and may be sent in the body or as a query parameter. Unlike deleting a prompt, this checks first: a folder that does not exist, and one that belongs to another user, both answer 404 - the two cases are deliberately indistinguishable, so a foreign folder cannot be probed. Move the prompts out with `PUT api/2.0/ai/prompts/move` first if they should survive.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
body = 'body_example' # String | The ID of the folder to delete, as a bare JSON string.

begin
  # Delete folder
  result = api_instance.ai_prompts_delete_folder(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_delete_folder: #{e}"
end
```

#### Using the ai_prompts_delete_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_prompts_delete_folder_with_http_info(body)

```ruby
begin
  # Delete folder
  data, status_code, headers = api_instance.ai_prompts_delete_folder_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_delete_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The ID of the folder to delete, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_export

> <AiPromptBundle> ai_prompts_export

Export the prompt library

Builds a versioned bundle of every prompt and folder in the caller's library and returns it, with no parameters. The bundle is self-contained: it carries its own format version so an older export can still be read back, and it is the input `POST api/2.0/ai/prompts/import-bundle` expects. This is also the only way to read the whole library at once, since listing is folder-scoped. Nothing is changed by the call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new

begin
  # Export the prompt library
  result = api_instance.ai_prompts_export
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_export: #{e}"
end
```

#### Using the ai_prompts_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPromptBundle>, Integer, Hash)> ai_prompts_export_with_http_info

```ruby
begin
  # Export the prompt library
  data, status_code, headers = api_instance.ai_prompts_export_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPromptBundle>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_export_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiPromptBundle**](AiPromptBundle.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_get_by_id

> <AiPrompt> ai_prompts_get_by_id(id)

Get a saved prompt

Returns one saved prompt by its ID. The ID is required and is read from the query. An ID that is unknown, or that belongs to another user, is not reported as 404: the answer is an empty body with status 200, so treat a missing payload as no such prompt. Prompt IDs come from `GET api/2.0/ai/prompts/list` or from the answer of the create operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
id = '33333333-3333-3333-3333-333333333333' # String | The saved prompt identifier.

begin
  # Get a saved prompt
  result = api_instance.ai_prompts_get_by_id(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_get_by_id: #{e}"
end
```

#### Using the ai_prompts_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPrompt>, Integer, Hash)> ai_prompts_get_by_id_with_http_info(id)

```ruby
begin
  # Get a saved prompt
  data, status_code, headers = api_instance.ai_prompts_get_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPrompt>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The saved prompt identifier. |  |

### Return type

[**AiPrompt**](AiPrompt.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_get_folder_by_id

> <AiPromptFolder> ai_prompts_get_folder_by_id(id)

Get a prompt folder

Returns one folder of the caller's prompt library by its ID, without the prompts inside it. The ID is required and is read from the query. An unknown or foreign ID is not reported as 404: the answer is an empty body with status 200. This differs from the delete operation on the same ID, which does answer 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
id = '44444444-4444-4444-4444-444444444444' # String | The prompt folder identifier.

begin
  # Get a prompt folder
  result = api_instance.ai_prompts_get_folder_by_id(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_get_folder_by_id: #{e}"
end
```

#### Using the ai_prompts_get_folder_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPromptFolder>, Integer, Hash)> ai_prompts_get_folder_by_id_with_http_info(id)

```ruby
begin
  # Get a prompt folder
  data, status_code, headers = api_instance.ai_prompts_get_folder_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPromptFolder>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_get_folder_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The prompt folder identifier. |  |

### Return type

[**AiPromptFolder**](AiPromptFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_import_bundle

> <AiImportResult> ai_prompts_import_bundle(ai_prompts_import_bundle_request)

Import bundle

Writes a bundle produced by `GET api/2.0/ai/prompts/export` back into the caller's library. `mode` decides how: `replace` deletes the current prompts and folders before writing, and `merge` writes the bundle on top of what is already there. The folder references inside the bundle are validated before anything is written, so a corrupt bundle is rejected whole rather than applied halfway. `replace` is destructive and cannot be undone - export first if the current library matters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_import_bundle_request = DocspaceApiSdk::AiPromptsImportBundleRequest.new({bundle: DocspaceApiSdk::AiPromptBundle.new({version: 1, folders: [], prompts: []})}) # AiPromptsImportBundleRequest | 

begin
  # Import bundle
  result = api_instance.ai_prompts_import_bundle(ai_prompts_import_bundle_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_import_bundle: #{e}"
end
```

#### Using the ai_prompts_import_bundle_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiImportResult>, Integer, Hash)> ai_prompts_import_bundle_with_http_info(ai_prompts_import_bundle_request)

```ruby
begin
  # Import bundle
  data, status_code, headers = api_instance.ai_prompts_import_bundle_with_http_info(ai_prompts_import_bundle_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiImportResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_import_bundle_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_prompts_import_bundle_request** | [**AiPromptsImportBundleRequest**](AiPromptsImportBundleRequest.md) |  |  |

### Return type

[**AiImportResult**](AiImportResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_list

> <Array<AiPrompt>> ai_prompts_list(opts)

List saved prompts

Lists the caller's saved prompts, newest first. `folderId` scopes the answer to one folder, and omitting it - or sending it empty - lists the prompts that sit at the root rather than every prompt, because the client fetcher cannot tell an absent value from a null one. There is therefore no way to ask for the whole library in one call: walk the folders from `GET api/2.0/ai/prompts/list-folders`, or take everything at once with `GET api/2.0/ai/prompts/export`. The prompts of other users are never included.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
opts = {
  folder_id: '44444444-4444-4444-4444-444444444444' # String | The prompt folder identifier. Omit to list the prompts that sit outside any folder.
}

begin
  # List saved prompts
  result = api_instance.ai_prompts_list(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_list: #{e}"
end
```

#### Using the ai_prompts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiPrompt>>, Integer, Hash)> ai_prompts_list_with_http_info(opts)

```ruby
begin
  # List saved prompts
  data, status_code, headers = api_instance.ai_prompts_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiPrompt>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The prompt folder identifier. Omit to list the prompts that sit outside any folder. | [optional] |

### Return type

[**Array&lt;AiPrompt&gt;**](AiPrompt.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_list_folders

> <Array<AiPromptFolder>> ai_prompts_list_folders

List folders

Lists every folder of the caller's prompt library, newest first, with no parameters and no pagination. Folders are flat, so the answer is a single list rather than a tree. The prompts inside them are not included - read those with `GET api/2.0/ai/prompts/list` per folder. Another user's folders are never listed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new

begin
  # List folders
  result = api_instance.ai_prompts_list_folders
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_list_folders: #{e}"
end
```

#### Using the ai_prompts_list_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiPromptFolder>>, Integer, Hash)> ai_prompts_list_folders_with_http_info

```ruby
begin
  # List folders
  data, status_code, headers = api_instance.ai_prompts_list_folders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiPromptFolder>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_list_folders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AiPromptFolder&gt;**](AiPromptFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_move

> <AiPromptMutationResult> ai_prompts_move(ai_prompts_move_request)

Move a prompt to a folder

Moves a saved prompt into another folder, or to the root when `folderId` is omitted or null. The name is re-validated in the target folder, so the move fails when a prompt of that name already sits there - rename it first with `PUT api/2.0/ai/prompts/update`. Nothing about the prompt other than its folder changes. The answer carries the moved prompt.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_move_request = DocspaceApiSdk::AiPromptsMoveRequest.new({id: 'id_example', folder_id: 'folder_id_example'}) # AiPromptsMoveRequest | 

begin
  # Move a prompt to a folder
  result = api_instance.ai_prompts_move(ai_prompts_move_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_move: #{e}"
end
```

#### Using the ai_prompts_move_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPromptMutationResult>, Integer, Hash)> ai_prompts_move_with_http_info(ai_prompts_move_request)

```ruby
begin
  # Move a prompt to a folder
  data, status_code, headers = api_instance.ai_prompts_move_with_http_info(ai_prompts_move_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPromptMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_move_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_prompts_move_request** | [**AiPromptsMoveRequest**](AiPromptsMoveRequest.md) |  |  |

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_rename_folder

> <AiFolderMutationResult> ai_prompts_rename_folder(ai_prompts_rename_folder_request)

Rename folder

Renames a folder in the caller's prompt library, validating the new name against the folders already there. The prompts inside it are untouched and keep their IDs. The answer carries the renamed folder. A name that another folder already uses is rejected.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_rename_folder_request = DocspaceApiSdk::AiPromptsRenameFolderRequest.new({id: 'id_example', name: 'name_example'}) # AiPromptsRenameFolderRequest | 

begin
  # Rename folder
  result = api_instance.ai_prompts_rename_folder(ai_prompts_rename_folder_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_rename_folder: #{e}"
end
```

#### Using the ai_prompts_rename_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderMutationResult>, Integer, Hash)> ai_prompts_rename_folder_with_http_info(ai_prompts_rename_folder_request)

```ruby
begin
  # Rename folder
  data, status_code, headers = api_instance.ai_prompts_rename_folder_with_http_info(ai_prompts_rename_folder_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_rename_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_prompts_rename_folder_request** | [**AiPromptsRenameFolderRequest**](AiPromptsRenameFolderRequest.md) |  |  |

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_update

> <AiPromptMutationResult> ai_prompts_update(ai_prompts_update_request)

Update a saved prompt

Changes a saved prompt and returns the stored result. Only the fields present in `updates` are written, so a partial object leaves the rest of the prompt alone. The name and the folder reference are re-validated whenever either changes, which means an update can fail on a name another prompt in the same folder already uses. Use `PUT api/2.0/ai/prompts/move` to change only the folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/).

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

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_update_request = DocspaceApiSdk::AiPromptsUpdateRequest.new({id: 'id_example', updates: DocspaceApiSdk::AiPromptsUpdateRequestUpdates.new}) # AiPromptsUpdateRequest | 

begin
  # Update a saved prompt
  result = api_instance.ai_prompts_update(ai_prompts_update_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_update: #{e}"
end
```

#### Using the ai_prompts_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPromptMutationResult>, Integer, Hash)> ai_prompts_update_with_http_info(ai_prompts_update_request)

```ruby
begin
  # Update a saved prompt
  data, status_code, headers = api_instance.ai_prompts_update_with_http_info(ai_prompts_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPromptMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PromptsApi->ai_prompts_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_prompts_update_request** | [**AiPromptsUpdateRequest**](AiPromptsUpdateRequest.md) |  |  |

### Return type

[**AiPromptMutationResult**](AiPromptMutationResult.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

