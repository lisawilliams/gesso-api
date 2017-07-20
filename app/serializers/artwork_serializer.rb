class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :yearcreated, :artform, :materials, :surface, :dimensions
  has_one :show
end
