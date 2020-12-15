puts 'Destroy all the database'
Country.destroy_all
City.destroy_all
Contact.destroy_all
Company.destroy_all
Prospection.destroy_all
User.destroy_all

puts 'Database clean'
puts ' '

puts '_______________ Start seeding the database _______________'
puts '• Creating users:'
marc     = User.create!(first_name:'Marc',     last_name:'FullStack',       company:'Techno2u',   email:'marc@test.com',      password:'azerty')
augustin = User.create!(first_name:'Augustin', last_name:'Dourtealacreme',  company:'Techno2u',   email:'augustin@test.com',  password:'azerty')
pierre   = User.create!(first_name:'Pierre',   last_name:'Pedro',           company:'Techno2u',   email:'pierre@test.com',    password:'azerty')
basile   = User.create!(first_name:'Basile',   last_name:'DJBaz',           company:'Techno2u',   email:'basile@test.com',    password:'azerty')
puts '   Users created'


puts '• creating companies:'
theodo   = Company.create!(name:'Theodo',  url:'https://www.theodo.fr/',  industry:'Internet',              size:'51-200 employés',  info:'patati patata')
newtonx  = Company.create!(name:'Newtonx', url:'https://www.newtonx.com', industry:'Market research',       size:'51-200 employés',  info:'patati patata')
dolead   = Company.create!(name:'Dolead',  url:'https://www.theodo.fr/',  industry:'Internet',              size:'51-200 employés',  info:'patati patata')
side     = Company.create!(name:'Side.co', url:'https://www.side.co/fr/', industry:'Internet',              size:'51-200 employés',  info:'patati patata')
le_chti  = Company.create!(name:'Le Chti', url:'https://lechti.com/',     industry:'Printing and editing',  size:'51-200 employés',  info:'patati patata')
puts '   Companies created'


puts '• Creating/Adding locations to companies'
# theodo_location   = Company.create!(country:'Theodo',  city:'https://www.theodo.fr/',  industry:'Internet')
# newtonx_location  = Company.create!(country:'Newtonx', city:'https://www.newtonx.com', industry:'Market research')
# dolead_location   = Company.create!(country:'Dolead',  city:'https://www.theodo.fr/',  industry:'Internet')
# side_location     = Company.create!(country:'Side.co', city:'https://www.side.co/fr/', industry:'Internet')
# le_chti_location  = Company.create!(country:'Le Chti', city:'https://lechti.com/',     industry:'Printing and editing')
