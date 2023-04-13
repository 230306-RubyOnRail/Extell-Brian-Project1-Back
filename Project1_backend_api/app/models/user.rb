class User < ApplicationRecord
  has_many :reimbursements
  has_one :session
  has_one :token

  has_secure_password
end
