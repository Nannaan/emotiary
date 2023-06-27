class Diary < ApplicationRecord
  validates :content, presence: true
end
