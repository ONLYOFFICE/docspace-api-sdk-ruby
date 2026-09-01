# DocspaceApiSdk::FirebaseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | The Firebase API key. |  |
| **auth_domain** | **String** | The Firebase authentication domain. |  |
| **project_id** | **String** | The Firebase project ID. |  |
| **storage_bucket** | **String** | The Firebase storage bucket. |  |
| **messaging_sender_id** | **String** | The Firebase messaging sender ID. |  |
| **app_id** | **String** | The Firebase application ID. |  |
| **measurement_id** | **String** | The Firebase measurement ID. |  |
| **database_url** | **String** | The Firebase database URL. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FirebaseDto.new(
  api_key: AIzaSyDxK9L3j4H8mN2pQ5rS6tU7vW8xY9zA1bC,
  auth_domain: myapp-12345.firebaseapp.com,
  project_id: myapp-12345,
  storage_bucket: myapp-12345.appspot.com,
  messaging_sender_id: 123456789012,
  app_id: 1:123456789012:web:a1b2c3d4e5f6g7h8,
  measurement_id: G-ABCD123456,
  database_url: https://myapp-12345.firebaseio.com
)
```
