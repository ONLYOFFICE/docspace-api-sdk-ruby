# DocspaceApiSdk::SetCustomFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fields** | [**Array&lt;CustomFieldRequest&gt;**](CustomFieldRequest.md) | The custom fields to set on the entry. A listed field gets the value, a null or empty value removes the field  from the entry, the fields not listed are left alone. A name the portal has not seen yet creates the field. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetCustomFields.new(
  fields: [{name=Project code, value=A-42}, {name=Client, value=null}]
)
```
