# DocspaceApiSdk::AuthServiceRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the authorization service. | [optional] |
| **title** | **String** | The user-friendly display title of the authorization service. | [optional] |
| **description** | **String** | The brief description of the authorization service. | [optional] |
| **instruction** | **String** | The detailed instructions for configuring or using the authorization service. | [optional] |
| **can_set** | **Boolean** | Specifies whether the authorization service can be configured by the user. | [optional] |
| **paid** | **Boolean** | Specifies whether the authorization service is paid or not. | [optional] |
| **props** | [**Array&lt;AuthKey&gt;**](AuthKey.md) | The collection of authorization keys associated with the authorization service. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthServiceRequestsDto.new(
  name: google,
  title: Google,
  description: Google OAuth authentication,
  instruction: Configure your Google OAuth credentials,
  can_set: true,
  paid: false,
  props: [{name=key, value=value}]
)
```
