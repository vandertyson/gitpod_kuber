FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils; \
    sudo systemctl start libvirtd; \
    sudo systemctl enable libvirtd
