class MyMovie < ApplicationRecord
    belongs_to :user

    validates_presence_of :movie_identification
end
