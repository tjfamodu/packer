This template takes a base image of Amazon Linux 2016.09.01 (HVM) and configures to a LAMP stack with Node and Ember. This template also produces a Docker Image.

Provided in Template:
 * PHP 5.6
 * Apache 2.2
 * MySQL 5.6
 * NodeJS
 * Npm
 * Ember Cli

## Setup

 Copy `variables.example.json` and name `variables.json` (already .gitignore) and include AWS access key, secret key, vpc id, subnet id, and security group id. See [Packer Documentation](https://www.packer.io/docs/templates/user-variables.html) for alternative ways to set up user variables.

### Note
_`variables.json` is added to `.gitignore` to protect environment variables_

## Validate
`packer validate -var-files=variables.json webapp.json`

## Build
`packer build -var-files=variables.json webapp.json`

## Task List
- Refactor provisioning portion (have all steps handled by Chef and not bash scripts)
