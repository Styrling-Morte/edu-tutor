# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





Specialization.create(years_of_experience: 10, qualification1:'B.Sc Physics', qualification2: 'GED Physics', tutor_detail_id: 12, subject_id: 35 )
Specialization.create(years_of_experience: 5, qualification1:'B.Sc Mathematics', qualification2: 'Msc Mathematics', tutor_detail_id: 12, subject_id: 28 )

Specialization.create(years_of_experience: 6, qualification1:'B.Sc Mathematics', qualification2: 'Msc Mathematics', tutor_detail_id: 13, subject_id: 28 )

Specialization.create(years_of_experience: 3, qualification1:'B.Sc English', qualification2: 'Diploma English', tutor_detail_id: 14, subject_id: 29 )
Specialization.create(years_of_experience: 2, qualification1:'B.Sc Spanish', qualification2: '', tutor_detail_id: 14, subject_id: 31 )

Specialization.create(years_of_experience: 8, qualification1:'B.Sc French', qualification2: '', tutor_detail_id: 15, subject_id: 30 )
Specialization.create(years_of_experience: 5, qualification1:'B.Sc Spanish', qualification2: '', tutor_detail_id: 15, subject_id: 31 )

Specialization.create(years_of_experience: 5, qualification1:'B.Sc Arts', qualification2: '', tutor_detail_id: 16, subject_id: 32 )

Specialization.create(years_of_experience: 12, qualification1:'B.Sc Biology', qualification2: 'Msc Biology', tutor_detail_id: 17, subject_id: 36 )

Specialization.create(years_of_experience: 8, qualification1:'B.Sc Chemistry', qualification2: 'Diploma Chemistry', tutor_detail_id: 18, subject_id: 34 )

Specialization.create(years_of_experience: 5, qualification1:'Diploma Science', qualification2: '', tutor_detail_id: 19, subject_id: 33 )

Specialization.create(years_of_experience: 2, qualification1: 'B.Sc', qualification2: 'B.Ed Minor', tutor_detail_id: 20, subject_id: 36)
Specialization.create(years_of_experience: 4, qualification1: 'B.Sc', qualification2: 'B.Ed Minor', tutor_detail_id: 20, subject_id: 34)