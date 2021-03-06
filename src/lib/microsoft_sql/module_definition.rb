# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure end
module Azure::ARM end
module Azure::ARM::Sql end

require_relative 'databases_base_common'
require_relative 'databases_base_all'
require_relative 'databases_base'
require_relative 'firewallrules_base'
require_relative 'servers_properties'
require_relative 'servers'
require_relative 'servers_resources_item0'
require_relative 'servers_resources_item1'
require_relative 'databases_child'
require_relative 'databases'
require_relative 'firewallrules_child'
require_relative 'firewallrules'

class Azure::ARM::Template
  def server(init=nil,&block)
    conf = Azure::ARM::Sql::Server::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def servers_resources_item0(init=nil,&block)
    conf = Azure::ARM::Sql::ServersResourcesItem0::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def servers_resources_item1(init=nil,&block)
    conf = Azure::ARM::Sql::ServersResourcesItem1::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def databases_child(init=nil,&block)
    conf = Azure::ARM::Sql::DatabasesChild::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def database(init=nil,&block)
    conf = Azure::ARM::Sql::Database::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def firewallrules_child(init=nil,&block)
    conf = Azure::ARM::Sql::FirewallrulesChild::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def firewallrule(init=nil,&block)
    conf = Azure::ARM::Sql::Firewallrule::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def databases_base_common(init=nil,&block)
    conf = Azure::ARM::Sql::DatabasesBaseCommon::Configurator.new
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def databases_base_all(init=nil,&block)
    conf = Azure::ARM::Sql::DatabasesBaseAll::Configurator.new
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def databases_base(init=nil,&block)
    conf = Azure::ARM::Sql::DatabasesBase::Configurator.new
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def firewallrules_base(init=nil,&block)
    conf = Azure::ARM::Sql::FirewallrulesBase::Configurator.new
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
end

