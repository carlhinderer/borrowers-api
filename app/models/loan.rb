class Loan < ApplicationRecord
  belongs_to :friend
  belongs_to :article

  validates :friend, presence: true
  validates :article, presence:  true
end
