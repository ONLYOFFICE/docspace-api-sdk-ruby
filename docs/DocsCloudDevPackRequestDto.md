# DocspaceApiSdk::DocsCloudDevPackRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Integer** | The number of users to subscribe to DocsCloudDevPack for. It must be at least the number of users of  the currently purchased DocsCloud subscription, and at least the DocsCloudDevPack minimum configured  for the installation, which is 10 users by default; a smaller value is rejected with 400. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudDevPackRequestDto.new(
  quantity: 10
)
```
