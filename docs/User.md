# PocketsmithClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. | [optional] |
| **login** | **String** | The user&#39;s username. | [optional] |
| **name** | **String** | The full name of the user, although not all users will have a name set. | [optional] |
| **email** | **String** | The user&#39;s email address. | [optional] |
| **avatar_url** | **String** | The URL to the user&#39;s avatar. | [optional] |
| **beta_user** | **Boolean** | Whether the user has opted in to beta features. | [optional] |
| **time_zone** | **String** | The user&#39;s time zone. | [optional] |
| **week_start_day** | **Integer** | The day of the week the user wishes their calendars to start on. A number between 0 and 6, where 0 is Sunday and 6 is Saturday. | [optional] |
| **is_reviewing_transactions** | **Boolean** | Whether the user wants to review new transactions, transfer transactions or categorisation. | [optional] |
| **base_currency_code** | **String** | The user&#39;s base currency. | [optional] |
| **always_show_base_currency** | **Boolean** | Whether the user wants to see all accounts in their base currency instead of the native account currency. | [optional] |
| **using_multiple_currencies** | **Boolean** | Whether the user has multiple currencies in use across their account. | [optional] |
| **available_accounts** | **Integer** | The user&#39;s total number of available accounts. | [optional] |
| **available_budgets** | **Integer** | The user&#39;s total number of available budgets. | [optional] |
| **forecast_last_updated_at** | **String** | When the user&#39;s forecast was last updated. | [optional] |
| **forecast_last_accessed_at** | **String** | When the user&#39;s forecast was last accessed. | [optional] |
| **forecast_start_date** | **String** | The date that the user&#39;s forecast starts. | [optional] |
| **forecast_end_date** | **String** | The date that the user&#39;s forecast ends. | [optional] |
| **forecast_defer_recalculate** | **Boolean** | Whether the user&#39;s forecast recalculation should be deferred. | [optional] |
| **forecast_needs_recalculate** | **Boolean** | Whether the user&#39;s forecast needs to be recalculated. | [optional] |
| **last_logged_in_at** | **String** | When the user last logged into PocketSmith. | [optional] |
| **last_activity_at** | **String** | When the user last interacted with PocketSmith, via any application or the API. | [optional] |
| **created_at** | **String** | When the user signed up. | [optional] |
| **updated_at** | **String** | When the user was last updated. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::User.new(
  id: 42,
  login: sampleuser69,
  name: Foo Barrington,
  email: user69@sample.com,
  avatar_url: https://image.com/image.png,
  beta_user: true,
  time_zone: Auckland,
  week_start_day: 1,
  is_reviewing_transactions: true,
  base_currency_code: NZD,
  always_show_base_currency: false,
  using_multiple_currencies: true,
  available_accounts: 3,
  available_budgets: 3,
  forecast_last_updated_at: 2015-07-02T22:14:49Z,
  forecast_last_accessed_at: 2015-07-02T22:14:49Z,
  forecast_start_date: 2015-07-01,
  forecast_end_date: 2015-07-15,
  forecast_defer_recalculate: false,
  forecast_needs_recalculate: true,
  last_logged_in_at: 2015-07-02T22:14:49Z,
  last_activity_at: 2015-07-02T22:14:49Z,
  created_at: 2015-07-02T22:14:49Z,
  updated_at: 2015-07-02T22:14:49Z
)
```

