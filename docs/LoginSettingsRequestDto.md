# DocspaceApiSdk::LoginSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attempt_count** | **Integer** | The maximum number of consecutive failed login attempts allowed before triggering account suspension. | [optional] |
| **block_time** | **Integer** | The duration (in minutes) for which an account remains suspended after exceeding maximum login attempts. | [optional] |
| **check_period** | **Integer** | The maximum time (in seconds) allowed for server to process and respond to login requests. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LoginSettingsRequestDto.new(
  attempt_count: 1,
  block_time: 1,
  check_period: 1
)
```
