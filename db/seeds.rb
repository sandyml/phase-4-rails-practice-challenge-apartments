# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroy old database..."
Apartment.destroy_all
Tenant.destroy_all
Lease.destroy_all

puts "Apartment..."
a1 = Apartment.create(number: 4109)
a2 = Apartment.create(number: 1107)
a3 = Apartment.create(number: 2409)
a4 = Apartment.create(number: 1110)
a5 = Apartment.create(number: 7103)

puts "Tenant..."
t1 = Tenant.create(name: "Robbin Miller", age: 29)
t2 = Tenant.create(name: "Justin Cobb", age: 37)
t3 = Tenant.create(name: "Chris Hitt", age: 19)
t4 = Tenant.create(name: "Rehna Scwhatsky", age: 35)
t5 = Tenant.create(name: "Timber Care", age: 40)
t6 = Tenant.create(name: "Jen Scott", age: 21)
t7 = Tenant.create(name: "Bobbie Harry", age: 29)
t8 = Tenant.create(name: "Reha bronsky", age: 29)

puts "Lease..."
Lease.create(apartment_id: a1.id, tenant_id: t1.id, rent: 1200)
Lease.create(apartment_id: a2.id, tenant_id: t2.id, rent: 2200)
Lease.create(apartment_id: a3.id, tenant_id: t3.id, rent: 1000)
Lease.create(apartment_id: a4.id, tenant_id: t4.id, rent: 3200)
Lease.create(apartment_id: a5.id, tenant_id: t5.id, rent: 4200)
Lease.create(apartment_id: a3.id, tenant_id: t4.id, rent: 5020)
Lease.create(apartment_id: a4.id, tenant_id: t1.id, rent: 1100)
