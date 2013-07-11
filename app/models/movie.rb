class Movie < ActiveRecord::Base
  belongs_to :users
  attr_accessible :movie
end
