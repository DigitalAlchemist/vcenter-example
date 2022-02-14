FROM ubuntu:20.04
RUN apt-get update && apt-get install -qy ansible python3 python3-pip git
RUN ansible-galaxy collection install community.vmware community.docker
RUN pip3 install -r ~/.ansible/collections/ansible_collections/community/vmware/requirements.txt
