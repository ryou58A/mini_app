class Quiz < ApplicationRecord
  has_many :choices, dependent: :destroy

  validates :content, presence: true
end
