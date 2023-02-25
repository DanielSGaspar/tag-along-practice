# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Location.destroy_all
Beach.destroy_all

puts 'Creating locations...'

ericeira = Location.create(name: 'Ericeira', description: 'Ericeira is one of Portugals most famous surf spots. It has a whole
  lot of beaches, including point breaks and sandbreaks.', image_url: 'https://images.unsplash.com/photo-1519907362090-ac2b395e476b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
linha = Location.create(name: 'Linha(Lisbon)', description: 'Take the train from Lisbon to Cascais and all beaches you encounter
on the way are located in what the locals call "Linha". More of a winter spot, as the beaches need quite a bit of swell
to work', image_url: 'https://images.unsplash.com/photo-1575478844777-d8361533206b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
sintra = Location.create(name: 'Sintra', description: 'Cold water and totally exposed to the atlantic ocean, when the wind is
  right, you will find amazing waves at the most beautiful beaches.', image_url: 'https://images.unsplash.com/photo-1591549590250-10ab146d80d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')

puts 'Creating beaches...'
  # Ericeira Beaches
Beach.create(name: 'Sao Julião', description: "Ericeira's most sudden beach. It's not as consistent as other beaches in
  Ericiera but it is therefore much less crowded!", location_id: ericeira.id, image_url: 'https://images.unsplash.com/photo-1519907362090-ac2b395e476b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
puts 'created beach 1'
Beach.create(name: 'Foz do Lizandro', description: "Great sandbreak with some gnarly hollow waves when the conditions
  are right", location_id: ericeira.id, image_url: 'https://images.unsplash.com/photo-1587046815976-d77bc5c01c14?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80')
puts 'created beach 2'
Beach.create(name: "Ribeira D'Ilhas", description: "Probably the most famous of the beachs in Ericiera, most known for
  it's long righthand point break", location_id: ericeira.id, image_url: 'https://images.unsplash.com/photo-1521734514390-255a6ad11206?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1674&q=80')
puts 'created beach 3'

# Linha Beaches
Beach.create(name: 'Carcavelos', description: "One of the most crowded beachs close to Lisbon. Since it's facing
  south-west, it can profit from the common north wind to generate some amazing tubey waves.", location_id: linha.id, image_url: 'https://images.unsplash.com/photo-1575478844777-d8361533206b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
Beach.create(name: 'Sao Pedro', description: 'A rather mellow right hand point break. Great for
  longboarders.', location_id: linha.id, image_url: 'https://images.unsplash.com/photo-1540457775988-f46bab98bbb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1064&q=80')

# Sintra Beaches
Beach.create(name: 'Adraga', description: 'A less known beach right next to Praia Grande. It will often have very
  similar waves to Praia Grande but a fraction of the surfers.', location_id: sintra.id, image_url: 'https://images.unsplash.com/photo-1579646696549-4ef5f966c177?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')
Beach.create(name: 'Praia Grande', description: 'Probably the most famous of all the beaches in sintra.',
             location_id: sintra.id, image_url: 'https://images.unsplash.com/photo-1591549590250-10ab146d80d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')

puts 'Seeding successful'
