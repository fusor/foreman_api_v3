class SubnetSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name,
             :network, :cidr, :mask, :priority, :vlanid, :gateway, :dns_primary, :dns_secondary,
             :from, :to,
             :created_at, :updated_at
  #has_many :domains
  #has_many :hostgroups
end
