# frozen_string_literal: true

class UsersController < OpenReadController
  before_action :set_spending, only: [:show, :update, :destroy]
  skip_before_action :authenticate, only: %i[signup signin]

  # GET /spendings
  def index
    @users = User.all

    render json: @users
  end

  # POST /categories
  def create
    @user = User.new

    if @user.save
      render json: @user, status: :created, location: @category
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)
    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],
                                 creds[:password])
      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_user.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_user.authenticate(pw_creds[:old]) &&
       !(current_user.password = pw_creds[:new]).blank? &&
       current_user.save
      head :no_content
    else
      head :bad_request
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_spending
    @user = User.find(params[:id])
  end

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end
end