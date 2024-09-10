class Choice < ApplicationRecord
    belongs_to :quiz

    validates :content, presence: true
    validates :answer, inclusion: { in: [ true, false ] }
end
