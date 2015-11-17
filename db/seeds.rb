## Cleanup models
## ==============================
User.destroy_all
Document.destroy_all
Profile.destroy_all
Employee.destroy_all
Paper.destroy_all

## User models
## ==============================
User.create!(email: 'manager@company.com', name: 'James Bond', password: '12345678', password_confirmation: '12345678')

## Document models
## ==============================
id_card             = Document.create!(name: 'Piece d\'identité',                 warning_days: 2,    critical_days: 0,   expire_days: 0)
explosive_detection = Document.create!(name: 'Détection d\'explosifs',            warning_days: 0,    critical_days: 0,   expire_days: 0)
xray_detection      = Document.create!(name: 'Détection rayons X',                warning_days: 0,    critical_days: 0,   expire_days: 0)
cyno_init_formation = Document.create!(name: 'Formation initiale cyno',           warning_days: 0,    critical_days: 0,   expire_days: 0)
tca_formation       = Document.create!(name: 'TCA ou habilitation préfectorale',  warning_days: 60,   critical_days: 660, expire_days: 720)
cyno_formation      = Document.create!(name: 'Formation continue cyno',           warning_days: 22,   critical_days: 32,  expire_days: 42)
cqp_formation       = Document.create!(name: 'CQP',                               warning_days: 0,    critical_days: 0,   expire_days: 0)
professional_card   = Document.create!(name: 'Carte professionnelle',             warning_days: 0,    critical_days: 0,   expire_days: 0)
cqp_init_formation  = Document.create!(name: 'Formation initiale CQP',            warning_days: 0,    critical_days: 0,   expire_days: 0)
img_formation       = Document.create!(name: 'Formation continue imagerie',       warning_days: 120,  critical_days: 150, expire_days: 180)
non_img_formation   = Document.create!(name: 'Formation continue hors imagerie',  warning_days: 120,  critical_days: 150, expire_days: 180)

puts "#{Document.count} Documents créés."

## Profiles
## ==============================
security_agent = Profile.create!(name: 'Agent de sécurité')
dog_trainer    = Profile.create!(name: 'Maitre chien')
xray_operator  = Profile.create!(name: 'Opérateur rayons X')

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
agent_brand                = Employee.create!(is_active: true,  last_name: 'Brand',        first_name: 'Gala',    birthdate: '1975-01-27', profile: security_agent)
agent_case                 = Employee.create!(is_active: true,  last_name: 'Case',         first_name: 'Tiffany', birthdate: '1975-01-27', profile: security_agent)
agent_lynd                 = Employee.create!(is_active: false, last_name: 'Lynd',         first_name: 'Vesper',  birthdate: '1975-01-27', profile: security_agent)
agent_rider                = Employee.create!(is_active: true,  last_name: 'Rider',        first_name: 'Honey',   birthdate: '1975-01-27', profile: security_agent)
agent_romanova             = Employee.create!(is_active: true,  last_name: 'Romanova',     first_name: 'Tatiana', birthdate: '1975-01-27', profile: security_agent)

dog_trainer_baum           = Employee.create!(is_active: true,  last_name: 'Baum',         first_name: 'Lisl',    birthdate: '1975-01-27', profile: dog_trainer)
dog_trainer_havelock       = Employee.create!(is_active: true,  last_name: 'Havelock',     first_name: 'Judy',    birthdate: '1975-01-27', profile: dog_trainer)
dog_trainer_masterton_j    = Employee.create!(is_active: true,  last_name: 'Masterton',    first_name: 'Jill',    birthdate: '1975-01-27', profile: dog_trainer)
dog_trainer_masterton_t    = Employee.create!(is_active: true,  last_name: 'Masterton',    first_name: 'Tilly',   birthdate: '1975-01-27', profile: dog_trainer)
dog_trainer_russell        = Employee.create!(is_active: true,  last_name: 'Russell',      first_name: 'Mary',    birthdate: '1975-01-27', profile: dog_trainer)

xray_operator_freudenstein = Employee.create!(is_active: true,  last_name: 'Freudenstein', first_name: 'Maria',   birthdate: '1975-01-27', profile: xray_operator)
xray_operator_goodnight    = Employee.create!(is_active: true,  last_name: 'Goodnight',    first_name: 'Mary',    birthdate: '1975-01-27', profile: xray_operator)
xray_operator_krest        = Employee.create!(is_active: true,  last_name: 'Krest',        first_name: 'Liz',     birthdate: '1975-01-27', profile: xray_operator)
xray_operator_suzuki       = Employee.create!(is_active: true,  last_name: 'Suzuki',       first_name: 'Kissy',   birthdate: '1975-01-27', profile: xray_operator)

puts "#{Employee.count} James bond girls créées."

## Papers
## ==============================
expiration_date = Date.current + 1.month

Paper.create!(employee: agent_brand,                document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: agent_brand,                document: cqp_formation,     expiration_date: expiration_date)
Paper.create!(employee: agent_brand,                document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: agent_case,                 document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: agent_case,                 document: cqp_formation,     expiration_date: expiration_date)
Paper.create!(employee: agent_case,                 document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: agent_lynd,                 document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: agent_lynd,                 document: cqp_formation,     expiration_date: expiration_date)
Paper.create!(employee: agent_lynd,                 document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: agent_rider,                document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: agent_rider,                document: cqp_formation,     expiration_date: expiration_date)
Paper.create!(employee: agent_rider,                document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: agent_romanova,             document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: agent_romanova,             document: cqp_formation,     expiration_date: expiration_date)
Paper.create!(employee: agent_romanova,             document: professional_card, expiration_date: expiration_date)

Paper.create!(employee: dog_trainer_baum,           document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_baum,           document: tca_formation,     expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_baum,           document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_havelock,       document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_havelock,       document: tca_formation,     expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_havelock,       document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_masterton_j,    document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_masterton_j,    document: tca_formation,     expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_masterton_j,    document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_masterton_t,    document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_masterton_t,    document: tca_formation,     expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_masterton_t,    document: professional_card, expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_russell,        document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_russell,        document: tca_formation,     expiration_date: expiration_date)
Paper.create!(employee: dog_trainer_russell,        document: professional_card, expiration_date: expiration_date)

Paper.create!(employee: xray_operator_freudenstein, document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: xray_operator_freudenstein, document: xray_detection,    expiration_date: expiration_date)
Paper.create!(employee: xray_operator_freudenstein, document: img_formation,     expiration_date: expiration_date)
Paper.create!(employee: xray_operator_goodnight,    document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: xray_operator_goodnight,    document: xray_detection,    expiration_date: expiration_date)
Paper.create!(employee: xray_operator_goodnight,    document: img_formation,     expiration_date: expiration_date)
Paper.create!(employee: xray_operator_krest,        document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: xray_operator_krest,        document: xray_detection,    expiration_date: expiration_date)
Paper.create!(employee: xray_operator_krest,        document: img_formation,     expiration_date: expiration_date)
Paper.create!(employee: xray_operator_suzuki,       document: id_card,           expiration_date: expiration_date)
Paper.create!(employee: xray_operator_suzuki,       document: xray_detection,    expiration_date: expiration_date)
Paper.create!(employee: xray_operator_suzuki,       document: img_formation,     expiration_date: expiration_date)
