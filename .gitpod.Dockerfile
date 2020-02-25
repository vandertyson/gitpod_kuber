FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils
RUN sudo /etc/init.d/libvirt-bin start
RUN virsh list --all    
