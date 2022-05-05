module github.com/forbole/bdjuno/v3

go 1.16

require (
	github.com/cosmos/cosmos-sdk v0.45.4
	github.com/forbole/juno/v3 v3.2.0
	github.com/glodnet/chain v0.0.0-00010101000000-000000000000
	github.com/go-co-op/gocron v1.13.0
	github.com/gogo/protobuf v1.3.3
	github.com/jmoiron/sqlx v1.3.5
	github.com/lib/pq v1.10.5
	github.com/pelletier/go-toml v1.9.5
	github.com/prometheus/client_golang v1.12.1
	github.com/proullon/ramsql v0.0.0-20181213202341-817cee58a244
	github.com/rs/zerolog v1.26.1
	github.com/spf13/cobra v1.4.0
	github.com/stretchr/testify v1.7.1
	github.com/tendermint/tendermint v0.34.19
	google.golang.org/grpc v1.45.0
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b
)

require (
	github.com/StackExchange/wmi v1.2.1 // indirect
	github.com/cosmos/gaia/v7 v7.0.1
	github.com/dgraph-io/badger/v2 v2.2007.4 // indirect
	github.com/dgraph-io/ristretto v0.1.0 // indirect
	github.com/golang/glog v1.0.0 // indirect
	github.com/google/btree v1.0.1 // indirect
)

replace (
	github.com/gogo/protobuf => github.com/regen-network/protobuf v1.3.3-alpha.regen.1
	google.golang.org/grpc => google.golang.org/grpc v1.33.2
)

replace (
	github.com/CosmWasm/wasmd => github.com/chaogaofeng/wasmd v0.27.1-gnchain-20220505
	github.com/cosmos/cosmos-sdk => github.com/chaogaofeng/cosmos-sdk v0.45.4-gnchain-20220505
	github.com/glodnet/chain => github.com/chaogaofeng/chain v0.0.1
	github.com/tendermint/tendermint => github.com/chaogaofeng/tendermint v0.34.19-gnchain-20220505
//github.com/CosmWasm/wasmd => ../wasmd
//github.com/cosmos/cosmos-sdk => ../cosmos-sdk
//github.com/glodnet/chain => ../chain
//github.com/tendermint/tendermint => ../tendermint
)
