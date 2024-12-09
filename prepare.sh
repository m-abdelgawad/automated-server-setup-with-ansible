#!/bin/bash

# Step 1: Check if SSH keys exist, generate if not
if [ ! -f ~/.ssh/id_rsa ]; then
    echo "Generating SSH keys..."
    ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -q -N ""
else
    echo "SSH keys already exist. Skipping key generation."
fi

# Step 2: Ensure the SSH directory has proper permissions
chmod 700 ~/.ssh
echo "Ensured correct permissions for ~/.ssh directory."

# Step 3: Add the public key to authorized_keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
echo "Added public key to ~/.ssh/authorized_keys and set permissions."

# Step 4: Ensure the SSH server allows root login
if grep -q "^PermitRootLogin" /etc/ssh/sshd_config; then
    sed -i 's/^PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
else
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
fi
echo "Enabled root login in SSH configuration."

# Step 5: Reload the SSH service to apply changes
systemctl reload sshd
echo "Reloaded SSH service."

# Step 6: Test SSH connection to localhost
echo "Testing SSH connection to localhost..."
ssh -o StrictHostKeyChecking=no root@localhost "echo 'SSH setup is successful.'"

echo "Root SSH access setup complete without a password."

# Step 7: Run Ansible Playbook with --ask-vault-pass
echo "Running Ansible playbook..."
ansible-playbook -i inventory/production site.yml --ask-vault-pass
if [ $? -eq 0 ]; then
    echo "Ansible playbook ran successfully."
else
    echo "Ansible playbook failed. Please check the error logs."
    exit 1
fi
