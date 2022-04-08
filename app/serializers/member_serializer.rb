class MemberSerializer
  include JSONAPI::Serializer
  attributes :name
  attributes :allies
  attributes :enemies
  attributes :affiliations
end