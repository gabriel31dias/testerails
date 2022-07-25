# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## User seeds
Recruiter::Recruiter.create( name: "Recrutador teste", email: "rec@teste.com", password: "123456", password_confirmation: "123456")
Recruiter::Job.create(title: "rails", description: "programador rails backend senior", start_date: "2022-06-20", end_date: "2022-06-22", status: :active, recruiter_id: 1)
Recruiter::Job.create(title: "vaga php - pleno", description: "php backend pleno laravel", start_date: "2022-06-20", end_date: "2022-06-27", status: :active, recruiter_id: 1 )
Recruiter::Job.create(title: "vaga php - senior", description: "php backend senior laravel", start_date: "2022-06-20", end_date: "2022-06-27", status: :active, recruiter_id: 1 )
Recruiter::Job.create(title: "vaga django plenor", description: "php backend pleno django", start_date: "2022-06-20", end_date: "2022-06-27", status: :active, recruiter_id: 1 )