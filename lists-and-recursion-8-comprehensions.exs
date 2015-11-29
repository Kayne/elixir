tax_rates = [ NC: 0.075, TX: 0.08 ]

orders = [
  [ id: 123, ship_to: :NC, net_amount: 100.00  ],
  [ id: 124, ship_to: :OK, net_amount: 35.50 ],
  [ id: 125, ship_to: :TX, net_amount: 24.00 ],
  [ id: 126, ship_to: :TX, net_amount: 44.80 ],
  [ id: 127, ship_to: :NC, net_amount: 25.00 ],
  [ id: 128, ship_to: :MA, net_amount: 10.00 ],
  [ id: 129, ship_to: :CA, net_amount: 102.00 ],
  [ id: 120, ship_to: :NC, net_amount: 50.00 ]
]

# module version
defmodule Taxation do
	def apply_tax( orders, tax_rates ) do
		for order <- orders, do: Dict.put_new( order, :total_amount, total_amount( order, tax_rates ) )
	end

	def total_amount( order, tax_rates ) do
		order[:net_amount] * (1.0 + (tax_rates[order[:ship_to]] || 0.0))
	end
end

# shorter version
# for order <- orders, do: Dict.put_new( order, :total_amount, order[:net_amount] * (1.0 + (tax_rates[order[:ship_to]] || 0.0)) )

IO.inspect Taxation.apply_tax( orders, tax_rates )
