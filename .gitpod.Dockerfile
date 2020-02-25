FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
RUN sudo apt-get install -yq qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
RUN sudo addgroup libvirtd
RUN sudo adduser gitpod libvirtd
RUN sudo adduser gitpod kvm
RUN sudo service libvirtd start
    
