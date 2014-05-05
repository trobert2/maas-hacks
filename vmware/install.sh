SCRIPT=$(readlink -f $0)
BASEDIR=$(dirname $SCRIPT)

cd ~/maas

cp "$BASEDIR/vmware.template" ~/maas/etc/maas/templates/power/
sudo cp "$BASEDIR/vmware.py" /usr/bin/
patch -p0 < "$BASEDIR/vmrun_power_schema.diff"
