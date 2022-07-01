# DSE Graph in G.V() IDE
![image](https://user-images.githubusercontent.com/22231483/176893797-afded06b-e5c2-41c4-8b1a-8a1fde6ee922.png)

See full blog post here: [https://blog.anant.us/dse-graph-in-g-v-ide/](https://blog.anant.us/dse-graph-in-g-v-ide/).

## Instructions
Clone the Graph Book Repo somewhere, which we will use for its sample data (specifically, from chapter four)

```
cd ../
git clone https://github.com/datastax/graph-book.git
```


navigate back to this repo:
```
cd ./dse-gdotv-demo
```


Download DSBulk tool:
```
./scripts/download-dse-bulk-loader.sh
```

Load the data
```
./scripts/load-schema.sh
# arg should be relative or absolute path to wherever you cloned graph-book repo to
./scripts/load-data.sh ../graph-book/
```
