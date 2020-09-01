#!/bin/sh

expect <<EOF
  set timeout 5：
  spawn ssh ${SSH_USER}@${SSH_HOST} sh -c \"${REMOTE_SCRIPT}\"
  
   expect {
    "*yes*" {send "yes\n"}
  }
  expect {
    "*password*" {send "${SSH_PASSWORD}\n"}
  }
  expect eof
EOF

echo run commands successfully.