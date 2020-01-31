require_relative('models/ticket')
require_relative('models/film')
require_relative('models/customer')

require('pry-byebug')


customer1 = Customer.new({
  'name' => 'Paul',
  'funds' => '35'
  })
customer1.save()

film1 = Film.new({
  'title' => 'Haunting of Hill House',
  'price' => 5
  })
film1.save()

ticket1 = Ticket.new({
  'customer_id' => customer1.id,
  'film_id' => film1.id
  })
ticket1.save()

binding.pry
nil
