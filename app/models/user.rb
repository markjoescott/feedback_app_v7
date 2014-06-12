class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questionnaires
  has_many :answers, :through => :questionnaires


  validates(:username, { :presence => true})

  after_create :send_welcome_email

   # def send_welcome_email
   #    UserMailer.welcome_email(self)
    # @user = current_user
    # @url  = "http://localhost:3000"
    # end

    def send_welcome_email
    @user = User.last.email


      # if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver

        # format.html { redirect_to(@user, :notice => 'User was successfully created.') }
        # format.json { render :json => @user, :status => :created, :location => @user }
      # else
        # format.html { render :action => "new" }
      #   format.json { render :json => @user.errors, :status => :unprocessable_entity }
      # end
    end
  #   def welcome_email(user)
  #   @user = user
  #   @url  = "http://localhost:3000"
  #   mail(:to => user.email,
  #        :subject => "Welcome to My Awesome Site")



end



