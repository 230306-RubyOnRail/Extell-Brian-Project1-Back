class ReimbursementController < ApplicationController
  #def home
  #  render json: {title: "Placeholder"}
  #end

  def index
    render json: {"Greeting":  "Welcome to the index"}
  end

  def list
    @reimbursement = Reimbursement.all

    render json: @reimbursement, include: [:user]
  end

  def show
    #@reimbursement = Reimbursement.find(params[:user_id])
    @reimbursement = Reimbursement.where(user_id: params[:id])

    render json: @reimbursement
  end

  def create
    #going to have to change Reibursement to current_user or an equivalent when we have sessions working
    @reimbursement = Reimbursement.new(reimbursement_params)

    if @reimbursement.save
      #puts ("****if**** #{reimbursement_path}")
      redirect_to reimbursement_path(@reimbursement)
    else
      #puts ("****else**** #{reimbursement_path}")
      render new
    end
  end

  def new
    @reimbursement = Reimbursement.new
  end

  def destroy
    @reimbursement = Reimbursement.find(params[:id])

    puts("----delete----- #{reimbursement_path}")

    #@reimbursement.destroy

    # this just isnt routing right here, it destroys fine though.
    # temporary alternative. show the whole list of reimbursements
    #redirect_to reimbursement_path
    render json: {"message": "reimbursement deleted"}, status: :ok

    # :ok is a symbol representing HTTP status code 200.
    # In Ruby on Rails, HTTP status codes are represented by symbols,
    # not integers or strings.
  end

  def reimbursement_params
    params.require(:reimbursement).permit(:user_id, :status,	:amount,	:content) #.merge(user_id: current_user.id)
  end
end
