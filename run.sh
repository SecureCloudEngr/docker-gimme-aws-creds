docker run --rm -it \
    --mount type=bind,source=${HOME}/.okta_aws_login_config,target=/root/.okta_aws_login_config \
    --mount type=bind,source=${HOME}/.aws/credentials,target=/root/.aws/credentials \
    gimme-aws-creds:2.4.3 "$@"