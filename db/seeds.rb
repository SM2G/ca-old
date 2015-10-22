
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Employee.create()


## Document models
## ==============================
Document.destroy_all
Document.create(document_name:'Piece d\'identité'                 , warning_days:2   , critical_days:0   , expire_days:0  )
Document.create(document_name:'Détection d\'explosifs'            , warning_days:0   , critical_days:0   , expire_days:0  )
Document.create(document_name:'Détection rayons X'                , warning_days:0   , critical_days:0   , expire_days:0  )
Document.create(document_name:'Formation initiale cyno'           , warning_days:0   , critical_days:0   , expire_days:0  )
Document.create(document_name:'TCA ou habilitation préfectorale'  , warning_days:60  , critical_days:660 , expire_days:720)
Document.create(document_name:'Formation continue cyno'           , warning_days:22  , critical_days:32  , expire_days:42 )
Document.create(document_name:'CQP'                               , warning_days:0   , critical_days:0   , expire_days:0  )
Document.create(document_name:'Carte professionnelle'             , warning_days:0   , critical_days:0   , expire_days:0  )
Document.create(document_name:'Formation initiale CQP'            , warning_days:0   , critical_days:0   , expire_days:0  )
Document.create(document_name:'Formation continue imagerie'       , warning_days:120 , critical_days:150 , expire_days:180)
Document.create(document_name:'Formation continue hors imagerie'  , warning_days:120 , critical_days:150 , expire_days:180)

puts "#{Document.count} Documents créés."


## Profiles
## ==============================
Profile.create(name:'Agent de sécurité')
maitre_chien = Profile.create(name:'Maitre chien')
Profile.create(name:'Opérateur rayons X')

puts "#{Profile.count} Profils créés."


## Employees
## ==============================
Employee.create(is_active: true, last_name: 'Lynd', first_name: 'Vesper'       , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Brand', first_name: 'Gala'        , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Case', first_name: 'Tiffany'      , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Romanova', first_name: 'Tatiana'  , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Rider', first_name: 'Honey'       , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Masterton', first_name: 'Tilly'   , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Masterton', first_name: 'Jill'    , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Russell', first_name: 'Mary Ann'  , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Havelock', first_name: 'Judy'     , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Baum', first_name: 'Lisl'         , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Krest', first_name: 'Liz'         , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Suzuki', first_name: 'Kissy'      , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Goodnight', first_name: 'Mary'    , birthdate: '1975-01-27', status: '', profile: maitre_chien )
Employee.create(is_active: true, last_name: 'Freudenstein', first_name: 'Maria', birthdate: '1975-01-27', status: '', profile: maitre_chien )

puts "#{Employee.count} James bond girls créés."
