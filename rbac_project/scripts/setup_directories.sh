#!/bin/bash

mkdir -p /dept/hr /dept/it /dept/finance

chown :hr_group /dept/hr
chmod 770 /dept/hr

chown :it_group /dept/it
chmod 770 /dept/it

chown :finance_group /dept/finance
chmod 770 /dept/finance
