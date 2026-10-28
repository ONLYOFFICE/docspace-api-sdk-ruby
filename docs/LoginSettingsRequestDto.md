# DocspaceApiSdk::LoginSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attempt_count** | **Integer** | How many failed sign-in attempts inside one window are tolerated before the offender is blocked. Attempts are  counted per user name and client address together, so one member being blocked leaves the rest of the portal  signing in normally. | [optional] |
| **block_time** | **Integer** | How long, in seconds, a blocked user name and address pair stays refused. While the block lasts the sign-in  is refused even when the password is finally correct. | [optional] |
| **check_period** | **Integer** | The length, in seconds, of the rolling window the failed attempts are counted over. A wider window makes the  same `attemptCount` stricter, because failures further apart still add up. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LoginSettingsRequestDto.new(
  attempt_count: 1,
  block_time: 1,
  check_period: 1
)
```
