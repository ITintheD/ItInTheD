class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    #@event = Event.find(params[:id])#.paginate(:page => params[:page])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
  


  def students
    @students = User.find(:all, :conditions => { :user_type => 'Student' })

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def instructors
    @instructors = User.find(:all, :conditions => { :user_type => 'Instructor' })

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end




  def new
    @user = User.new
  end
  
  def create
    raise
    @user = User.create(params[:user])
    redirect_to show_people_path(@user)
    
  end
  
  def edit 
    @user = User.find(params[:id])
  end
  
  def update

    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to show_people_path(@user)
    
  end
  # DELETE /people/show/1
  # DELETE /people/show/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_path }
      format.json { head :no_content }
  end
  end

end
