class CommunityMessagesController < ApplicationController
  before_action :set_community_message, only: [:show, :edit, :update, :destroy]

  # GET /community_messages
  # GET /community_messages.json
  def index
    @community_messages = CommunityMessage.all
  end

  # GET /community_messages/1
  # GET /community_messages/1.json
  def show
  end

  # GET /community_messages/new
  def new
    @community_message = CommunityMessage.new
  end

  # GET /community_messages/1/edit
  def edit
  end

  # POST /community_messages
  # POST /community_messages.json
  def create
    @community_message = CommunityMessage.new(community_message_params)

    respond_to do |format|
      if @community_message.save
        format.html { redirect_to @community_message, notice: 'Community message was successfully created.' }
        format.json { render :show, status: :created, location: @community_message }
      else
        format.html { render :new }
        format.json { render json: @community_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_messages/1
  # PATCH/PUT /community_messages/1.json
  def update
    respond_to do |format|
      if @community_message.update(community_message_params)
        format.html { redirect_to @community_message, notice: 'Community message was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_message }
      else
        format.html { render :edit }
        format.json { render json: @community_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_messages/1
  # DELETE /community_messages/1.json
  def destroy
    @community_message.destroy
    respond_to do |format|
      format.html { redirect_to community_messages_url, notice: 'Community message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_message
      @community_message = CommunityMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_message_params
      params.require(:community_message).permit(:community_id, :user_id, :body)
    end
end
