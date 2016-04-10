class ImageSerializer < ActiveModel::Serializer

  attributes :id, :name,
             :uuid, :username,
             :created_at, :updated_at

 # has_one :operatingsystem
  has_one :architecture
 # has_one :compute_resource

#  has_many :hosts

end