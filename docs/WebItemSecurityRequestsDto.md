# DocspaceApiSdk::WebItemSecurityRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The module ID. |  |
| **enabled** | **Boolean** | Controls whether the security restrictions are enforced for this module. | [optional] |
| **subjects** | **Array&lt;String&gt;** | The collection of user and group identifiers granted access to the module. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WebItemSecurityRequestsDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  enabled: true,
  subjects: ["00000000-0000-0000-0000-000000000000"]
)
```
