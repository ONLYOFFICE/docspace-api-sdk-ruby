# DocspaceApiSdk::FileShareParams

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address. | [optional] |
| **share_to** | **String** | The ID of the user to whom the file will be shared. | [optional] |
| **access** | [**FileShare**](FileShare.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileShareParams.new(
  email: user@example.com,
  share_to: 00000000-0000-0000-0000-000000000000,
  access: null
)
```
