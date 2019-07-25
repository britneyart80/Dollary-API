# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Food and Groceries' },
                              { name: 'Transportation' },
                              { name: 'Savings' },
                              { name: 'Housing' },
                              { name: 'Utilities' },
                              { name: 'Healthcare' },
                              { name: 'Personal Care' },
                              { name: 'Entertainment' },
                              { name: 'Clothing' },
                              { name: 'Education' },
                              { name: 'Miscellaneous Goods' },
                              { name: 'Other' }])
