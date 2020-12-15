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


puts '• Creating companies:'
theodo   = Company.create!(name:'Theodo',  url:'https://www.theodo.fr/',  industry:'Internet',              size:'51-200 employés',  info:'patati patata')
newtonx  = Company.create!(name:'Newtonx', url:'https://www.newtonx.com', industry:'Market research',       size:'51-200 employés',  info:'patati patata')
dolead   = Company.create!(name:'Dolead',  url:'https://www.theodo.fr/',  industry:'Internet',              size:'51-200 employés',  info:'patati patata')
side     = Company.create!(name:'Side.co', url:'https://www.side.co/fr/', industry:'Internet',              size:'51-200 employés',  info:'patati patata')
le_chti  = Company.create!(name:'Le Chti', url:'https://lechti.com/',     industry:'Printing and editing',  size:'51-200 employés',  info:'patati patata')
puts '   Companies created'


puts '• Adding countries to companies:'
theodo_fr   = Country.create!(iso:"FR",  name:"France",        company: theodo)
newtonx_us  = Country.create!(iso:"US",  name:"United States", company: newtonx)
dolead_fr   = Country.create!(iso:"FR",  name:"France",        company: dolead)
dolead_us   = Country.create!(iso:"US",  name:"United States", company: dolead)
side_fr     = Country.create!(iso:"FR",  name:"France",        company: side)
le_chti_fr  = Country.create!(iso:"FR",  name:"France",        company: le_chti)
puts '   Countries added'


puts '• Adding cities to companies country:'
City.create!(name:"Paris",    country: theodo_fr)
City.create!(name:"New York", country: newtonx_us)
City.create!(name:"Paris",    country: dolead_fr)
City.create!(name:"Boston",   country: dolead_us)
City.create!(name:"Paris",    country: side_fr)
City.create!(name:"Lille",    country: le_chti_fr)
puts '   Cities added'


puts '• Adding contacts to companies:'
# City.create!(name:"Paris",    country: theodo_fr)
# City.create!(name:"New York", country: newtonx_us)
# City.create!(name:"Paris",    country: dolead_fr)
# City.create!(name:"Boston",   country: dolead_us)
# City.create!(name:"Paris",    country: side_fr)
# City.create!(name:"Lille",    country: le_chti_fr)
puts '   Contacts added'
