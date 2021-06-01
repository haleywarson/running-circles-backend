class User < ApplicationRecord
    has_secure_password
    has_many :user_circles
    has_many :circles, through: user_circles
    has_many :user_runs
    has_many :runs, through: :user_runs
end
