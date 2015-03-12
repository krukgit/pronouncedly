require 'csv'

languages = CSV.read 'db/data/languages.csv'
languages.map!{ |l| {name: l[0], native_name: l[1], code: l[2]} }
Language.create languages
