class Translation < ApplicationRecord
  belongs_to :user
  belongs_to :word_1, class_name: 'Word', foreign_key: :word_1_id
  belongs_to :word_2, class_name: 'Word', foreign_key: :word_2_id
end
