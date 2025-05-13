#!/bin/bash

# Create groups
groupadd hr_group
groupadd it_group
groupadd finance_group

# Create users and add to respective groups
useradd -m -s /bin/bash alice
usermod -aG hr_group alice
echo "alice:Password123!" | chpasswd

useradd -m -s /bin/bash bob
usermod -aG it_group bob
echo "bob:Password123!" | chpasswd

useradd -m -s /bin/bash carol
usermod -aG finance_group carol
echo "carol:Password123!" | chpasswd
