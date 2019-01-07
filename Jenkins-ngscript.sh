#!/bin/bash

npm install
ng build --aot=true --ec --vendor-chunk=true
