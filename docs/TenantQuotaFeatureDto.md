# DocspaceApiSdk::TenantQuotaFeatureDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The stable key of the feature - `total_size`, `manager`, `room`, `backup` and so on. It is the value to  branch on, since `title` is prose in the portal language. | [optional] |
| **title** | **String** | The feature described in the portal language, with its limit already substituted into the sentence, so it  can be printed as it is. It is empty when this build ships no wording for the feature. | [optional] |
| **image** | **String** | The feature's icon as SVG markup to render inline - not a URL to fetch. It is filled in only when the  quota comes from the catalogue, and left empty on the quota the portal is actually on, on a feature that  this quota switches off, and on a feature that ships no icon. | [optional] |
| **value** | **Object** |  | [optional] |
| **type** | **String** | How to read `value` and `used`: `size` for bytes, `count` for a number of things, `flag` for a feature  that is merely on or off. | [optional] |
| **used** | [**FeatureUsedDto**](FeatureUsedDto.md) | How much of the limit is already used. It is present only when the portal's own quota is read through  `GET api/2.0/portal/payment/quota`, and only for a feature whose consumption is counted. | [optional] |
| **price_title** | **String** | What the feature is charged as, in the portal language - for instance the per-unit price of an add-on. It  is filled in only for a feature that costs money on top of the plan. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantQuotaFeatureDto.new(
  id: total_size,
  title: Premium Storage,
  image: <svg viewBox="0 0 24 24"><path d="..."/></svg>,
  value: null,
  type: size,
  used: null,
  price_title: $9.99/month
)
```
