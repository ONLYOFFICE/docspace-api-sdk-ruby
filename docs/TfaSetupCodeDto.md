# DocspaceApiSdk::TfaSetupCodeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **String** | The account for which the setup code is generated. | [optional][readonly] |
| **manual_entry_key** | **String** | The manual entry key. | [optional][readonly] |
| **qr_code_setup_image_url** | **String** | The QR-code setup image URL (base64-encoded PNG image). | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TfaSetupCodeDto.new(
  account: john.doe@onlyoffice.com,
  manual_entry_key: JBSWY3DPEHPK3PXP,
  qr_code_setup_image_url: data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAAAAAA6fptVAAAACklEQVR4nGMAAgAABAABiCEmiQAAAABJRU5ErkJggg==
)
```
