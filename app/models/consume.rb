class Consume < ActiveRecord::Base
	belongs_to :account 
	def self.dashboard
		data = Consume.select("consume_id,sum(cost)as total").consume("cost")
		data.map{|d|[Consume.find(d.cost).name,d.total]}
	end
end
