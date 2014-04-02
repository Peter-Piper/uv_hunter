# encoding: UTF-8
fish = [
    Species.find_or_create_by(name: 'Havørred'),
    Species.find_or_create_by(name: 'Rødstpætte'),
    Species.find_or_create_by(name: 'Torsk')
]

attr = [
    {description: 'Fantastisk fisketur, mere af den slags..', gps_coords: '55.740713,12.593481'},
    {description: 'Fisk - masser af fisk!', gps_coords: '55.967346,11.560757'},
    {description: 'Lorte vejr, men masser af liv', gps_coords: '55.338209,11.088345'},
    {description: 'Vildere end sharknado!!', gps_coords: '55.447403,11.181729'}
]

(1..10).each do |i|
  attr_index = (i%4) # generates a number between 0 and 3
  catch_count= (i%3) + 1 # generates a number between 1 and 3

  rep = CatchReport.create(attr[attr_index].merge(user_id: User.first.id))

  puts "catch count: #{catch_count}"
  catch_count.times do |c|
    rep.catches.create!(length: ((attr_index + 1) * (2 + c)) * 16, weight: ((catch_count + 1) * (2 + c)) * 12, fish_id: fish[c].id)
  end
end
