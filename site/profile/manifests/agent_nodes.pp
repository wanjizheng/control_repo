class profile::agent_nodes{
  include puppetlabs-docker
  dockeragent::node{'web.puppet.vm':}
  dockeragent::node{'db.puppet.vm':}
}
