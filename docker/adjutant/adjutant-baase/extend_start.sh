#!/bin/bash
if [[ ! -d "/var/log/kolla/adjutant" ]]; then
    mkdir -p /var/log/kolla/adjutant
fi
if [[ $(stat -c %U:%G /var/log/kolla/adjutant) != "adjutant:kolla" ]]; then
    chown -R adjutant:kolla /var/log/kolla/adjutant
fi
if [[ $(stat -c %a /var/log/kolla/adjutant) != "755" ]]; then
    chmod 755 /var/log/kolla/adjutant
fi
. /usr/local/bin/kolla_adjutant_extend_start