## Cleanup models
## ==============================
# User.destroy_all
Document.destroy_all
Profile.destroy_all
Employee.destroy_all
Paper.destroy_all

## User models
## ==============================
user = User.where(email: 'manager@company.com').first_or_initialize

user.assign_attributes(name: 'James Bond', password: '12345678', password_confirmation: '12345678', plan: 'vip')
user.save!

## Document models
## ==============================
id_card             = user.documents.create!(name: 'Piece d\'identité',                 warning_days: 20,   critical_days: 7,   )
explosive_detection = user.documents.create!(name: 'Détection d\'explosifs',            warning_days: 15,   critical_days: 3,   )
xray_detection      = user.documents.create!(name: 'Détection rayons X',                warning_days: 15,   critical_days: 3,   )
cyno_init_formation = user.documents.create!(name: 'Formation initiale cyno',           warning_days: 30,   critical_days: 15,  )
tca_formation       = user.documents.create!(name: 'TCA ou habilitation préfectorale',  warning_days: 60,   critical_days: 30,  )
cyno_formation      = user.documents.create!(name: 'Formation continue cyno',           warning_days: 32,   critical_days: 22,  )
cqp_formation       = user.documents.create!(name: 'CQP',                               warning_days: 30,   critical_days: 15,  )
professional_card   = user.documents.create!(name: 'Carte professionnelle',             warning_days: 20,   critical_days: 7,   )
cqp_init_formation  = user.documents.create!(name: 'Formation initiale CQP',            warning_days: 30,   critical_days: 15,  )
img_formation       = user.documents.create!(name: 'Formation continue imagerie',       warning_days: 150,  critical_days: 120, )
non_img_formation   = user.documents.create!(name: 'Formation continue hors imagerie',  warning_days: 150,  critical_days: 120, )

puts "#{Document.count} Documents créés."

## Profiles
## ==============================
security_agent = user.profiles.create!(name: 'Agent de sécurité')
dog_trainer    = user.profiles.create!(name: 'Maitre chien')
xray_operator  = user.profiles.create!(name: 'Opérateur rayons X')

puts "#{Profile.count} Profils créés."

## Assignment models
## ==============================
Assignment.create!(profile: security_agent, document: id_card)
Assignment.create!(profile: security_agent, document: cqp_formation)
Assignment.create!(profile: security_agent, document: professional_card)

Assignment.create!(profile: dog_trainer,    document: id_card)
Assignment.create!(profile: dog_trainer,    document: tca_formation)
Assignment.create!(profile: dog_trainer,    document: professional_card)

Assignment.create!(profile: xray_operator,  document: id_card)
Assignment.create!(profile: xray_operator,  document: xray_detection)
Assignment.create!(profile: xray_operator,  document: img_formation)

## Employees
## ==============================
agent_brand                = Employee.create!(is_active: true,  last_name: 'Brand',        first_name: 'Gala',    profile: security_agent)
agent_case                 = Employee.create!(is_active: true,  last_name: 'Case',         first_name: 'Tiffany', profile: security_agent)
agent_lynd                 = Employee.create!(is_active: false, last_name: 'Lynd',         first_name: 'Vesper',  profile: security_agent)
agent_rider                = Employee.create!(is_active: true,  last_name: 'Rider',        first_name: 'Honey',   profile: security_agent)
agent_romanova             = Employee.create!(is_active: true,  last_name: 'Romanova',     first_name: 'Tatiana', profile: security_agent)

dog_trainer_baum           = Employee.create!(is_active: true,  last_name: 'Baum',         first_name: 'Lisl',    profile: dog_trainer)
dog_trainer_havelock       = Employee.create!(is_active: true,  last_name: 'Havelock',     first_name: 'Judy',    profile: dog_trainer)
dog_trainer_masterton_j    = Employee.create!(is_active: true,  last_name: 'Masterton',    first_name: 'Jill',    profile: dog_trainer)
dog_trainer_masterton_t    = Employee.create!(is_active: true,  last_name: 'Masterton',    first_name: 'Tilly',   profile: dog_trainer)
dog_trainer_russell        = Employee.create!(is_active: true,  last_name: 'Russell',      first_name: 'Mary',    profile: dog_trainer)

