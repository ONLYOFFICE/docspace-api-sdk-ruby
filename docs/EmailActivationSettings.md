# DocspaceApiSdk::EmailActivationSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show** | **Boolean** | Specifies whether the email activation settings are shown or hidden. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmailActivationSettings.new(
  show: true,
  last_modified: 1990-01-01T00:00Z
)
```
