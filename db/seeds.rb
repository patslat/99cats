# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.create(name: "Breakfast", age: 1, birth_date: "06052013", color: "striped", sex: "F")
Cat.create(name: "Earl", age: 11, birth_date: "07052013", color: "red", sex: "F")
Cat.create(name: "Gizmo", age: 1, birth_date: "06052013", color: "striped", sex: "F")

CatRentalRequest.create(cat_id: 1, status: "approved", begin_date: "2010-10-10", end_date: "2013-06-05")
CatRentalRequest.create(cat_id: 1, status: "approved", begin_date: "2004-10-10", end_date: "2010-10-09")
CatRentalRequest.create(cat_id: 2, status: "pending", begin_date: "2005-10-10", end_date: "2005-10-11")
CatRentalRequest.create(cat_id: 2, status: "pending", begin_date: "2006-10-10", end_date: "2006-10-11")
CatRentalRequest.create(cat_id: 3, status: "pending", begin_date: "2007-10-10", end_date: "2007-10-11")
CatRentalRequest.create(cat_id: 3, status: "pending", begin_date: "2008-10-10", end_date: "2008-10-11")
CatRentalRequest.create(cat_id: 3, status: "pending", begin_date: "2007-10-10", end_date: "2007-10-11")
CatRentalRequest.create(cat_id: 3, status: "pending", begin_date: "2008-10-10", end_date: "2008-10-11")
