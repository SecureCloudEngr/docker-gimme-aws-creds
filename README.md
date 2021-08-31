# Docker wrapper for gimme-aws-creds
This setup was modifed from the original Dockerfile from the tool's repo at https://github.com/Nike-Inc/gimme-aws-creds/blob/master/Dockerfile

This is useful if:
* You didn't want to install gimme-aws-creds and all its dependencies on your host.
* You are still on python2 (Mac) and you didn't want to deal with python3.
* You just want to learn docker :)

## Usage
0. Have docker installed and running
1. Clone this repo
2. Run `./build.sh`
3. Run `./run.sh -p <PROFILE>`

Done! The `run.sh` command binds the file `~/.okta_aws_login_config` on your host into the container for configuration as well as `~/.aws/credentials` so that the credentials can be written into it.

You can also rename `run.sh` as `gimme-aws-creds` and use it like the original command.

