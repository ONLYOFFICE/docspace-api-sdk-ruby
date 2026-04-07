# DocspaceApiSdk::FolderLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The folder link ID. | [optional] |
| **access** | [**FileShare**](FileShare.md) |  | [optional] |
| **expiration_date** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **title** | **String** | The link name. | [optional] |
| **password** | **String** | The link password. | [optional] |
| **deny_download** | **Boolean** | Specifies if downloading the file from the link is disabled or not. | [optional] |
| **internal** | **Boolean** | The link scope, whether it is internal or not. | [optional] |
| **primary** | **Boolean** | Specifies whether the folder link is primary or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FolderLinkRequest.new(
  link_id: 00000000-0000-0000-0000-000000000000,
  access: null,
  expiration_date: null,
  title: My Document,
  password: p@ssw0rd,
  deny_download: false,
  internal: false,
  primary: true
)
```
