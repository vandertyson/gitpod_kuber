FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils libvirt-bin; \
    sudo service libvirt-bin start; \
    sudo addgroup libvirtd; \
    sudo adduser gitpod libvirtd; \
    sudo adduser gitpod kvm; \
    virsh list --all; \
    ls -la /var/run/libvirt/libvirt-sock
