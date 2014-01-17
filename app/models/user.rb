class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  attr_accessible :is_a_broker, :name


  has_many :favorites
  has_many :apartments, through: :favorites

end


# def borrow_me(borrower)
  #  borrow_record = self.borrows.build(user_id: borrower.id, borrowed: true)
  #  borrow_record.save
  # end

  # def borrower
  #  borrow = self.borrows.find_by_borrowed(true) # give back current borrowed
  #  User.find(borrow.user_id)
  # end
