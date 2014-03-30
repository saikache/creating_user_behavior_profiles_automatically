class History < ActiveRecord::Base
  attr_accessible :email, :employeeid, :user_name,:tfile
has_many :user_commands

 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
 
 validates_presence_of :user_name




    has_attached_file :tfile,
                  :url  => "/assets/history/:id/:basename.:extension",
                  :path => ":rails_root/public/assets/history/:id/:basename.:extension"

    validates_attachment_presence :tfile
    validates_attachment_size :tfile, :less_than => 6.megabytes
    validates_attachment_content_type :tfile,
    :content_type => ["application/txt","text/plain"]
  
end
