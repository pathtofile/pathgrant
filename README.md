# PATHGrant
Simple Vangrant and Packer box setup

# Packer
Packer can be used to create a GUI version of the Bento Vagrant box.

## Start base box
First create the Vagrant box, then once its running shut it down it:
```bash
cd packer/vmware
vagrant up
vagrant halt
```

## Build using Packer
Find the full path to the VM, which is somewhere like:
```
pathgrant\vagrant\vmware\.vagrant\machines\pathgrant\vmware_desktop\<guid>\ubuntu-20.04-amd64.vmx
```

Then edit the `packer/ubuntu_gui.json` to add the VMX Path in the `source_path` key.
Then Build the box:
```bash
cd packer
packer build ubuntu_gui.json
```

## Import box into vagrant
```bash
vagrant box add ubuntu-20.04-gui.box --name ubuntu-20.04-gui --force
```

# Vagrant
There is both a non-GUI and a GUI box.
The GUI box requires you to first run Packer to build it.

### Run
Start box from Vagrant
```bash
cd vagrant
vagrant up --provider hyperv
```
