# email:string
# password_digest:string

# We won't be interacting with password_digest whenever we create a user. We'll instead interact virtual attributes that comes with has_secured_password. What it'll do for us is:
  # 1. has_secure_password will check if password & password confirmation matches each other.
  # 2. Once matched, it'll run through bcrypt to create a digest 
  # 3. Assign that digest to password_digest for us
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  # This is a rails feature for password
  has_secure_password

  # Rails feature to ensure an email is present before making an entry into the database
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
  # The other way of validating is through migration table.
    # t.string: email, null: false
    # This will ensure that email needs to be present in order to create a user/data
end
