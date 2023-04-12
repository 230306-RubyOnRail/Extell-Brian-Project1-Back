class User < ApplicationRecord
  has_many :reimbursements
  has_one :session
  has_one :token
end
