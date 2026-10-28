# DocspaceApiSdk::DocsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert_file**](DocsApi.md#convert_file) | **POST** /api/2.0/docs/converter | Convert a file |
| [**run_builder_script**](DocsApi.md#run_builder_script) | **POST** /api/2.0/docs/builder | Run a document builder script |


## convert_file

> <FileWrapper> convert_file(opts)

Convert a file

Converts a portal file into another format and saves the result as a new file, answering with that file. The  caller needs read access to a source that may be copied and the right to create files in `folderId`; without  `folderId` the result goes to the My documents section of the caller, so a guest, who has none, has to pass  it. A file in a private room or in a room with a watermark is not converted, as it would leave the room without  its protection, and no result is saved into such a room. `outputtype` is the only parameter a plain  conversion needs; the other fields are passed to the document service under its own names, while the source  format, name and cache key are taken from the file. The call is mutating and not idempotent: the source is kept,  and each call adds another file under a free name. It answers once the conversion is done, so a large file keeps  the request open. Only files stored in the portal itself are accepted. To convert while copying into another  folder, a third-party one included, use `POST api/2.0/files/file/{fileId}/copyas`; to convert into the portal's  own editable format beside the source, use `PUT api/2.0/files/file/{fileId}/checkconversion`. A missing or  unsupported `outputtype` is refused with 400, and so is a source the document service rejects: a wrong or  missing `password`, or a file too large to convert; retrying the same request will not help. Missing access or a  protected room is refused with 403 and an unknown file or folder with 404, both before any conversion starts. A  result that does not fit the storage quota of the portal, the room or the caller is refused with 402. A  conversion the document service fails is answered with 502: the service may be down or the file damaged; a retry  helps only in the first case.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/convert-file/).

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

api_instance = DocspaceApiSdk::Docs::DocsApi.new
opts = {
  convert_file_request_dto: DocspaceApiSdk::ConvertFileRequestDto.new({file_id: 1234, outputtype: 'pdf'}) # ConvertFileRequestDto | 
}

begin
  # Convert a file
  result = api_instance.convert_file(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Docs::DocsApi->convert_file: #{e}"
end
```

#### Using the convert_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> convert_file_with_http_info(opts)

```ruby
begin
  # Convert a file
  data, status_code, headers = api_instance.convert_file_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Docs::DocsApi->convert_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **convert_file_request_dto** | [**ConvertFileRequestDto**](ConvertFileRequestDto.md) |  | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## run_builder_script

> <FileOperationWrapper> run_builder_script(opts)

Run a document builder script

Queues a background run of a document builder script and answers with the operation just started. The script  names portal files by identifier - `builder.OpenFile(1234)` - where the document builder documentation writes  an address; only portal files can be opened, and none from a private room or a room with a watermark, nor is a  result saved into such a room. A script may call OpenFile and SaveFile at most 20 times each, counting every  call written in it. The caller needs edit access to every file the script opens, which may also be copied, and  to each file `outputs` replaces, which must not be locked or open in an editor, and the right to create files in  each folder a result is saved into. Each file the script saves goes where `outputs` says, keyed by the name  given to SaveFile: `fileId` stores it as a new version of that file, `folderId` as a new file there; an unlisted  file goes to `folderId` or to the folder of the opened file. Each entry of `outputs` names exactly one of  `fileId` and `folderId`; `title` goes only with `folderId`, since a replaced file keeps its title, and a result  stored over `fileId` has to be in that file's format. The call is not idempotent: each call is a new run. Poll  `GET api/2.0/files/fileops` with the returned `id` until the operation reports `finished`: `files` then lists  the saved files, a replaced one with its new version, including those saved before a failure, and `error` the  reason a failed build gave. A build that has not finished after 10 minutes is given up and reported as failed. A  caller runs one script at a time: a new request while an earlier one is queued or running is refused with 403,  so wait for `finished` before starting the next. For a plain format change use `POST api/2.0/docs/converter`.  What can be refused in advance fails at once with 400, 403 or 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/run-builder-script/).

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

api_instance = DocspaceApiSdk::Docs::DocsApi.new
opts = {
  run_builder_script_request_dto: DocspaceApiSdk::RunBuilderScriptRequestDto.new({script: 'builder.OpenFile("1234"); Api.GetDocument().GetElement(0).AddText(Argument.title); builder.SaveFile("docx", "result.docx"); builder.SaveFile("pdf", "result.pdf"); builder.CloseFile();'}) # RunBuilderScriptRequestDto | 
}

begin
  # Run a document builder script
  result = api_instance.run_builder_script(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Docs::DocsApi->run_builder_script: #{e}"
end
```

#### Using the run_builder_script_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationWrapper>, Integer, Hash)> run_builder_script_with_http_info(opts)

```ruby
begin
  # Run a document builder script
  data, status_code, headers = api_instance.run_builder_script_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Docs::DocsApi->run_builder_script_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_builder_script_request_dto** | [**RunBuilderScriptRequestDto**](RunBuilderScriptRequestDto.md) |  | [optional] |

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

