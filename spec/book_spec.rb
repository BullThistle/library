require 'rspec'
require 'pg'
require 'book'

DB = PG.connect({:dbname => 'to_do_test'})

describe 'Book' do

end
