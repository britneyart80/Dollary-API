class EnvelopesController < ProtectedController
  before_action :set_envelope, only: [:show, :update, :destroy]

  # GET /envelopes
  def index
    @envelopes = current_user.envelopes

    render json: @envelopes
  end

  # GET /envelopes/1
  def show
    render json: @envelope
  end

  # POST /envelopes
  def create
    @envelope = current_user.envelopes.build(envelope_params)

    if @envelope.save
      render json: @envelope, status: :created, location: @envelope
    else
      render json: @envelope.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /envelopes/1
  def update
    if @envelope.update(envelope_params)
      render json: @envelope
    else
      render json: @envelope.errors, status: :unprocessable_entity
    end
  end

  # DELETE /envelopes/1
  def destroy
    @envelope.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envelope
      @envelope = current_user.envelopes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def envelope_params
      params.require(:envelope).permit(:budget, :month, :year)
    end
end
