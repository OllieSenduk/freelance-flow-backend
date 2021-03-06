class User < ApplicationRecord
    include ActiveModel::Validations

    # Validations
    validates :email, uniqueness: true
    validates :email, email: true
    validates :password_digest, presence: true

    # add-ons
    ## From ActiveModel
    has_secure_password
end
