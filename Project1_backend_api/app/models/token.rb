class Token < ApplicationRecord
  belongs_to :user

  #  enum scope: [:user, :manager]

  validates :token, presence: true, uniqueness: true

  def self.generate(user, scope)
    token = SecureRandom.hex(16)
    user.tokens.create!(token: token, scope: scope)
  end
end
