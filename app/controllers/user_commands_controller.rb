class UserCommandsController < ApplicationController

  def index
    @user_commands = UserCommand.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_commands }
    end
  end


  def show
    @user_command = UserCommand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_command }
    end
  end
 
  def new
    @user_command = UserCommand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_command }
    end
  end

  # GET /user_commands/1/edit
  def edit
    @user_command = UserCommand.find(params[:id])
  end

  # POST /user_commands
  # POST /user_commands.json
  def create
    @user_command = UserCommand.new(params[:user_command])

    respond_to do |format|
      if @user_command.save
        format.html { redirect_to @user_command, notice: 'User command was successfully created.' }
        format.json { render json: @user_command, status: :created, location: @user_command }
      else
        format.html { render action: "new" }
        format.json { render json: @user_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_commands/1
  # PUT /user_commands/1.json
  def update
    @user_command = UserCommand.find(params[:id])

    respond_to do |format|
      if @user_command.update_attributes(params[:user_command])
        format.html { redirect_to @user_command, notice: 'User command was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_commands/1
  # DELETE /user_commands/1.json
  def destroy
    @user_command = UserCommand.find(params[:id])
    @user_command.destroy

    respond_to do |format|
      format.html { redirect_to user_commands_url }
      format.json { head :no_content }
    end
  end
end
