flavor = "vm.ska.cpu.general.small"
use_blockstorage_volume = true
volume_size = 12 # GB. Compatible with SMS-lab's general.v1.tiny 
image_disk_format = "qcow2"
networks = ["4b6b2722-ee5b-40ec-8e52-a6610e14cc51"] # portal-internal (DNS broken on ilab-60)
source_image_name = "openhpc-230804-1754-80b8d714" # https://github.com/stackhpc/ansible-slurm-appliance/pull/298
fatimage_source_image_name = "Rocky-8-GenericCloud-Base-8.9-20231119.0.x86_64.qcow2"
ssh_keypair_name = "slurm-app-ci"
ssh_private_key_file = "~/.ssh/id_rsa"
security_groups = ["default", "SSH"]
floating_ip_network = "CUDN-Internet" # Use FIP to avoid docker ratelimits on portal-internal outbound IP
