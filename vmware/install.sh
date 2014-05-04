SCRIPT=$(readlink -f $0)
BASEDIR=$(dirname $SCRIPT)

cd ~/maas

cp "$BASEDIR/vmware.template" ~/maas/etc/maas/templates/power/
cp "$BASEDIR/vmware.py" ~/maas/etc/maas/templates/power/
patch -p0 < "$BASEDIR/vmrun_power_schema.diff"
