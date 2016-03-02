# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.create(subject_name: 'Math')
Subject.create(subject_name: 'Language Arts')
Subject.create(subject_name: 'French')
Subject.create(subject_name: 'Spanish')
Subject.create(subject_name: 'Social Studies')
Subject.create(subject_name: 'Science')
Subject.create(subject_name: 'Chemistry')
Subject.create(subject_name: 'Physics')
Subject.create(subject_name: 'Biology')

User.create(first_name: 'Scott', last_name: 'McPhee', postal_code: "T3H2X2", address: "420 Sierra Morena Place South-west", city: "Calgary", province: "AB", country: "Canada", phone_number: "4038608095", email: "scottymcphee@gmail.com", password_digest: "$2a$10$bGGO4/tR1iYg6rnScIrskOsfFf4vx1kG2Q/.FsqfXfEXPoca1s1Iu", account_type: "tutor")
