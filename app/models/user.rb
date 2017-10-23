class User < ApplicationRecord
  has_many :translations
  has_many :word_1, through: :translations, class_name: 'Word'
  has_many :word_2, through: :translations, class_name: 'Word'
end
