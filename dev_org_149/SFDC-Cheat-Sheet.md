`sf --version`
    @salesforce/cli/2.89.8 win32-x64 node-v22.15.0

`sf project generate --name dev_org_149`

#  login
sf org login web --alias dev_org

# default org
cd .\dev_org_149
sf config set target-org=dev_org