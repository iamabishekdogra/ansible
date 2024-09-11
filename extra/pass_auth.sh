#!/bin/bash

for server in $(cat server.txt); do
	ssh-copy-id -i ~/.ssh/id_rsa.pub ubuntu@$server
done
