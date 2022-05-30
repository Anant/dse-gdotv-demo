

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
