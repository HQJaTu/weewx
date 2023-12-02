addFilter("summary-not-capitalized")
addFilter("no-manual-page-for-binary weectl")
addFilter("no-manual-page-for-binary weewxd")
addFilter("non-standard-gid")
addFilter("non-standard-uid")
addFilter("dangerous-command-in-%pre cp")
addFilter("dangerous-command-in-%post mv")
addFilter("percent-in-%post")
# the drivers have shebang with env
addFilter("wrong-script-interpreter")
# the driver scripts are not executable (then why have shebang?)
addFilter("non-executable-script")
# logwatch stuff belongs in /etc in case logwatch not installed
addFilter("executable-marked-as-config-file /etc/weewx/logwatch/scripts/services/weewx")