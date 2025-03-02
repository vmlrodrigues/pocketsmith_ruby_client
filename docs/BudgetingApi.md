# PocketsmithClient::BudgetingApi

All URIs are relative to *https://api.pocketsmith.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**users_id_budget_get**](BudgetingApi.md#users_id_budget_get) | **GET** /users/{id}/budget | List budget for user |
| [**users_id_budget_summary_get**](BudgetingApi.md#users_id_budget_summary_get) | **GET** /users/{id}/budget_summary | Get budget summary for user |
| [**users_id_forecast_cache_delete**](BudgetingApi.md#users_id_forecast_cache_delete) | **DELETE** /users/{id}/forecast_cache | Delete forecast cache for user |
| [**users_id_trend_analysis_get**](BudgetingApi.md#users_id_trend_analysis_get) | **GET** /users/{id}/trend_analysis | Get trend analysis for user |


## users_id_budget_get

> <Array<BudgetAnalysisPackage>> users_id_budget_get(id, opts)

List budget for user

Lists the user's budget, consisting of one or more budget analysis packages, one per category. Akin to the list on the Budget page in PocketSmith.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::BudgetingApi.new
id = 42 # Integer | The unique identifier of the account.
opts = {
  roll_up: true # Boolean | Whether parent categories should have their children rolled up into them. When used, the children will still appear in the collection on their own, but their actual and forecast figures will be rolled up to the root parent.
}

begin
  # List budget for user
  result = api_instance.users_id_budget_get(id, opts)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_budget_get: #{e}"
end
```

#### Using the users_id_budget_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BudgetAnalysisPackage>>, Integer, Hash)> users_id_budget_get_with_http_info(id, opts)

```ruby
begin
  # List budget for user
  data, status_code, headers = api_instance.users_id_budget_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BudgetAnalysisPackage>>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_budget_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the account. |  |
| **roll_up** | **Boolean** | Whether parent categories should have their children rolled up into them. When used, the children will still appear in the collection on their own, but their actual and forecast figures will be rolled up to the root parent. | [optional] |

### Return type

[**Array&lt;BudgetAnalysisPackage&gt;**](BudgetAnalysisPackage.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_budget_summary_get

> <Array<BudgetAnalysisPackage>> users_id_budget_summary_get(id, period, interval, start_date, end_date)

Get budget summary for user

Get the user's budget summary, containing an expense and income analysis for all categories (excluding transfer categories) for the given period and date range. Akin to the overall budget shown on the Budget page in PocketSmith.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::BudgetingApi.new
id = 42 # Integer | The unique identifier of the user.
period = 'weeks' # String | The period to analyse in, one of `weeks`, `months` or `years`. Also supported is `event`, although event period analysis is only possible when the budget events gathered align, so in this case where all categories are analysed together, it's highly unlikely that event period analysis will be possible.
interval = 2 # Integer | The period interval, e.g. if the interval is 2 and the period is weeks, the budget will be analysed fortnightly.
start_date = '2016-11-01' # String | The date to start analysing the budget from. This will be bumped out to make full periods as necessary.
end_date = '2016-11-30' # String | The date to stop analysing the budget from. This will be bumped out to make full periods as necessary.

begin
  # Get budget summary for user
  result = api_instance.users_id_budget_summary_get(id, period, interval, start_date, end_date)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_budget_summary_get: #{e}"
end
```

#### Using the users_id_budget_summary_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BudgetAnalysisPackage>>, Integer, Hash)> users_id_budget_summary_get_with_http_info(id, period, interval, start_date, end_date)

```ruby
begin
  # Get budget summary for user
  data, status_code, headers = api_instance.users_id_budget_summary_get_with_http_info(id, period, interval, start_date, end_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BudgetAnalysisPackage>>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_budget_summary_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **period** | **String** | The period to analyse in, one of &#x60;weeks&#x60;, &#x60;months&#x60; or &#x60;years&#x60;. Also supported is &#x60;event&#x60;, although event period analysis is only possible when the budget events gathered align, so in this case where all categories are analysed together, it&#39;s highly unlikely that event period analysis will be possible. |  |
| **interval** | **Integer** | The period interval, e.g. if the interval is 2 and the period is weeks, the budget will be analysed fortnightly. |  |
| **start_date** | **String** | The date to start analysing the budget from. This will be bumped out to make full periods as necessary. |  |
| **end_date** | **String** | The date to stop analysing the budget from. This will be bumped out to make full periods as necessary. |  |

### Return type

[**Array&lt;BudgetAnalysisPackage&gt;**](BudgetAnalysisPackage.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_forecast_cache_delete

> users_id_forecast_cache_delete(id)

Delete forecast cache for user

Delete the user's cached forecast by recalculating the forecast.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::BudgetingApi.new
id = 42 # Integer | The unique identifier of the user.

begin
  # Delete forecast cache for user
  api_instance.users_id_forecast_cache_delete(id)
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_forecast_cache_delete: #{e}"
end
```

#### Using the users_id_forecast_cache_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> users_id_forecast_cache_delete_with_http_info(id)

```ruby
begin
  # Delete forecast cache for user
  data, status_code, headers = api_instance.users_id_forecast_cache_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_forecast_cache_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |

### Return type

nil (empty response body)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## users_id_trend_analysis_get

> <Array<BudgetAnalysisPackage>> users_id_trend_analysis_get(id, period, interval, start_date, end_date, categories, scenarios)

Get trend analysis for user

Get an income and/or expense budget analysis for the given date range and period across any number of categories and scenarios. Akin to the Trends page in PocketSmith.

### Examples

```ruby
require 'time'
require 'pocketsmith_ruby_client'
# setup authorization
PocketsmithClient.configure do |config|
  # Configure API key authorization: developerKey
  config.api_key['X-Developer-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-Developer-Key'] = 'Bearer'
end

api_instance = PocketsmithClient::BudgetingApi.new
id = 42 # Integer | The unique identifier of the user.
period = 'weeks' # String | The period to analyse in, one of `weeks`, `months` or `years`. Also supported is `event`, although event period analysis is only possible when the budget events gathered align, so in this case where all categories are analysed together, it's highly unlikely that event period analysis will be possible.
interval = true # Integer | The period interval, e.g. if the interval is 2 and the period is weeks, the budget will be analysed fortnightly.
start_date = '2016-11-01' # String | The date to start analysing the budget from. This will be bumped out to make full periods as necessary.
end_date = '2016-11-30' # String | The date to stop analysing the budget from. This will be bumped out to make full periods as necessary.
categories = '42,49' # String | A comma-separated list of category IDs to analyse.
scenarios = '11,29' # String | A comma-separated list of scenario IDs to analyse. You're likely going to want to include all a user's scenarios here, unless you have reason to only analyse for a subset of scenarios. Regardless of what scenarios are analysed, all actuals (transactions) across all accounts will be included.

begin
  # Get trend analysis for user
  result = api_instance.users_id_trend_analysis_get(id, period, interval, start_date, end_date, categories, scenarios)
  p result
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_trend_analysis_get: #{e}"
end
```

#### Using the users_id_trend_analysis_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BudgetAnalysisPackage>>, Integer, Hash)> users_id_trend_analysis_get_with_http_info(id, period, interval, start_date, end_date, categories, scenarios)

```ruby
begin
  # Get trend analysis for user
  data, status_code, headers = api_instance.users_id_trend_analysis_get_with_http_info(id, period, interval, start_date, end_date, categories, scenarios)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BudgetAnalysisPackage>>
rescue PocketsmithClient::ApiError => e
  puts "Error when calling BudgetingApi->users_id_trend_analysis_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the user. |  |
| **period** | **String** | The period to analyse in, one of &#x60;weeks&#x60;, &#x60;months&#x60; or &#x60;years&#x60;. Also supported is &#x60;event&#x60;, although event period analysis is only possible when the budget events gathered align, so in this case where all categories are analysed together, it&#39;s highly unlikely that event period analysis will be possible. |  |
| **interval** | **Integer** | The period interval, e.g. if the interval is 2 and the period is weeks, the budget will be analysed fortnightly. |  |
| **start_date** | **String** | The date to start analysing the budget from. This will be bumped out to make full periods as necessary. |  |
| **end_date** | **String** | The date to stop analysing the budget from. This will be bumped out to make full periods as necessary. |  |
| **categories** | **String** | A comma-separated list of category IDs to analyse. |  |
| **scenarios** | **String** | A comma-separated list of scenario IDs to analyse. You&#39;re likely going to want to include all a user&#39;s scenarios here, unless you have reason to only analyse for a subset of scenarios. Regardless of what scenarios are analysed, all actuals (transactions) across all accounts will be included. |  |

### Return type

[**Array&lt;BudgetAnalysisPackage&gt;**](BudgetAnalysisPackage.md)

### Authorization

[developerKey](../README.md#developerKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

