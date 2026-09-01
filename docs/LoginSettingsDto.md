# DocspaceApiSdk::LoginSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attempt_count** | **Integer** | The maximum number of consecutive failed login attempts allowed before triggering account suspension. |  |
| **block_time** | **Integer** | The duration (in minutes) for which an account remains suspended after exceeding maximum login attempts. |  |
| **check_period** | **Integer** | The maximum time (in seconds) allowed for server to process and respond to login requests. |  |
| **is_default** | **Boolean** | Specifies whether the login settings are default or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LoginSettingsDto.new(
  attempt_count: 5,
  block_time: 15,
  check_period: 60,
  is_default: false
)
```
