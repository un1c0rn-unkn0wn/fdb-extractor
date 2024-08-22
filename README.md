# fdb-extractor
A simple script to extract images from the .fdb database that is used in Beward intercoms (maybe somewhere else?)

## How it works
Script using 'binwalk' for extraction and tool from 'imagemagick' package for cleaning images from garbage.

## Install dependencies
For install dependencies automatically, enter the following commands:
```bash
sudo make
```

Or You can run this commands:
```bash
sudo apt update
sudo apt install -y binwalk imagemagick
chmod +x fdb-extractor.sh
```

## Usage 
Showing help:

```bash
./fdb-extractor.sh
```
Extraction:

```bash
./fdb-extractor.sh just-a-fdb-file.fdb
```

As a result of execution you should have a folder with the same name of .fdb file in which the images are located.
