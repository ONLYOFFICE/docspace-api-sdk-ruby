# DocspaceApiSdk::FirebaseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **api_key** | **String** | The web API key of the project. Every field of this object is an empty string on an installation that  configures no Firebase project, and an empty `projectId` is the cheapest thing to test for before  initialising an SDK. None of these values is a secret - they are meant to be embedded in a client. |  |
| **auth_domain** | **String** | The host the Firebase SDK performs its own authentication against. |  |
| **project_id** | **String** | The identifier of the Firebase project itself, which ties all the other fields together. |  |
| **storage_bucket** | **String** | The Cloud Storage bucket of the project. The portal does not store portal files there; it is part of the  SDK configuration. |  |
| **messaging_sender_id** | **String** | The sender ID that push messages of this project arrive under, which a client checks an incoming message  against. |  |
| **app_id** | **String** | The identifier of the Firebase application registration this client is to use. |  |
| **measurement_id** | **String** | The Google Analytics measurement ID of the project, empty when the project reports no analytics. |  |
| **database_url** | **String** | The Realtime Database endpoint of the project, empty when the project has no such database. |  |

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
