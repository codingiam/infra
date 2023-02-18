#!/usr/bin/env bash

sudo su -c 'echo "PasswordAuthentication no" >> /etc/ssh/sshd_config'
sudo su -c 'echo "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config'
