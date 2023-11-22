#!/usr/bin/env bash

echo
echo Building Simple-Bank-Account-Origination.json...
widdershins --environment ./docs/Support_Files/env.json ./docs/Support_Files/Simple-Bank-Account-Origination.json -o ./docs/Support_Files/Simple-Bank-Account-Origination-OAS.md

echo
echo Building Simple-Payments.json...
widdershins --environment ./docs/Support_Files/env.json ./docs/Support_Files/Simple-Payments.json -o ./docs/Support_Files/Simple-Payments-OAS.md
