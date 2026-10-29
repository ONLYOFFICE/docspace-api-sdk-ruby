# DocspaceWebhooksSdk::WebhookConfigInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The subscription ID. | [optional] |
| **name** | **String** | The subscription name given by its creator. | [optional] |
| **url** | **String** | The URL the delivery is posted to. | [optional] |
| **triggers** | **Array&lt;String&gt;** | The subscribed events, or [\&quot;*\&quot;] for the catch-all. | [optional] |
| **target** | [**WebhookTargetInfo**](WebhookTargetInfo.md) |  | [optional] |
| **last_failure_on** | **Time** | When the last delivery to this subscription failed, in UTC. Sent only on an automatic retry, together with &#x60;retryCount&#x60;; absent on a first attempt, the first attempt of a manual retry included. | [optional] |
| **last_failure_content** | **String** | What the receiver answered, or the network error, when the last delivery to this subscription failed. Sent only on an automatic retry, like &#x60;lastFailureOn&#x60;. | [optional] |
| **last_success_on** | **Time** | When the last delivery to this subscription succeeded, in UTC. Sent only on an automatic retry, like &#x60;lastFailureOn&#x60;; absent there too when no delivery has succeeded yet. | [optional] |
| **retry_count** | **Integer** | How many times this delivery has been retried automatically. Omitted on the first attempt (0); present from attempt 2. A manual retry is a new delivery and starts again from 0, so its first attempt carries no &#x60;retryCount&#x60;, &#x60;lastFailureOn&#x60; or &#x60;lastSuccessOn&#x60;; only the repeated &#x60;event.id&#x60; shows that the event was sent before. | [optional] |
| **retry_on** | **Time** | When this retry was sent, in UTC, cut to whole seconds. Sent only on an automatic retry, like &#x60;lastFailureOn&#x60;. | [optional] |

## Example

```ruby
require 'docspace-webhooks-sdk'

instance = DocspaceWebhooksSdk::WebhookConfigInfo.new(
  id: 1,
  name: Room activity,
  url: https://example.com/hooks/docspace,
  triggers: [file.created, file.updated],
  target: null,
  last_failure_on: 2024-01-15T10:29:00Z,
  last_failure_content: 502 Bad Gateway,
  last_success_on: 2024-01-15T09:12:00Z,
  retry_count: 2,
  retry_on: 2024-01-15T10:31:00Z
)
```

