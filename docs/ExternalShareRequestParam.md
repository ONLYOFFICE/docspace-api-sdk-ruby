# DocspaceApiSdk::ExternalShareRequestParam

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The password chosen by the member who shared the entry, spelled exactly as they typed it. It is compared  against the stored value and never returned back; a mismatch is reported through the answer's status instead  of an error. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalShareRequestParam.new(
  password: p@ssw0rd
)
```
