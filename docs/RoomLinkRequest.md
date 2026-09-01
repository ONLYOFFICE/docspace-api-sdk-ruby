# DocspaceApiSdk::RoomLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The room link ID. | [optional] |
| **access** | [**FileShare**](FileShare.md) | The link sharing rights. | [optional] |
| **expiration_date** | **Time** | The link expiration date. | [optional] |
| **internal** | **Boolean** | The link scope, whether it is internal or not. | [optional] |
| **title** | **String** | The link name. | [optional] |
| **link_type** | [**LinkType**](LinkType.md) | The link type. | [optional] |
| **password** | **String** | The link password. | [optional] |
| **deny_download** | **Boolean** | Specifies if downloading the file from the link is disabled or not. | [optional] |
| **max_use_count** | **Integer** | The maximum number of times the invitation link can be used. | [optional] |
| **current_use_count** | **Integer** | The current number of times the invitation link has been used. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomLinkRequest.new(
  link_id: 00000000-0000-0000-0000-000000000000,
  access: null,
  expiration_date: 2026-12-31T23:59:59.0000000+00:00,
  internal: false,
  title: My Document,
  link_type: null,
  password: doc_key_123,
  deny_download: false,
  max_use_count: 25,
  current_use_count: 0
)
```
