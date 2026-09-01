# DocspaceApiSdk::LoginEventDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The login event ID. | [optional] |
| **date** | **Time** | The login event date. | [optional] |
| **user** | **String** | The user name of the login event. | [optional] |
| **user_id** | **String** | The user ID of the login event. | [optional] |
| **login** | **String** | The user login of the login event. | [optional] |
| **action** | **String** | The login event action. | [optional] |
| **action_id** | [**MessageAction**](MessageAction.md) | The login-related action to filter events by. | [optional] |
| **ip** | **String** | The login event IP. | [optional] |
| **country** | **String** | The login event country. | [optional] |
| **city** | **String** | The login event city. | [optional] |
| **browser** | **String** | The login event browser. | [optional] |
| **platform** | **String** | The login event platform. | [optional] |
| **page** | **String** | The login event page. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LoginEventDto.new(
  id: 1,
  date: 2024-01-15T10:30:00Z,
  user: John Doe,
  user_id: {},
  login: user@example.com,
  action: User logged in,
  action_id: null,
  ip: 192.0.2.1,
  country: United States,
  city: New York,
  browser: Chrome 120.0,
  platform: Windows,
  page: /login
)
```
