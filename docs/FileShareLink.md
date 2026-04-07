# DocspaceApiSdk::FileShareLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the shared link. | [optional] |
| **title** | **String** | The title of the shared content. | [optional] |
| **share_link** | **String** | The URL for accessing the shared content. | [optional] |
| **expiration_date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **link_type** | [**LinkType**](LinkType.md) |  | [optional] |
| **password** | **String** | The password protection for accessing the shared content. | [optional] |
| **deny_download** | **Boolean** | Indicates whether downloading of the shared content is prohibited. | [optional] |
| **is_expired** | **Boolean** | Indicates whether the shared link has expired. | [optional] |
| **primary** | **Boolean** | Indicates whether this is the primary shared link. | [optional] |
| **internal** | **Boolean** | Indicates whether the link is for the internal sharing only. | [optional] |
| **request_token** | **String** | The token for validating access requests. | [optional] |
| **max_use_count** | **Integer** | The maximum number of times the invitation link can be used. | [optional] |
| **current_use_count** | **Integer** | The current number of times the invitation link has been used. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileShareLink.new(
  id: 00000000-0000-0000-0000-000000000000,
  title: Shared Document,
  share_link: http://localhost/share/abc123,
  expiration_date: null,
  link_type: null,
  password: password123,
  deny_download: false,
  is_expired: false,
  primary: true,
  internal: false,
  request_token: token-abc-123,
  max_use_count: 10,
  current_use_count: 5
)
```
