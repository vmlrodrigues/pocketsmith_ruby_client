# PocketsmithRubyClient::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cheque_number** | **String** |  | [optional] |
| **type** | **String** | Whether the transaction is a debit or a credit | [optional] |
| **memo** | **String** |  | [optional] |
| **payee** | **String** | The payee/merchant of the transaction. | [optional] |
| **amount** | **Float** |  | [optional] |
| **amount_in_base_currency** | **Float** | The amount of the transaction in the user&#39;s base currency. | [optional] |
| **date** | **String** | The date the transaction took place. | [optional] |
| **is_transfer** | **Boolean** | Whether the transaction is a transfer. | [optional] |
| **category** | [**Category**](Category.md) |  | [optional] |
| **note** | **String** |  | [optional] |
| **labels** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **Integer** | The unique identifier of the transaction. | [optional] |
| **original_payee** | **String** | The payee the transaction was created with. | [optional] |
| **upload_source** | **String** | Where the transaction came from. | [optional] |
| **closing_balance** | **Float** | The closing balance of the account at the transaction. | [optional] |
| **transaction_account** | [**TransactionAccount**](TransactionAccount.md) |  | [optional] |
| **status** | **String** | The status of the transaction. Pending transactions are temporary and may be superseded later by their posted counterparts, which are permanent. | [optional] |
| **needs_review** | **Boolean** | Whether the transaction needs to be reviewed. | [optional] |
| **created_at** | **String** | When the transaction was created. | [optional] |
| **updated_at** | **String** | When the transaction was last updated. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithRubyClient::Transaction.new(
  cheque_number: 503113643691,
  type: credit,
  memo: An example memo,
  payee: St Martins New World,
  amount: 34.6,
  amount_in_base_currency: 51.9,
  date: 2018-02-27,
  is_transfer: false,
  category: null,
  note: I spent way too much on cheese here,
  labels: [&quot;foo&quot;,&quot;bar&quot;,&quot;baz&quot;],
  id: 42,
  original_payee: CARD4083ST MARTINS NEW WORLD CHRISTCHURCH,
  upload_source: file,
  closing_balance: 4312.32,
  transaction_account: null,
  status: null,
  needs_review: true,
  created_at: 2018-02-27T22:42:22Z,
  updated_at: 2018-02-27T22:42:22Z
)
```

