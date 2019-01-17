#!/usr/bin/env bash

./node_modules/.bin/grpc_tools_node_protoc \
    --js_out=import_style=commonjs,binary:./build/ \
    --grpc_out=./build/ \
    --plugin=protoc-gen-grpc=./node_modules/.bin/grpc_tools_node_protoc_plugin \
    -I ./proto \
    proto/*/*.proto

./node_modules/.bin/grpc_tools_node_protoc \
    --plugin=protoc-gen-ts=./node_modules/.bin/protoc-gen-ts \
    --ts_out=./build/ \
    -I ./proto \
    proto/*/*.proto

