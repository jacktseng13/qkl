class QklsController < ApplicationController
  before_action :set_qkl, only: [:show, :edit, :update, :destroy]

  # GET /qkls
  # GET /qkls.json
  def index
    @qkls = Qkl.all
  end

  # GET /qkls/1
  # GET /qkls/1.json
  def show
  end

  # GET /qkls/new
  def new
    @qkl = Qkl.new
  end

  # GET /qkls/1/edit
  def edit
  end

  # POST /qkls
  # POST /qkls.json
  def create
    @qkl = Qkl.new(qkl_params)

    respond_to do |format|
      if @qkl.save
        format.html { redirect_to @qkl, notice: 'Qkl was successfully created.' }
        format.json { render :show, status: :created, location: @qkl }
      else
        format.html { render :new }
        format.json { render json: @qkl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qkls/1
  # PATCH/PUT /qkls/1.json
  def update
    respond_to do |format|
      if @qkl.update(qkl_params)
        format.html { redirect_to @qkl, notice: 'Qkl was successfully updated.' }
        format.json { render :show, status: :ok, location: @qkl }
      else
        format.html { render :edit }
        format.json { render json: @qkl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qkls/1
  # DELETE /qkls/1.json
  def destroy
    @qkl.destroy
    respond_to do |format|
      format.html { redirect_to qkls_url, notice: 'Qkl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @qkl = Qkl.find(params[:id])
    @qkl.votes.create
    redirect_to(qkls_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qkl
      @qkl = Qkl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qkl_params
      params.require(:qkl).permit(:xuexi, :jianxing)
    end
end
