## 2016-11-18 v0.5.2 Updates:
- Added MOEX futures and options trades data support. Use `store_moex_data` to initialize local storage with `moex_storage`, `moex_data_url`, `moex_storage_from` settings. Use `get_moex_futures_data`, `get_moex_continuous_futures_data`, `get_moex_options_data` to get data from storage.
- `Processor.GetSummary()` method now returns `sharpe`, `sortino`, `r_squared`, `avg_dd`.
- `GetMarketValueHistory()`, `GetDrawdownHistory()`, `GetDailyPerformanceHistory()` methods added to `Processor`.

## 2016-11-13 v0.5.1 Updates:
- `Processor` now operates in the same time zone as input ticks. Ticks `tzone` attribute must be specified.
- `to_ticks` function added. As it is easier to get one minute bars than ticks for time span of several years `to_ticks` provides convinient way to convert these bars to ticks. Note that back test results on approximated ticks will be less realistic but may be acceptable for some strategies.
- IQFeed documentation updated and some hidden functionality added.
    - `QuantTools:::.get_iqfeed_markets_info()` retrieves markets info.
    - `QuantTools:::.get_iqfeed_trade_conditions_info()` retrieves trade conditions info.
- `get_finam_data` fixed.
- `round_POSIXct` changed to generic version.

## 2016-10-14 v0.5.0 Initial Release.