# DocspaceApiSdk::IpRestrictionsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip_restrictions** | [**Array&lt;IpRestrictionBase&gt;**](IpRestrictionBase.md) | The list of IP restriction addresses. |  |
| **enable** | **Boolean** | Specifies whether to enable IP restrictions or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::IpRestrictionsDto.new(
  ip_restrictions: [{"ip":"192.0.2.1","forAdmin":false}],
  enable: true
)
```
