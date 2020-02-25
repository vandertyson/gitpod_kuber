FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils libvirt-bin
RUN sudo service libvirt-bin start
RUN virsh list --all    
