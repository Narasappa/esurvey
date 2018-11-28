class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  filter_access_to :all
  before_filter :find_political_party


  def find_political_party
   @political_party = PoliticalParty.find(params[:political_party_id])
  end

  def index
    #@users = @political_party.users.all
    @active_users = User.active(@political_party.id)
    @inactive_users = User.inactive(@political_party.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = @political_party.users.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @user.build_picture
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = @political_party.users.find(params[:id])
    @user.build_picture if @user.picture.nil?
  end

  # POST /users
  # POST /users.json
  def create
   @user = @political_party.users.new(params[:user])
    @user.build_picture if @user.picture.nil?
    respond_to do |format|
      if @user.save
        format.html { redirect_to [@political_party, @user], notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = @political_party.users.find(params[:id])
     @user.build_picture if @user.picture.nil?
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to [@political_party, @user], notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = @political_party.users.find(params[:id])
    #@user.destroy
    @user.update_attributes(:is_active=> !@user.is_active)
    respond_to do |format|
      format.html { redirect_to  [@political_party, @user]}
      format.json { head :no_content }
    end
  end
end
