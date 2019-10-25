class User < ActiveRecord::Base
    has_many :favorites
    has_many :drinks, through: :favorites
    validates :name, uniqueness: true
end