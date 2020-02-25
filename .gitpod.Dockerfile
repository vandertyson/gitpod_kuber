FROM gitpod/workspace-full
USER gitpod
RUN sudo apt-get install -yq qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils         
RUN service libvirt start
RUN sudo addgroup libvirtd
RUN sudo adduser gitpod libvirtd
RUN sudo adduser gitpod kvm
RUN virsh list --all   
RUN ls -la /var/run/libvirt/libvirt-sock
