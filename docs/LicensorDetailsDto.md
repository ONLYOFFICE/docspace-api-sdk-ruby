# DocspaceApiSdk::LicensorDetailsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | The vendor name the About page shows and the letters sign off with. Until details are saved it holds  whatever the installation ships as its built-in vendor, and it is empty on an installation that ships none. | [optional] |
| **site** | **String** | The address the vendor name links to, as an absolute URL with its scheme. Empty under the same conditions  as `companyName`. | [optional] |
| **email** | **String** | The mailbox the About page offers for reaching the vendor. It is not the portal's own support address, and  it is empty under the same conditions as `companyName`. | [optional] |
| **address** | **String** | The postal address of the vendor as one free-form line, in the shape it was saved in - no structure is  imposed on it. | [optional] |
| **phone** | **String** | The telephone number of the vendor in the shape it was saved in, with no dialling format enforced. | [optional] |
| **is_licensor** | **Boolean** | Whether these details are those of the licensor of the product itself rather than of a reseller. Saving  through `POST api/2.0/settings/rebranding/company` always clears it, so only details that came with the  installation can report `true`. The name starts with a capital letter, unlike the other fields. | [optional] |
| **hide_about** | **Boolean** | Whether the About page is hidden from the interface. A plan that does not include branding cannot switch it  on: the value is stored as `false` in that case, so it can come back different from what was saved. | [optional] |
| **last_modified** | **Time** | When these details were last stored. Details that were never stored report the moment they were read; the  built-in ONLYOFFICE entry and the answer of the reset operation report `0001-01-01T00:00:00`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::LicensorDetailsDto.new(
  company_name: My Own Corporation,
  site: https://www.example.com,
  email: contact@example.com,
  address: 123 Business St, New York, NY 10001,
  phone: +1-800-555-0123,
  is_licensor: false,
  hide_about: false,
  last_modified: 2026-01-01T10:00:00
)
```
