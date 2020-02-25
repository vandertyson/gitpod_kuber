FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils; \
    sudo adduser gitpod kvm; \
    sudo adduser gitpod libvirtd; \
    sudo systemctl start libvirtd    
    
