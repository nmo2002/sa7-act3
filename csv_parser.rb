require 'csv'
store = []
data = CSV.read("data.csv", headers: true).map(&:to_h)
store << data
puts store
