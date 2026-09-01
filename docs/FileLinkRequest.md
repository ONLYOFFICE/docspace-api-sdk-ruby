# DocspaceApiSdk::FileLinkRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_id** | **String** | The external link ID. | [optional] |
| **access** | [**FileShare**](FileShare.md) | The link sharing rights. | [optional] |
| **expiration_date** | **Time** | The link expiration date. | [optional] |
| **title** | **String** | The link name. | [optional] |
| **internal** | **Boolean** | The link scope, whether it is internal or not. | [optional] |
| **primary** | **Boolean** | Specifies whether the file link is primary or not. | [optional] |
| **deny_download** | **Boolean** | Specifies whether to deny downloading the file or not. | [optional] |
| **password** | **String** | Password for access via link. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileLinkRequest.new(
  link_id: 00000000-0000-0000-0000-000000000000,
  access: null,
  expiration_date: 2021-01-01T00:00:00Z,
  title: My Document,
  internal: false,
  primary: true,
  deny_download: false,
  password: p@ssw0rd
)
```
