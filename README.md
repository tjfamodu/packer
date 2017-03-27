# Packer

[Packer](https://www.packer.io/) is a tool that is used to create machine images for multiple platforms with a single configuration.


## Basic Commands

* `packer validate` checks syntax of template
* `packer build` builds the image of from the template
  * `-var-files` include a variable file for environment variables
  * `- force` forces the builder to run when artifacts from a previous build prevent the build from running
  * `-only=foo,bar` only build the build with the given names
  * `-parallel=false` disable parallelization of multiple builds (on by default)
* `packer inspect` outputs the various components the template would define
*  `packer `
