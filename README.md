# imagentdata

## proto API

- [proto/marketdata](proto/marketdata/)

## Test

Reference

- grpcurl (<https://github.com/fullstorydev/grpcurl>)

```sh
grpcurl -d '{}' --plaintext $GRPC_ENDPOINT proto.marketdata.MarketDataApi/SubscribeMarketPrice
```

```sh
grpcurl -d @ --plaintext $GRPC_ENDPOINT proto.marketdata.MarketDataApi/GetStockBidAsk <<EOM
{
    "scty":7500
}
EOM
```

```sh
grpcurl -d @ --plaintext $GRPC_ENDPOINT proto.marketdata.MarketDataApi/GetStockBidAsk <<EOM
{
    "scty":10001
}
EOM
```
