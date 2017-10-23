class Word < ApplicationRecord
  belongs_to :language
  has_many :users, through: :translations

  enum type: [:adjective, :common_name, :verb]
  enum gender: [:no_gender, :male, :female, :neutral, :plural]
end
