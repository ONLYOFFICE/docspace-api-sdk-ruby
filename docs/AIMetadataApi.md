# DocspaceApiSdk::AIMetadataApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_meta_fill**](AIMetadataApi.md#ai_meta_fill) | **POST** /api/2.0/ai/meta/fill | Fill metadata values |
| [**ai_meta_generate**](AIMetadataApi.md#ai_meta_generate) | **POST** /api/2.0/ai/meta/generate | Generate metadata fields |


## ai_meta_fill

> <AiMetaFill200Response> ai_meta_fill(ai_meta_fill_request)

Fill metadata values

Fills the metadata of one file from its text and writes the result. `kind` names the entry's table and `id` its integer identifier; only `file` is accepted for now, a folder or a room answers 400 until it is settled whether their metadata should describe the entry itself or its files; `prompt` is an optional note for the model on what to pay attention to, passed as a hint, never as an instruction; `overwrite` (default false) also replaces the fields that already carry a value, otherwise only the empty ones are filled and the rest are reported as `already_set`; `dryRun` (default true) resolves the values but writes nothing, so the caller shows them for confirmation and saves the accepted ones itself; only an explicit `dryRun: false` writes, and it is meant for a caller that has already collected the user's confirmation. The fields are the entry's own: every field of the visible templates it carries, assigned or inherited through a cascade - a hidden template is skipped as the UI and the search skip it - and its existing custom fields - no field is created here, use `POST api/2.0/ai/meta/generate` and the Files metadata API for that. The text is the file itself, converted to plain text under the caller's rights and cut to the same budgets as the generate route. The model bound to `GenerateMeta` (`Default` when that slot is empty) runs once, without tools, and is told to answer null for a value the text does not state. Each value is then checked the way the client's info panel checks a typed value - an integer for a number, a calendar date for a date, one of the field's own options for a choice - and the ones that pass are written with `PUT api/2.0/files/metadata/{kind}/{id}/values` and `.../customFields`, so the caller needs the rights those routes need; a write the portal refuses is reported per field as `write_failed`, and the call fails with the portal's status only when nothing was written at all. The answer carries `dryRun` as it was applied, the entry's metadata after the write (or as it stands, with `dryRun`), the values written or proposed, the fields left empty with the reason for each, and the documents that were read.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-meta-fill/).

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

api_instance = DocspaceApiSdk::AI::MetadataApi.new
ai_meta_fill_request = DocspaceApiSdk::AiMetaFillRequest.new({kind: 'file', id: DocspaceApiSdk::AiMetaGenerateRequestId.new}) # AiMetaFillRequest | 

begin
  # Fill metadata values
  result = api_instance.ai_meta_fill(ai_meta_fill_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MetadataApi->ai_meta_fill: #{e}"
end
```

#### Using the ai_meta_fill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiMetaFill200Response>, Integer, Hash)> ai_meta_fill_with_http_info(ai_meta_fill_request)

```ruby
begin
  # Fill metadata values
  data, status_code, headers = api_instance.ai_meta_fill_with_http_info(ai_meta_fill_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiMetaFill200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MetadataApi->ai_meta_fill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_meta_fill_request** | [**AiMetaFillRequest**](AiMetaFillRequest.md) |  |  |

### Return type

[**AiMetaFill200Response**](AiMetaFill200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_meta_generate

> <AiMetaGenerate200Response> ai_meta_generate(ai_meta_generate_request)

Generate metadata fields

Reads one file as text and asks the model bound to the `GenerateMeta` action - the `Default` slot when that action has no profile of its own - which custom metadata fields describe it, and what their values are. `kind` names the entry's table and `id` its integer identifier, the same way as `POST api/2.0/ai/meta/fill`; only `file` is accepted for now, a folder or a room answers 400 until it is settled whether their metadata should describe the entry itself or its files; `prompt` is an optional note on the kind of fields the caller is interested in, which is passed to the model as a hint, never as an instruction. The text is the file itself, converted to plain text through the portal's own conversion (word-processing and presentation formats, pdf included, to txt; spreadsheets to csv), under the caller's rights, so a file the caller cannot read is skipped as `forbidden` rather than failing the call. Each document is cut at 40 000 characters and the whole set at 240 000, which `sources[].truncated` reports. The model runs once, without tools, and the answer is validated: field names are trimmed, deduplicated regardless of case and capped at 50, the portal's own limit for custom fields on one entry; each field carries the value the text supports as a string, or `null` when the text does not state one, since a custom field on the portal is text and cannot be saved empty. Nothing is written: the caller decides which fields to create and saves them through the Files metadata API.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-meta-generate/).

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

api_instance = DocspaceApiSdk::AI::MetadataApi.new
ai_meta_generate_request = DocspaceApiSdk::AiMetaGenerateRequest.new({kind: 'file', id: DocspaceApiSdk::AiMetaGenerateRequestId.new}) # AiMetaGenerateRequest | 

begin
  # Generate metadata fields
  result = api_instance.ai_meta_generate(ai_meta_generate_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MetadataApi->ai_meta_generate: #{e}"
end
```

#### Using the ai_meta_generate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiMetaGenerate200Response>, Integer, Hash)> ai_meta_generate_with_http_info(ai_meta_generate_request)

```ruby
begin
  # Generate metadata fields
  data, status_code, headers = api_instance.ai_meta_generate_with_http_info(ai_meta_generate_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiMetaGenerate200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MetadataApi->ai_meta_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_meta_generate_request** | [**AiMetaGenerateRequest**](AiMetaGenerateRequest.md) |  |  |

### Return type

[**AiMetaGenerate200Response**](AiMetaGenerate200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

