#! /usr/bin/env bash

# TODO: auto pull latest release

# copy files into format that SPM can work with
mkdir -p Sources/whisper
rm -rf Sources/whisper/*
cp whisper.cpp/*.c* Sources/whisper
cp whisper.cpp/*.h Sources/whisper
mkdir -p Sources/whisper/include
mv Sources/whisper/whisper.h Sources/whisper/include

# TODO: copy version data into Package.swift
