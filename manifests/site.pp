# site
node 'db.local' { include role::db }
node default { include role::default }
node 'puppet.local' { include role::puppetserver }
node 'web.local' { include role::webserver }
