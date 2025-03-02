# PocketsmithClient::UsersIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | A new email address for the user. | [optional] |
| **name** | **String** | A new name for the user. | [optional] |
| **time_zone** | **String** | A new time zone for the user. | [optional] |
| **week_start_day** | **Integer** | The day of the week the user wishes their calendars to start on. A number between 0 and 6, where 0 is Sunday and 6 is Saturday. | [optional] |
| **beta_user** | **Boolean** | Whether the user is a beta user, and wishes to try out new features. | [optional] |
| **base_currency_code** | **String** | A new base currency code for the user. | [optional] |
| **always_show_base_currency** | **Boolean** | Whether the user wishes to have all monetary values converted to their base currency. | [optional] |

## Example

```ruby
require 'pocketsmith_ruby_client'

instance = PocketsmithClient::UsersIdPutRequest.new(
  email: foo@bar.com,
  name: John Appleseed,
  time_zone: Auckland,
  week_start_day: 1,
  beta_user: true,
  base_currency_code: nzd,
  always_show_base_currency: true
)
```

