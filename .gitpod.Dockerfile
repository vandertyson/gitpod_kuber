FROM gitpod/workspace-full
USER gitpod
RUN uname -m
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils         
RUN sudo service --status-all
RUN sudo addgroup libvirtd
RUN sudo adduser gitpod libvirtd
RUN sudo adduser gitpod kvm
RUN virsh list --all   
RUN ls -la /var/run/libvirt/libvirt-sock
