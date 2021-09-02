class User < ApplicationRecord
    has_many :reviews
    has_many :workouts, through: :reviews
end
