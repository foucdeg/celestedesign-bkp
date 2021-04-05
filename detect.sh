#!/bin/bash
find . -print | grep $1 | xargs shasum
