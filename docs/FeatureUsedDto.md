# DocspaceApiSdk::FeatureUsedDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Object** |  |  |
| **title** | **String** | The same figure as a sentence in the portal language, ready to print. It is empty when this build ships no  wording for the feature. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FeatureUsedDto.new(
  value: null,
  title: 50 GB used
)
```
