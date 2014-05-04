#!/usr/bin/env python

import pysphere
import sys


def change_system_state(power_address, power_user, power_pass, vm_name,
                        power_change):
    try:
        server = pysphere.VIServer()
        server.connect(power_address, power_user, power_pass)
        vm = server.get_vm_by_name(vm_name)
        if power_change == 'on':
            vm.power_on()
        else:
            vm.power_off()
    except Exception as e:
        raise e
    finally:
        if server:
            server.disconnect()

if __name__ == "__main__":
    # print sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], sys.argv[5]
    change_system_state(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4],
                        sys.argv[5])
