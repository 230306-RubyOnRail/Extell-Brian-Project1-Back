class ChangeManagerDataForUsers < ActiveRecord::Migration[7.0]
  # might have to run this one AFTER seeds unless i change seeds's values for managers to strings moving forward
  # ps might have to comment out your routes too before migrating this
  def up
    User.where(email: 'janedoe@gmail.com').update(manager: "manager")
    User.where(email: 'jdoe@gmail.com').update(manager: "user")
    User.where(email: 'sg23@gmail.com').update(manager: "user")
  end
end