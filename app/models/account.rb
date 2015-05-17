class Account < ActiveRecord::Base
	has_many :consumes
	belongs_to :user
end
