# DocspaceApiSdk::DocsCloudUsersLimit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edit** | **Integer** | The maximum number of users who can edit documents. | [optional] |
| **view** | **Integer** | The maximum number of users who can view documents. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudUsersLimit.new(
  edit: 100,
  view: 100
)
```
