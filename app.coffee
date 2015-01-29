fs = require('fs')
transliteration = require('transliteration')
DogCategory = require('./dog_model')

#node_xj = require("xls-to-json")
#
#node_xj
#  input:"dog.xls"
#  output:'output.json'
#
#  (err, res) ->
#    if err
#      return console.log res
#
#
#    return console.log res

dogs = fs.readFileSync('output.json', 'utf-8')
dogsJson = JSON.parse(dogs)
for i in dogsJson
  





