# DocspaceApiSdk::Logo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original** | **String** | The original logo. |  |
| **large** | **String** | The large logo. |  |
| **medium** | **String** | The medium logo. |  |
| **small** | **String** | The small logo. |  |
| **color** | **String** | The logo color. | [optional] |
| **cover** | [**LogoCover**](LogoCover.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Logo.new(
  original: https://portal.example.com/logo/original.png,
  large: https://portal.example.com/logo/large.png,
  medium: https://portal.example.com/logo/medium.png,
  small: https://portal.example.com/logo/small.png,
  color: #4781D1,
  cover: null
)
```
