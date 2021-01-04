#!/usr/bin/env bash

#Deploy Origin Server
pushd ./terraform/
make destroy
popd
