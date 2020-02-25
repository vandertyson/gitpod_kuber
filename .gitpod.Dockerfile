FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils; \
    sudo addgroup libvirtd; \
    sudo adduser gitpod libvirtd; \
    sudo adduser gitpod kvm; \    
    sudo systemctl start libvirtd    
    
