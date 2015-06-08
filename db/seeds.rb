# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Employee.create()

Document.destroy_all
Document.create(document_name:'Piece d\'identité'                 , warning_months:0 , warning_days:2 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'Détection d\'explosifs'            , warning_months:0 , warning_days:0 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'Détection rayons X'                , warning_months:0 , warning_days:0 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'Formation initiale cyno'           , warning_months:0 , warning_days:0 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'TCA ou habilitation préfectorale'  , warning_months:20, warning_days:0 , critical_months:22 ,critical_days:0  ,expire_months:24 ,expire_days:0  )
Document.create(document_name:'Formation continue cyno'           , warning_months:0 , warning_days:22, critical_months:0  ,critical_days:32 ,expire_months:0  ,expire_days:42 )
Document.create(document_name:'CQP'                               , warning_months:0 , warning_days:0 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'Carte professionnelle'             , warning_months:0 , warning_days:0 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'Formation initiale CQP'            , warning_months:0 , warning_days:0 , critical_months:0  ,critical_days:0  ,expire_months:0  ,expire_days:0  )
Document.create(document_name:'Formation continue imagerie'       , warning_months:4 , warning_days:0 , critical_months:5  ,critical_days:0  ,expire_months:6  ,expire_days:0  )
Document.create(document_name:'Formation continue hors imagerie'  , warning_months:4 , warning_days:0 , critical_months:5  ,critical_days:0  ,expire_months:6  ,expire_days:0  )

p "Created #{Document.count} documents."
