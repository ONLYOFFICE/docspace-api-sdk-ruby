# DocspaceApiSdk::SaveAuthKeysRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The internal key of the provider, such as `google` or `box`. Take it from the `name` of  `GET api/2.0/settings/authservice`. | [optional] |
| **title** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **description** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **instruction** | **String** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **can_set** | **Boolean** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **paid** | **Boolean** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **props** | [**Array&lt;AuthKeyRequest&gt;**](AuthKeyRequest.md) | The keys of the provider with their new values, by the key names `GET api/2.0/settings/authservice` lists in  `props`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SaveAuthKeysRequestDto.new(
  name: google,
  title: Google,
  description: Lets users sign in with a Google account.,
  instruction: Create a project in the Google Cloud console and copy its OAuth client ID and secret.,
  can_set: true,
  paid: false,
  props: [{name=googleClientId, value=1234567890-abc.apps.googleusercontent.com}]
)
```
