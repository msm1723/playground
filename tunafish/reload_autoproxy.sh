#!/usr/bin/env bash
networksetup -getautoproxyurl Ethernet
networksetup -setautoproxystate Ethernet off && networksetup -setautoproxystate Ethernet on
