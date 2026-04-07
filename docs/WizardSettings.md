# DocspaceApiSdk::WizardSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **completed** | **Boolean** | Specifies if the Wizard settings are completed or not | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WizardSettings.new(
  completed: true,
  last_modified: 1990-01-01T00:00Z
)
```
