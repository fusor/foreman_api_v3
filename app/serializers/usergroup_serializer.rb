class UsergroupSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :created_at, :updated_at
  #has_many :domains
  #has_many :hostgroups
end
