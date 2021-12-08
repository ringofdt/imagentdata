#!/usr/bin/env bash

protoc --doc_out=. --doc_opt=markdown,README.md,source_relative ./**/*.proto
