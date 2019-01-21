protoc-javascript
=================

Compiles protobuffers and gRPC to static Javascript with Typescripty definitions

Usage
-----

    PROTO_DIR=/my/project/protos
    BUILD_OUT=/my/project/build
    
    grpc_tools_node_protoc \
        --js_out=import_style=commonjs,binary: $BUILD_OUT \
        --grpc_out=$BUILD_OUT
        --plugin=protoc-gen-grpc=$(which grpc_tools_node_protoc_plugin) \
        -I $PROTO_DIR
        $PROTO_DIR/*.proto

    grpc_tools_node_protoc \
        --plugin=protoc-gen-ts=$(which protoc-gen-ts) \
        --ts_out=$BUILD_OUT
        -I $PROTO_DIR
        $PROTO_DIR/*.proto
