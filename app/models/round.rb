class Round
  include Mongoid::Document
  field :name, type: String
  field :face, type: String
  field :distance, type: Integer
  field :total_arrows, type: Integer
  field :scores, type: Array
  embedded_in :event
  belongs_to :archer

  attr_accessor :event_id
end
