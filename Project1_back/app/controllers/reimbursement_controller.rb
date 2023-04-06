class ReimbursementController < ApplicationController
  # managers cannot make new requests
  def new
  end

  # managers cannot make new requests
  def create
  end

  # managers cannot make delete requests
  def delete
  end

  # only managers can change this from pending to approved or denied
  def status
  end

  def update
  end

  def edit
  end


  def show
  end

  # an employee will only get back a list of reimbursement requests that THEY submitted
  # while a manager will get back a list of ALL reimbursement requests
  def list
  end

end
