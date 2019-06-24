#!/bin/bash

set -e

test::check_syntax() {
  ansible-playbook playbook.yml -i 'localhost' --syntax-check
}

# Docker doesn't let you access /etc/hosts in a container, so just run the
# syntax check.
