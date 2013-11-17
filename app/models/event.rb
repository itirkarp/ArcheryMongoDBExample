class Event
  include Mongoid::Document
  field :name, type: String
  field :event_date, type: Date
  field :type, type: String
  embeds_many :rounds
end
