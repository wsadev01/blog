#!/usr/bin/env bash

cd ~/ || echo "[!] Can't CD to ~/"

tar -czvf backup-$(date +"%Y_%m_%d").tar.gz Documents/*  Pictures/*  Videos/*  Music/* unorganized/
