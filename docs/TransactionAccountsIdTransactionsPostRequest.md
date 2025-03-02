# OpenapiClient::TransactionAccountsIdTransactionsPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee** | **String** | The payee/merchant of the transaction. |  |
| **amount** | **Float** | The amount of the transaction. A positive amount is a credit, and a negative amount is a debit. |  |
| **date** | **String** | The date when the transaction occurred. |  |
| **is_transfer** | **Boolean** | Whether the transaction should be indicated as a transfer. | [optional] |
| **labels** | **String** | A set of comma-separated labels for the transaction. | [optional] |
| **category_id** | **Integer** | The unique identifier of a category for the transaction. | [optional] |
| **note** | **String** | A note for the transaction. | [optional] |
| **memo** | **String** | A memo for the transaction. | [optional] |
| **cheque_number** | **String** | A cheque number for the transaction. | [optional] |
| **needs_review** | **Boolean** | Whether the transaction needs to be reviewed or not. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TransactionAccountsIdTransactionsPostRequest.new(
  payee: Tex Otago,
  amount: 11.5,
  date: 2018-02-27,
  is_transfer: false,
  labels: lunch,mexican,
  category_id: 42,
  note: I really enjoyed the loaded corn chips,
  memo: null,
  cheque_number: null,
  needs_review: false
)
```

