if ! command -v rustup ; then
  # https://github.com/actions/runner-images/blob/main/images/ubuntu/Ubuntu2404-Readme.md#rust-tools
  curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal
fi