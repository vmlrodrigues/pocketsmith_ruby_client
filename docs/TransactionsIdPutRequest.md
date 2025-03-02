# PocketsmithRubyClient::TransactionsIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memo** | **String** | A new memo for the transaction. | [optional] |
| **cheque_number** | **String** | A new cheque number for the transaction. | [optional] |
| **payee** | **String** | A new payee for the transaction. | [optional] |
| **amount** | **Float** | A new amount for the transaction. | [optional] |
| **date** | **String** | A new date for the transaction. | [optional] |
| **is_transfer** | **Boolean** | Whether the transaction is a transfer or not. | [optional] |
| **category_id** | **Integer** | The unique identifier of a new category for the transaction. Sending an empty string will uncategorize the transaction. | [optional] |
| **note** | **String** | A new note for the transaction. | [optional] |
| **needs_review** | **Boolean** | Whether the transaction needs to be reviewed or not. | [optional] |
| **labels** | **String** | A new comma-separated set of labels for the transaction. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::TransactionsIdPutRequest.new(
  memo: Rent,
  cheque_number: 503113643691,
  payee: Bill,
  amount: 225,
  date: 2018-02-27,
  is_transfer: false,
  category_id: 42,
  note: null,
  needs_review: false,
  labels: foo,bar,baz
)
```

