# DocspaceApiSdk::UpdateWebhooksConfigRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The label the subscription is listed under. It is for the administrator reading the list and is never sent to  the target; it does not have to be unique. |  |
| **uri** | **String** | The address the portal posts the event payload to. It has to be an absolute `http` or `https` address outside  the installation own network, and it is probed before anything is stored: it must answer a HEAD request with  a success code, and a redirect does not count as one. |  |
| **secret_key** | **String** | The shared secret the payload signature is computed with, so the receiver can tell a genuine call from a  forged one. It has to satisfy the portal password rules published by  `GET api/2.0/settings/security/password`, and it is never echoed back by any operation. On an update an empty  value keeps the secret already stored. | [optional] |
| **enabled** | **Boolean** | Whether the subscription delivers at all. While it is off the matching events are dropped rather than queued,  so nothing from that period arrives once it is switched on again. | [optional] |
| **ssl** | **Boolean** | Whether the target certificate is verified. Setting it demands an `https` target with a valid certificate;  leaving it off delivers without checking the certificate at all. | [optional] |
| **triggers** | [**WebhookTrigger**](WebhookTrigger.md) | The events the subscription listens for, as a bitmask combining the flags; 0 subscribes to all of them. Take  the flags the caller role is allowed to use from `GET api/2.0/settings/webhook/triggers`, since a flag beyond  that set is refused with 400. A subscription still only fires for events its creator may see. | [optional] |
| **target_id** | **String** | The single entity the subscription is narrowed to, by its identifier - a room or a file, for instance.  Leaving it out delivers events about every entity the subscribed triggers cover. | [optional] |
| **id** | **Integer** | The subscription to act on, by the `id` that `GET api/2.0/settings/webhook` reports. It travels in the body  rather than in the path, and an id that exists in no portal subscription answers 404. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateWebhooksConfigRequestsDto.new(
  name: Production Webhook,
  uri: https://example.com/webhook,
  secret_key: my-secret-key-123,
  enabled: true,
  ssl: true,
  triggers: null,
  target_id: 00000000-0000-0000-0000-000000000001,
  id: 1
)
```
