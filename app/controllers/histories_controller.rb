class HistoriesController < ApplicationController

  def index
    @histories = History.all
  end

  def show
    @history = History.find(params[:id])
    @arr = []
    File.open("#{Rails.root}/public/assets/history/#{@history.id}/#{@history.tfile_file_name}","r").each_line do |dd|
      @arr << dd
      @h = Hash.new 0 
      @arr.each{|x| @h[x] += 1}
    end
  end

  def new
    @history = History.new
  end

  def edit
    @history = History.find(params[:id])
  end

  def create
    @history = History.new(params[:history])

    respond_to do |format|
      if @history.save
        format.html { redirect_to @history, notice: 'History was successfully created.' }
        format.json { render json: @history, status: :created, location: @history }
      else
        format.html { render action: "new" }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @history = History.find(params[:id])

    respond_to do |format|
      if @history.update_attributes(params[:history])
        format.html { redirect_to @history, notice: 'History was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @history.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @history = History.find(params[:id])
    @history.destroy

  end
end
