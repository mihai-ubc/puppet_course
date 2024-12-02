# site
node 'db.as.ubc.ca' { include role::db }
node default { include role::default }
node 'puppet.as.ubc.ca' { include role::puppetserver }
node 'web.as.ubc.ca' { include role::webserver }
