# PPA

This is the docker image for deb PPA repository.

## Requirements

* docker 

## Usage

Create direcotry with content

```bash
PPA_Repo
|-- amd64
|     |-- <package1>.deb
|     └-- <package2>.deb
|-- indexpacks.sh
|-- Packages
|-- Packages.gz
└-- Release
```
Directory __arm64__ is where .deb packages are located.
To build Packages, Packages.gz and Release file run script indexpacks.sh

Build docker image from Dockerfile  

```bash
docker build . --tag ppa
```

Then run docker container  

```bash
docker run -dit -p 80:80 -v <path/to/PPA_Repo>/:/var/www/html/ ppa 
```

Add new ppa repo into sources  

```bash
echo 'deb [trusted=yes] http://<your ip>/ /' | sudo tee -a /etc/apt/sources.list.d/internal.list > /dev/null
```

Run  

```bash
sudo apt-get update
sudo apt-get install <package>
```
