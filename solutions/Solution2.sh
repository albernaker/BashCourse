#!/bin/bash

UBUNTU20=https://releases.ubuntu.com/20.04.4/ubuntu-20.04.4-desktop-amd64.iso
UBUNTU21=https://releases.ubuntu.com/21.10/ubuntu-21.10-desktop-amd64.iso

zstd= "sudo zstd"
installV1="sudo apt-get install tree"
installV2="sudo apt-get install "

process_install() {
 $installV1 &
  P1=$!
 $installV2 &
  P2=$!
 wait $P1 $P2

compress
}

compress() {
 compress= $zstd -z $P1 
 compress1=$! &
 compress2=$! &
 wait $compress1 $compress2
}

process_install
