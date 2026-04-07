# DocspaceApiSdk::PeoplePhotosApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_photo_thumbnails**](PeoplePhotosApi.md#create_member_photo_thumbnails) | **POST** /api/2.0/people/{userid}/photo/thumbnails | Create photo thumbnails |
| [**delete_member_photo**](PeoplePhotosApi.md#delete_member_photo) | **DELETE** /api/2.0/people/{userid}/photo | Delete a user photo |
| [**get_member_photo**](PeoplePhotosApi.md#get_member_photo) | **GET** /api/2.0/people/{userid}/photo | Get a user photo |
| [**update_member_photo**](PeoplePhotosApi.md#update_member_photo) | **PUT** /api/2.0/people/{userid}/photo | Update a user photo |
| [**upload_member_photo**](PeoplePhotosApi.md#upload_member_photo) | **POST** /api/2.0/people/{userid}/photo | Upload a user photo |


## create_member_photo_thumbnails

> <ThumbnailsDataWrapper> create_member_photo_thumbnails(userid, thumbnails_request)

Create photo thumbnails

Creates the user photo thumbnails by coordinates of the original image specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-member-photo-thumbnails/).

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

api_instance = DocspaceApiSdk::People::PhotosApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
thumbnails_request = DocspaceApiSdk::ThumbnailsRequest.new # ThumbnailsRequest | The thumbnail request.

begin
  # Create photo thumbnails
  result = api_instance.create_member_photo_thumbnails(userid, thumbnails_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->create_member_photo_thumbnails: #{e}"
end
```

#### Using the create_member_photo_thumbnails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThumbnailsDataWrapper>, Integer, Hash)> create_member_photo_thumbnails_with_http_info(userid, thumbnails_request)

```ruby
begin
  # Create photo thumbnails
  data, status_code, headers = api_instance.create_member_photo_thumbnails_with_http_info(userid, thumbnails_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThumbnailsDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->create_member_photo_thumbnails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **thumbnails_request** | [**ThumbnailsRequest**](ThumbnailsRequest.md) | The thumbnail request. |  |

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_member_photo

> <ThumbnailsDataWrapper> delete_member_photo(userid)

Delete a user photo

Deletes a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-member-photo/).

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

api_instance = DocspaceApiSdk::People::PhotosApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Delete a user photo
  result = api_instance.delete_member_photo(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->delete_member_photo: #{e}"
end
```

#### Using the delete_member_photo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThumbnailsDataWrapper>, Integer, Hash)> delete_member_photo_with_http_info(userid)

```ruby
begin
  # Delete a user photo
  data, status_code, headers = api_instance.delete_member_photo_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThumbnailsDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->delete_member_photo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_member_photo

> <ThumbnailsDataWrapper> get_member_photo(userid)

Get a user photo

Returns a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-member-photo/).

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

api_instance = DocspaceApiSdk::People::PhotosApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Get a user photo
  result = api_instance.get_member_photo(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->get_member_photo: #{e}"
end
```

#### Using the get_member_photo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThumbnailsDataWrapper>, Integer, Hash)> get_member_photo_with_http_info(userid)

```ruby
begin
  # Get a user photo
  data, status_code, headers = api_instance.get_member_photo_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThumbnailsDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->get_member_photo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_member_photo

> <ThumbnailsDataWrapper> update_member_photo(userid, update_photo_member_request)

Update a user photo

Updates a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-member-photo/).

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

api_instance = DocspaceApiSdk::People::PhotosApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
update_photo_member_request = DocspaceApiSdk::UpdatePhotoMemberRequest.new # UpdatePhotoMemberRequest | The request parameters for updating a photo.

begin
  # Update a user photo
  result = api_instance.update_member_photo(userid, update_photo_member_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->update_member_photo: #{e}"
end
```

#### Using the update_member_photo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThumbnailsDataWrapper>, Integer, Hash)> update_member_photo_with_http_info(userid, update_photo_member_request)

```ruby
begin
  # Update a user photo
  data, status_code, headers = api_instance.update_member_photo_with_http_info(userid, update_photo_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThumbnailsDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->update_member_photo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **update_photo_member_request** | [**UpdatePhotoMemberRequest**](UpdatePhotoMemberRequest.md) | The request parameters for updating a photo. |  |

### Return type

[**ThumbnailsDataWrapper**](ThumbnailsDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_member_photo

> <FileUploadResultWrapper> upload_member_photo(userid, file, opts)

Upload a user photo

Uploads a photo of the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-member-photo/).

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

api_instance = DocspaceApiSdk::People::PhotosApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
file = File.new('/path/to/some/file') # File | The image data.
opts = {
  autosave: true # Boolean | Specifies whether to autosave a photo or not.
}

begin
  # Upload a user photo
  result = api_instance.upload_member_photo(userid, file, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->upload_member_photo: #{e}"
end
```

#### Using the upload_member_photo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadResultWrapper>, Integer, Hash)> upload_member_photo_with_http_info(userid, file, opts)

```ruby
begin
  # Upload a user photo
  data, status_code, headers = api_instance.upload_member_photo_with_http_info(userid, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PhotosApi->upload_member_photo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **file** | **File** | The image data. |  |
| **autosave** | **Boolean** | Specifies whether to autosave a photo or not. | [optional] |

### Return type

[**FileUploadResultWrapper**](FileUploadResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

