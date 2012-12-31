class Board2sController < ApplicationController
  # GET /board2s
  # GET /board2s.json
  def index
    @products_url = "asdfasdfasdfsdfa"
    @board2s = Board2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @board2s }
    end
  end

  # GET /board2s/1
  # GET /board2s/1.json
  def show
    @board2 = Board2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @board2 }
    end
  end

  # GET /board2s/new
  # GET /board2s/new.json
  def new
    @board2 = Board2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @board2 }
    end
  end

  # GET /board2s/1/edit
  def edit
    @board2 = Board2.find(params[:id])
  end

  # POST /board2s
  # POST /board2s.json
  def create
    @board2 = Board2.new(params[:board2])

    respond_to do |format|
      if @board2.save
        format.html { redirect_to @board2, notice: 'Board2 was successfully created.' }
        format.json { render json: @board2, status: :created, location: @board2 }
      else
        format.html { render action: "new" }
        format.json { render json: @board2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /board2s/1
  # PUT /board2s/1.json
  def update
    @board2 = Board2.find(params[:id])

    respond_to do |format|
      if @board2.update_attributes(params[:board2])
        format.html { redirect_to @board2, notice: 'Board2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @board2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board2s/1
  # DELETE /board2s/1.json
  def destroy
    @board2 = Board2.find(params[:id])
    @board2.destroy

    respond_to do |format|
      format.html { redirect_to board2s_url }
      format.json { head :no_content }
    end
  end
end
