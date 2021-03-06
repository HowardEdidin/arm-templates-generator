# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure end
module Azure::ARM end
module Azure::ARM::DocumentDB end

require_relative 'consistency_bounded_staleness'
require_relative 'consistency_other'
require_relative 'database_accounts_properties'
require_relative 'database_accounts'

class Azure::ARM::Template
  def database_account(init=nil,&block)
    conf = Azure::ARM::DocumentDB::DatabaseAccount::Configurator.new self
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def consistency_bounded_staleness(init=nil,&block)
    conf = Azure::ARM::DocumentDB::ConsistencyBoundedStaleness::Configurator.new
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
  def consistency_other(init=nil,&block)
    conf = Azure::ARM::DocumentDB::ConsistencyOther::Configurator.new
    conf.create init
    conf.instance_exec(conf.parent,&block) if block
    conf.parent
  end
end

