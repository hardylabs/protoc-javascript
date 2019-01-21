FROM node
RUN npm i -g grpc-tools && \
    npm i -g grpc_tools_protoc_ts