xray_operator_freudenstein = Employee.create!(is_active: true,  last_name: 'Freudenstein', first_name: 'Maria',   profile: xray_operator)
xray_operator_goodnight    = Employee.create!(is_active: true,  last_name: 'Goodnight',    first_name: 'Mary',    profile: xray_operator)
xray_operator_krest        = Employee.create!(is_active: true,  last_name: 'Krest',        first_name: 'Liz',     profile: xray_operator)
xray_operator_suzuki       = Employee.create!(is_active: true,  last_name: 'Suzuki',       first_name: 'Kissy',   profile: xray_operator)

puts "#{Employee.count} James bond girls créées."

## Papers
## ==============================
expiration_cqp_formation     = Date.current + 1.month + cqp_formation.warning_days.days
expiration_id_card           = Date.current + 1.month + id_card.warning_days.days
expiration_img_formation     = Date.current + 1.month + img_formation.warning_days.days
expiration_professional_card = Date.current + 1.month + professional_card.warning_days.days
expiration_tca_formation     = Date.current + 1.month + tca_formation.warning_days.days
expiration_xray_detection    = Date.current + 1.month + xray_detection.warning_days.days

Paper.create!(employee: agent_brand,                document: id_card,           expiration_date: Date.current + id_card.critical_days.days)
Paper.create!(employee: agent_brand,                document: cqp_formation,     expiration_date: Date.current + cqp_formation.warning_days.days)
Paper.create!(employee: agent_brand,                document: professional_card, expiration_date: Date.current - 1.day)
Paper.create!(employee: agent_case,                 document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: agent_case,                 document: cqp_formation,     expiration_date: expiration_cqp_formation)
Paper.create!(employee: agent_case,                 document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: agent_lynd,                 document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: agent_lynd,                 document: cqp_formation,     expiration_date: expiration_cqp_formation)
Paper.create!(employee: agent_lynd,                 document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: agent_rider,                document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: agent_rider,                document: cqp_formation,     expiration_date: expiration_cqp_formation)
Paper.create!(employee: agent_rider,                document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: agent_romanova,             document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: agent_romanova,             document: cqp_formation,     expiration_date: expiration_cqp_formation)
Paper.create!(employee: agent_romanova,             document: professional_card, expiration_date: expiration_professional_card)

Paper.create!(employee: dog_trainer_baum,           document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: dog_trainer_baum,           document: tca_formation,     expiration_date: expiration_tca_formation)
Paper.create!(employee: dog_trainer_baum,           document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: dog_trainer_havelock,       document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: dog_trainer_havelock,       document: tca_formation,     expiration_date: expiration_tca_formation)
Paper.create!(employee: dog_trainer_havelock,       document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: dog_trainer_masterton_j,    document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: dog_trainer_masterton_j,    document: tca_formation,     expiration_date: expiration_tca_formation)
Paper.create!(employee: dog_trainer_masterton_j,    document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: dog_trainer_masterton_t,    document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: dog_trainer_masterton_t,    document: tca_formation,     expiration_date: expiration_tca_formation)
Paper.create!(employee: dog_trainer_masterton_t,    document: professional_card, expiration_date: expiration_professional_card)
Paper.create!(employee: dog_trainer_russell,        document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: dog_trainer_russell,        document: tca_formation,     expiration_date: expiration_tca_formation)
Paper.create!(employee: dog_trainer_russell,        document: professional_card, expiration_date: expiration_professional_card)

Paper.create!(employee: xray_operator_freudenstein, document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: xray_operator_freudenstein, document: xray_detection,    expiration_date: expiration_xray_detection)
Paper.create!(employee: xray_operator_freudenstein, document: img_formation,     expiration_date: expiration_img_formation)
Paper.create!(employee: xray_operator_goodnight,    document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: xray_operator_goodnight,    document: xray_detection,    expiration_date: expiration_xray_detection)
Paper.create!(employee: xray_operator_goodnight,    document: img_formation,     expiration_date: expiration_img_formation)
Paper.create!(employee: xray_operator_krest,        document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: xray_operator_krest,        document: xray_detection,    expiration_date: expiration_xray_detection)
Paper.create!(employee: xray_operator_krest,        document: img_formation,     expiration_date: expiration_img_formation)
Paper.create!(employee: xray_operator_suzuki,       document: id_card,           expiration_date: expiration_id_card)
Paper.create!(employee: xray_operator_suzuki,       document: xray_detection,    expiration_date: expiration_xray_detection)
Paper.create!(employee: xray_operator_suzuki,       document: img_formation,     expiration_date: expiration_img_formation)
