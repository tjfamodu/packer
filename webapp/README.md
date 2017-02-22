# Rendia WebApp Packer template

This template takes a base image of Amazon Linux 2016.09.01 (HVM) for the Rendia WebApp as well as a Docker Image.

Provided in Template:
 * PHP 5.6
 * Apache 2.2
 * MySQL 5.6
 * cloud-init
 * NodeJS
 * Bower
 * Gulp
 * Ember
 * phantomjs

To validate:
`packer validate -var-files=variables.json webapp.json`

To Build:
`packer build -var-files=variables.json webapp.json`

_Note: `variables.json` is added to ``.gitignore` to protect environment variables_
