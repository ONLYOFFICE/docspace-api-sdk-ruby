# DocspaceWebhooksSdk::ContactPayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The kind of contact as stored in the profile, such as &#x60;mail&#x60;, &#x60;phone&#x60; or &#x60;facebook&#x60;. | [optional] |
| **value** | **String** | The contact itself: an address, a number or a profile link, as the user entered it. | [optional] |

## Example

```ruby
require 'docspace-webhooks-sdk'

instance = DocspaceWebhooksSdk::ContactPayload.new(
  type: mail,
  value: mike.zanyatski@example.com
)
```

