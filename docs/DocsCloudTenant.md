# DocspaceApiSdk::DocsCloudTenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dedicated_resource_ex_id** | **Integer** | The external ID of the dedicated resource the tenant is hosted on. | [optional] |
| **_alias** | **String** | The tenant alias. | [optional] |
| **name** | **String** | The tenant name. | [optional] |
| **modified_date** | **Time** | The date and time when the tenant was last modified. | [optional] |
| **customer_id** | **String** | The customer ID. | [optional] |
| **customer_name** | **String** | The customer name. | [optional] |
| **end_date** | **Time** | The date and time when the tenant subscription ends. | [optional] |
| **resource_type** | **Integer** | The resource type. | [optional] |
| **is_active** | **Boolean** | Whether the tenant is active (the end date is in the future). | [optional] |
| **address** | **String** | The tenant address. | [optional] |
| **payment** | [**DocsCloudPayment**](DocsCloudPayment.md) | The tenant payment information. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudTenant.new(
  dedicated_resource_ex_id: 12345,
  _alias: my-portal,
  name: My Portal,
  modified_date: 2024-01-15T10:30:00Z,
  customer_id: CustomerId,
  customer_name: CustomerName,
  end_date: 2024-01-15T10:30:00Z,
  resource_type: 1,
  is_active: false,
  address: https://my-portal.onlyoffice.com,
  payment: null
)
```
