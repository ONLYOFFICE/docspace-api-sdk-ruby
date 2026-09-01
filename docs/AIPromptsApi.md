# DocspaceApiSdk::AIPromptsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_prompts_create**](AIPromptsApi.md#ai_prompts_create) | **POST** /api/2.0/ai/prompts/create | Create |
| [**ai_prompts_create_folder**](AIPromptsApi.md#ai_prompts_create_folder) | **POST** /api/2.0/ai/prompts/create-folder | Create folder |
| [**ai_prompts_delete**](AIPromptsApi.md#ai_prompts_delete) | **DELETE** /api/2.0/ai/prompts/delete | Delete |
| [**ai_prompts_delete_folder**](AIPromptsApi.md#ai_prompts_delete_folder) | **DELETE** /api/2.0/ai/prompts/delete-folder | Delete folder |
| [**ai_prompts_export**](AIPromptsApi.md#ai_prompts_export) | **GET** /api/2.0/ai/prompts/export | Export |
| [**ai_prompts_get_by_id**](AIPromptsApi.md#ai_prompts_get_by_id) | **GET** /api/2.0/ai/prompts/get-by-id | Get by id |
| [**ai_prompts_get_folder_by_id**](AIPromptsApi.md#ai_prompts_get_folder_by_id) | **GET** /api/2.0/ai/prompts/get-folder-by-id | Get folder by id |
| [**ai_prompts_import_bundle**](AIPromptsApi.md#ai_prompts_import_bundle) | **POST** /api/2.0/ai/prompts/import-bundle | Import bundle |
| [**ai_prompts_list**](AIPromptsApi.md#ai_prompts_list) | **GET** /api/2.0/ai/prompts/list | List |
| [**ai_prompts_list_folders**](AIPromptsApi.md#ai_prompts_list_folders) | **GET** /api/2.0/ai/prompts/list-folders | List folders |
| [**ai_prompts_move**](AIPromptsApi.md#ai_prompts_move) | **PUT** /api/2.0/ai/prompts/move | Move |
| [**ai_prompts_rename_folder**](AIPromptsApi.md#ai_prompts_rename_folder) | **PUT** /api/2.0/ai/prompts/rename-folder | Rename folder |
| [**ai_prompts_update**](AIPromptsApi.md#ai_prompts_update) | **PUT** /api/2.0/ai/prompts/update | Update |


## ai_prompts_create

> <AiPromptMutationResult> ai_prompts_create(ai_create_prompt_input)

Create

Saves a new prompt. The name must be non-empty and unique inside its folder, and `folderId` must point at an existing folder - omit it for the root.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_create_prompt_input = DocspaceApiSdk::AiCreatePromptInput.new({name: 'name_example', text: 'text_example'}) # AiCreatePromptInput | 

begin
  # Create
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
  # Create
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_create_folder

> <AiFolderMutationResult> ai_prompts_create_folder(body)

Create folder

Creates a prompt folder. The name must be non-empty and unique across the portal - prompt folders do not nest.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-create-folder/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
body = 'body_example' # String | 

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
| **body** | **String** |  |  |

### Return type

[**AiFolderMutationResult**](AiFolderMutationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_delete

> <AiSuccessResponse> ai_prompts_delete(body)

Delete

Deletes a saved prompt. Does nothing when it no longer exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
body = 'body_example' # String | 

begin
  # Delete
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
  # Delete
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
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_delete_folder

> <AiSuccessResponse> ai_prompts_delete_folder(body)

Delete folder

Deletes a prompt folder together with the prompts inside it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-delete-folder/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
body = 'body_example' # String | 

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
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_export

> <AiPromptBundle> ai_prompts_export

Export

Builds a self-contained, versioned bundle of every saved prompt and folder, ready for `import-bundle`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-export/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new

begin
  # Export
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
  # Export
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_get_by_id

> <AiPrompt> ai_prompts_get_by_id(id)

Get by id

Returns one saved prompt, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-by-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
id = 'id_example' # String | The saved prompt identifier.

begin
  # Get by id
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
  # Get by id
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_get_folder_by_id

> <AiPromptFolder> ai_prompts_get_folder_by_id(id)

Get folder by id

Returns one prompt folder, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-get-folder-by-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
id = 'id_example' # String | The prompt folder identifier.

begin
  # Get folder by id
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
  # Get folder by id
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_import_bundle

> <AiImportResult> ai_prompts_import_bundle(ai_prompts_import_bundle_request)

Import bundle

Restores a prompt bundle. `replace` wipes the current prompts and folders before writing the bundle, `merge` writes the bundle on top of what is already there; both validate the folder references inside the bundle before any write, so a corrupt bundle is rejected whole.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-import-bundle/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_import_bundle_request = DocspaceApiSdk::AiPromptsImportBundleRequest.new({bundle: DocspaceApiSdk::AiPromptBundle.new({version: 1, folders: [DocspaceApiSdk::AiPromptFolder.new({id: 'id_example', name: 'name_example', created_at: 3.56, updated_at: 3.56})], prompts: [DocspaceApiSdk::AiPrompt.new({id: 'id_example', name: 'name_example', text: 'text_example', created_at: 3.56, updated_at: 3.56})]})}) # AiPromptsImportBundleRequest | 

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_list

> <Array<AiPrompt>> ai_prompts_list(opts)

List

Lists saved prompts. Scope the answer to one folder, ask for the root-level prompts only, or omit the folder to get every prompt newest first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
opts = {
  folder_id: 'folder_id_example' # String | The prompt folder identifier. Omit to list the prompts that sit outside any folder.
}

begin
  # List
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
  # List
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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_list_folders

> <Array<AiPromptFolder>> ai_prompts_list_folders

List folders

Lists the prompt folders, newest first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-list-folders/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_prompts_move

> <AiPromptMutationResult> ai_prompts_move(ai_prompts_move_request)

Move

Moves a saved prompt into another folder, or to the root. The name is re-validated in the target folder, so the move fails when a prompt of that name is already there.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-move/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_move_request = DocspaceApiSdk::AiPromptsMoveRequest.new({id: 'id_example', folder_id: 'folder_id_example'}) # AiPromptsMoveRequest | 

begin
  # Move
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
  # Move
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_rename_folder

> <AiFolderMutationResult> ai_prompts_rename_folder(ai_prompts_rename_folder_request)

Rename folder

Renames a prompt folder, validating the new name against the existing folders.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-rename-folder/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_prompts_update

> <AiPromptMutationResult> ai_prompts_update(ai_prompts_update_request)

Update

Updates a saved prompt. The name and the folder reference are re-validated whenever either of them changes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-prompts-update/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PromptsApi.new
ai_prompts_update_request = DocspaceApiSdk::AiPromptsUpdateRequest.new({id: 'id_example', updates: DocspaceApiSdk::AiPromptsUpdateRequestUpdates.new}) # AiPromptsUpdateRequest | 

begin
  # Update
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
  # Update
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

