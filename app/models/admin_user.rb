class AdminUser < ActiveRecord::Base

# To configure a diff db table name:
# self.table_name = "admin_users"

has_secure_password

EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i 
FORBIDDEN_USERNAMES = ['aaa','zzz','eee']

validates_presence_of :email 


end
