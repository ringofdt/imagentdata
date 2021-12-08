# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [marketdata/marketdata.proto](#marketdata/marketdata.proto)
    - [GetStockBidAskRequest](#proto.marketdata.GetStockBidAskRequest)
    - [GetStockOHLCVRequest](#proto.marketdata.GetStockOHLCVRequest)
    - [MarketPrice](#proto.marketdata.MarketPrice)
    - [StockBidAsk](#proto.marketdata.StockBidAsk)
    - [StockOHLCV](#proto.marketdata.StockOHLCV)
    - [SubcriptionInfo](#proto.marketdata.SubcriptionInfo)
    - [SubscribeMarketPriceRequest](#proto.marketdata.SubscribeMarketPriceRequest)
  
    - [MarketDataApi](#proto.marketdata.MarketDataApi)
  
- [Scalar Value Types](#scalar-value-types)



<a name="marketdata/marketdata.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## marketdata/marketdata.proto



<a name="proto.marketdata.GetStockBidAskRequest"></a>

### GetStockBidAskRequest
Request for GetStockBidAsk


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| scty | [uint32](#uint32) |  | requesting security code |






<a name="proto.marketdata.GetStockOHLCVRequest"></a>

### GetStockOHLCVRequest
Request for GetStockOHLCV


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| scty | [uint32](#uint32) |  | requesting security code |






<a name="proto.marketdata.MarketPrice"></a>

### MarketPrice
Data stream of SubscribeMarketPrice


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [SubcriptionInfo](#proto.marketdata.SubcriptionInfo) |  | First message when stream creats and contains stream information |
| stock_price | [StockOHLCV](#proto.marketdata.StockOHLCV) |  | OHLCV candle of a Stock |
| stock_quote | [StockBidAsk](#proto.marketdata.StockBidAsk) |  | BidAsk snapshot of a Stock |






<a name="proto.marketdata.StockBidAsk"></a>

### StockBidAsk
BidAsk information of a stock


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| unixtime | [int64](#int64) |  | updated timestamp in unix millisecond |
| scty | [uint32](#uint32) |  | security code |
| bid_price | [int32](#int32) |  | bid price, 3 d.p. |
| bid_volume | [int32](#int32) |  | bid volume |
| ask_price | [int32](#int32) |  | ask price, 3 d.p |
| ask_volume | [int32](#int32) |  | ask volume |
| last_price | [int32](#int32) |  | last traded price 3 d.p. |
| last_volume | [int32](#int32) |  | last traded volume |
| last_time | [int64](#int64) |  | last traded timestamp in unix millisecond |






<a name="proto.marketdata.StockOHLCV"></a>

### StockOHLCV
Candle statistic in minute of a stock


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| unixtime | [int64](#int64) |  | updated timestamp in unix millisecond |
| scty | [uint32](#uint32) |  | security code: 10001:HSIF, 10002:MHIF |
| open | [int32](#int32) |  | Open price |
| high | [int32](#int32) |  | High price |
| low | [int32](#int32) |  | Low price |
| close | [int32](#int32) |  | Close price, i.e. latest price |
| volume | [int32](#int32) |  | total traded volume |
| volume_bid | [int32](#int32) |  | total traded (bid) volume |
| volume_ask | [int32](#int32) |  | total traded (ask) volume |
| bucket | [int64](#int64) |  | minute timestamp in unix millisecond |






<a name="proto.marketdata.SubcriptionInfo"></a>

### SubcriptionInfo
Subscriptino information


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription_id | [string](#string) |  | stream id; created automatically when connected |






<a name="proto.marketdata.SubscribeMarketPriceRequest"></a>

### SubscribeMarketPriceRequest
Request for SubscribeMarketPrice





 

 

 


<a name="proto.marketdata.MarketDataApi"></a>

### MarketDataApi
Service for MarketDataApi.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| SubscribeMarketPrice | [SubscribeMarketPriceRequest](#proto.marketdata.SubscribeMarketPriceRequest) | [MarketPrice](#proto.marketdata.MarketPrice) stream | Subscribe Market Price from Server stream |
| GetStockBidAsk | [GetStockBidAskRequest](#proto.marketdata.GetStockBidAskRequest) | [StockBidAsk](#proto.marketdata.StockBidAsk) | Get latest bidask snapshot of a stock |
| GetStockOHLCV | [GetStockOHLCVRequest](#proto.marketdata.GetStockOHLCVRequest) | [StockOHLCV](#proto.marketdata.StockOHLCV) | Get latest minute candle snapshot of a stock |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

