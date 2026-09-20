# DocspaceApiSdk::SettingsStorageApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_backup_storages**](SettingsStorageApi.md#get_all_backup_storages) | **GET** /api/2.0/settings/storage/backup | Get the backup storages |
| [**get_all_cdn_storages**](SettingsStorageApi.md#get_all_cdn_storages) | **GET** /api/2.0/settings/storage/cdn | Get the CDN storages |
| [**get_all_storages**](SettingsStorageApi.md#get_all_storages) | **GET** /api/2.0/settings/storage | Get the portal storages |
| [**get_amazon_s3_regions**](SettingsStorageApi.md#get_amazon_s3_regions) | **GET** /api/2.0/settings/storage/s3/regions | Get the Amazon S3 regions |
| [**get_storage_progress**](SettingsStorageApi.md#get_storage_progress) | **GET** /api/2.0/settings/storage/progress | Get the storage migration progress |
| [**reset_cdn_to_default**](SettingsStorageApi.md#reset_cdn_to_default) | **DELETE** /api/2.0/settings/storage/cdn | Reset the CDN storage settings |
| [**reset_storage_to_default**](SettingsStorageApi.md#reset_storage_to_default) | **DELETE** /api/2.0/settings/storage | Reset the storage settings |
| [**update_cdn_storage**](SettingsStorageApi.md#update_cdn_storage) | **PUT** /api/2.0/settings/storage/cdn | Update the CDN storage |
| [**update_storage**](SettingsStorageApi.md#update_storage) | **PUT** /api/2.0/settings/storage | Switch the portal storage |


## get_all_backup_storages

> <StorageArrayWrapper> get_all_backup_storages(opts)

Get the backup storages

Returns the storages that can hold portal backups, with the one the saved backup schedule writes to marked as  `current` and its parameters filled in from that schedule; when no schedule is saved, or when the schedule  stores backups somewhere else than a third-party provider, none of the entries is current. Each entry has the  same shape as in `GET api/2.0/settings/storage`: identifier, title, the authentication keys the provider  expects, and `isSet` telling whether those keys are filled in on the server. Pass `dump=true` to read the  schedule of the whole server instead of the one of the current portal, which only makes sense on a server  installation. The caller needs the permission to edit portal settings, which in practice means the portal  owner or a DocSpace admin, and on an installation that is not a server one the call is also refused unless  backup is available there. Nothing is written and the call is safe to repeat. This operation says nothing  about where the portal data itself lives; the backup schedule is configured through the backup API, and the  storage of the documents through `PUT api/2.0/settings/storage`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-backup-storages/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new
opts = {
  dump: true # Boolean | Whether the schedule of the whole server is read instead of the one of the current portal. It only changes  which schedule marks an entry as `current`; the list of storages itself is the same either way, and the flag  makes sense only on a self-hosted installation.
}

begin
  # Get the backup storages
  result = api_instance.get_all_backup_storages(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_backup_storages: #{e}"
end
```

#### Using the get_all_backup_storages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageArrayWrapper>, Integer, Hash)> get_all_backup_storages_with_http_info(opts)

```ruby
begin
  # Get the backup storages
  data, status_code, headers = api_instance.get_all_backup_storages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_backup_storages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Whether the schedule of the whole server is read instead of the one of the current portal. It only changes  which schedule marks an entry as `current`; the list of storages itself is the same either way, and the flag  makes sense only on a self-hosted installation. | [optional] |

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_cdn_storages

> <StorageArrayWrapper> get_all_cdn_storages

Get the CDN storages

Returns the storages that can serve the static content of the portal through a content delivery network, which  is the subset of the providers of `GET api/2.0/settings/storage` that offer a CDN of their own. The entries  have the same shape as in the storage listing: identifier and title, the authentication keys the provider  expects, `isSet` telling whether those keys are filled in on the server, and `current` marking the CDN the  portal uses now. Keys of the current entry come from the saved CDN settings and keys of the others from the  provider configuration. An empty list means the build ships no CDN-capable provider, and a list where nothing  is current means the portal serves its static content itself. The caller needs the permission to edit portal  settings, which in practice means the portal owner or a DocSpace admin, on a server installation with an  unrestricted access space. Nothing is written and the call is safe to repeat. Use  `PUT api/2.0/settings/storage/cdn` to select a CDN and `DELETE api/2.0/settings/storage/cdn` to stop using  one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-cdn-storages/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get the CDN storages
  result = api_instance.get_all_cdn_storages
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_cdn_storages: #{e}"
end
```

#### Using the get_all_cdn_storages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageArrayWrapper>, Integer, Hash)> get_all_cdn_storages_with_http_info

```ruby
begin
  # Get the CDN storages
  data, status_code, headers = api_instance.get_all_cdn_storages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_cdn_storages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_storages

> <StorageArrayWrapper> get_all_storages

Get the portal storages

Returns the third-party storages the installation can keep portal data in, the providers the build ships with,  such as Amazon S3, Google Cloud Storage or Rackspace. The built-in local storage is not among them: when none  of the entries is `current`, the portal data sits in the local storage. Each entry carries the storage  identifier and title, the authentication keys the provider expects, `isSet` telling whether those keys are  already filled in on the server, and `current` marking the one the portal uses right now. Keys of the current  storage are read from the saved settings, keys of the others from the provider configuration, so a value that  was never configured comes back empty. The caller needs the permission to edit portal settings, which in  practice means the portal owner or a DocSpace admin, and the installation has to be a server one whose access  space is not restricted; otherwise the call is refused with 403. Nothing is written and the call is safe to  repeat. Use `PUT api/2.0/settings/storage` to switch the storage, `DELETE api/2.0/settings/storage` to go back  to the local one, and `GET api/2.0/settings/storage/cdn` or `GET api/2.0/settings/storage/backup` for the CDN  and backup targets.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-storages/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get the portal storages
  result = api_instance.get_all_storages
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_storages: #{e}"
end
```

#### Using the get_all_storages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageArrayWrapper>, Integer, Hash)> get_all_storages_with_http_info

```ruby
begin
  # Get the portal storages
  data, status_code, headers = api_instance.get_all_storages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_storages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_amazon_s3_regions

> <AmazonS3RegionArrayWrapper> get_amazon_s3_regions

Get the Amazon S3 regions

Returns the Amazon regions the server knows about, each with its system name such as `eu-central-1`, the  display name to show a user, and the partition details the region belongs to: partition name, DNS suffix, the  pattern its region names match and the template its host names are built from. This is static reference data  compiled into the server rather than portal configuration: nothing is read from the settings, nothing is  written, the answer is the same for every portal and changes only when the server is updated, so it can be  cached by the caller. Use the system name of an entry as the region value in `props` when configuring an  Amazon S3 storage with `PUT api/2.0/settings/storage`, `PUT api/2.0/settings/storage/cdn` or a backup  schedule, and prefer picking a value from here over typing one, because a region the server does not know  cannot be reached. Any authenticated caller may read the list, no portal-settings permission is asked for, and  the result is neither paginated nor filtered.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-amazon-s3-regions/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get the Amazon S3 regions
  result = api_instance.get_amazon_s3_regions
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_amazon_s3_regions: #{e}"
end
```

#### Using the get_amazon_s3_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AmazonS3RegionArrayWrapper>, Integer, Hash)> get_amazon_s3_regions_with_http_info

```ruby
begin
  # Get the Amazon S3 regions
  data, status_code, headers = api_instance.get_amazon_s3_regions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AmazonS3RegionArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_amazon_s3_regions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AmazonS3RegionArrayWrapper**](AmazonS3RegionArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storage_progress

> <DoubleWrapper> get_storage_progress

Get the storage migration progress

Returns how far the current portal has got in moving its data to another storage, as a percentage from 0 to  100. The migration itself is started by `PUT api/2.0/settings/storage` or `DELETE api/2.0/settings/storage`,  which put the portal into the migrating state; poll this operation until the value reaches 100, then the  portal is served from the new storage. A value of -1 means storage migration is not offered on this  installation, which is the case for every portal that is not a server one. Ask for the progress only once a  migration has actually been started: for a portal whose migration the server does not remember, the call fails  instead of answering with a zero. The response carries the percentage only, without the error flag the  migration service reports internally, so a value that stops advancing is a reason to check the portal state  with `GET api/2.0/portal` rather than proof of progress. The caller needs the permission to edit portal  settings, which in practice means the portal owner or a DocSpace admin, and the call is accepted even when the  portal payment has lapsed. Nothing is written and the call is safe to repeat.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-progress/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get the storage migration progress
  result = api_instance.get_storage_progress
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_storage_progress: #{e}"
end
```

#### Using the get_storage_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DoubleWrapper>, Integer, Hash)> get_storage_progress_with_http_info

```ruby
begin
  # Get the storage migration progress
  data, status_code, headers = api_instance.get_storage_progress_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DoubleWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_storage_progress_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DoubleWrapper**](DoubleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_cdn_to_default

> reset_cdn_to_default

Reset the CDN storage settings

Drops the CDN configuration of the current portal, module and saved credentials alike, so that the static  content is served by the portal itself again. Nothing is uploaded or migrated, no state change is queued and  the call gives back no body: only the settings are cleared, and files already copied to the content delivery  network are left where they are, to be removed in the provider's own console if that is wanted. The change  takes effect for links built after it, so a page that is already open may keep pointing at the CDN until it is  reloaded. Repeating the call is harmless, because clearing an empty configuration does nothing. The caller  needs the permission to edit portal settings, which in practice means the portal owner or a DocSpace admin, on  a server installation with an unrestricted access space. Use `GET api/2.0/settings/storage/cdn` to see what is  configured now and `PUT api/2.0/settings/storage/cdn` to select a CDN again; the portal storage of the  documents is untouched by this operation and is reset with `DELETE api/2.0/settings/storage` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-cdn-to-default/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Reset the CDN storage settings
  api_instance.reset_cdn_to_default
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_cdn_to_default: #{e}"
end
```

#### Using the reset_cdn_to_default_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_cdn_to_default_with_http_info

```ruby
begin
  # Reset the CDN storage settings
  data, status_code, headers = api_instance.reset_cdn_to_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_cdn_to_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_storage_to_default

> reset_storage_to_default

Reset the storage settings

Drops the third-party storage configuration of the current portal, module and saved credentials alike, and  starts an asynchronous migration of the portal data back into the built-in local storage. The portal moves  into the migrating state and stays unavailable until the transfer ends, so follow it with  `GET api/2.0/settings/storage/progress`; the call itself returns as soon as the migration has been handed to  the storage service and gives back no body. The caller needs the permission to edit portal settings, which in  practice means the portal owner or a DocSpace admin, on a server installation with an unrestricted access  space. This is a mutating and slow operation rather than a destructive one: documents are copied back rather  than deleted, but the credentials of the previous storage are gone from the settings and have to be sent again  with `PUT api/2.0/settings/storage` to switch back. Repeating the call while a migration is running starts  another one, so poll instead. Resetting the storage is also the step that makes  `POST api/2.0/settings/encryption/start` possible, since encryption only covers the local storage.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-storage-to-default/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Reset the storage settings
  api_instance.reset_storage_to_default
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_storage_to_default: #{e}"
end
```

#### Using the reset_storage_to_default_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_storage_to_default_with_http_info

```ruby
begin
  # Reset the storage settings
  data, status_code, headers = api_instance.reset_storage_to_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_storage_to_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cdn_storage

> <CdnStorageSettingsWrapper> update_cdn_storage(opts)

Update the CDN storage

Selects the content delivery network that serves the static content of the portal and saves the credentials it  needs: `module` is the identifier of one of the entries of `GET api/2.0/settings/storage/cdn`, and `props`  carries that provider's authentication keys as name and value pairs. The provider has to be available on the  server, which the `isSet` flag of the listing tells, otherwise the request is rejected as invalid. Sending the  module the portal already uses changes nothing and returns the saved settings as they are. Any other module is  saved and the upload of the static content is handed to the storage service; the settings come back only when  that hand-over succeeds, a failure being reported as a server error. Unlike the portal storage this has no  progress operation, so there is nothing to poll: the content appears on the CDN once the service has copied  it. Only static content is affected here, never documents; for those use `PUT api/2.0/settings/storage`. The  caller needs the permission to edit portal settings, which in practice means the portal owner or a DocSpace  admin, on a server installation with an unrestricted access space. The response is the stored CDN  configuration.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cdn-storage/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new
opts = {
  storage_requests_dto: DocspaceApiSdk::StorageRequestsDto.new({_module: 'default'}) # StorageRequestsDto | 
}

begin
  # Update the CDN storage
  result = api_instance.update_cdn_storage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_cdn_storage: #{e}"
end
```

#### Using the update_cdn_storage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdnStorageSettingsWrapper>, Integer, Hash)> update_cdn_storage_with_http_info(opts)

```ruby
begin
  # Update the CDN storage
  data, status_code, headers = api_instance.update_cdn_storage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdnStorageSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_cdn_storage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_requests_dto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] |

### Return type

[**CdnStorageSettingsWrapper**](CdnStorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_storage

> <StorageSettingsWrapper> update_storage(opts)

Switch the portal storage

Points the current portal at another storage and saves the credentials it needs: `module` is the identifier of  one of the storages listed by `GET api/2.0/settings/storage`, and `props` carries that provider's  authentication keys as name and value pairs, for example the bucket, region and access key of an Amazon S3  storage. The provider has to be available on the server, which the `isSet` flag of the listing tells,  otherwise the request is rejected as invalid. Sending the module the portal already uses changes nothing and  returns the saved settings as they are. Any other module starts an asynchronous migration of the portal data:  the portal moves into the migrating state and stays unavailable until the transfer ends, so follow it with  `GET api/2.0/settings/storage/progress` and do not send a second switch while it runs. The caller needs the  permission to edit portal settings, which in practice means the portal owner or a DocSpace admin, on a server  installation with an unrestricted access space. The response is the stored configuration, module and  properties, not the state of the migration. To return to the built-in local storage call  `DELETE api/2.0/settings/storage`, and for the CDN use `PUT api/2.0/settings/storage/cdn`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-storage/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new
opts = {
  storage_requests_dto: DocspaceApiSdk::StorageRequestsDto.new({_module: 'default'}) # StorageRequestsDto | 
}

begin
  # Switch the portal storage
  result = api_instance.update_storage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_storage: #{e}"
end
```

#### Using the update_storage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageSettingsWrapper>, Integer, Hash)> update_storage_with_http_info(opts)

```ruby
begin
  # Switch the portal storage
  data, status_code, headers = api_instance.update_storage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_storage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_requests_dto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] |

### Return type

[**StorageSettingsWrapper**](StorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

