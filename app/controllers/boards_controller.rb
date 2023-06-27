class BoardsController < ApplicationController
  before_action :set_board, only: %i[ show edit update destroy ]
  before_action :require_login, only: [:edit, :update, :destroy, :show, :index, :create, :new]

  # GET /boards or /boards.json
  def index
    @boards = Board.all
  end

  # GET /boards/1 or /boards/1.json
  def show
  end

  # GET /boards/new
  def new
    @board = Board.new
  end

  # GET /boards/1/edit
  def edit
  end

  # POST /boards or /boards.json
  def create
    @board = current_player.boards.build(board_params)
    @board.white_player_id = current_player.id

    respond_to do |format|
      if @board.save
        format.html { redirect_to board_url(@board), notice: "Board was successfully created." }
        format.json { render :show, status: :created, location: @board }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boards/1 or /boards/1.json
  def update
    @board.white_player_id = current_player.id
    new_move = params[:board][:new_move]
  
    if new_move.present? && valid_move?(new_move)
      if @board.history_string.blank?
        @board.history_string = new_move
      else
        @board.history_string += "/#{new_move}"
      end
    else
      flash[:alert] = "Invalid move format."
      redirect_to board_path
      return
    end
  
    respond_to do |format|
      if @board.save
        format.html { redirect_to board_url(@board), notice: "Board was successfully updated." }
        format.json { render :show, status: :ok, location: @board }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @board.errors, status: :unprocessable_entity }
      end
    end
  end
  
  

  # DELETE /boards/1 or /boards/1.json
  def destroy
    @board.destroy

    respond_to do |format|
      format.html { redirect_to boards_url, notice: "Board was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def board_params
      params.require(:board).permit(:history_string, :game_name, :white_player_id, :black_player_id)
    end
  
    def valid_move?(move)
      move.match?(/\A[a-h][1-8][a-h][1-8][qnrb]?\z/i)
    end

    def require_login
      unless logged_in?
        redirect_to login_path
      end
    end
end



