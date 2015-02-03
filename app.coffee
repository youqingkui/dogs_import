fs = require('fs')
transliteration = require('transliteration')
DogCategory = require('./dog_model')
async = require('async')

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
#
#dogs = fs.readFileSync('output.json', 'utf-8')
#dogsJson = JSON.parse(dogs)
#for i in dogsJson
#  dogInfo =
#    name:i['犬种中文']
#    pinyin_name:i['犬种英文']
#    first_letter:i['犬种英文'][0]
#    desc:i['犬组']
#
#  newDog = DogCategory.build dogInfo
#  newDog.save (err, row, sql) ->
#    if err
#      return console.log err
#
#    console.log sql

async.auto
  getDogs:(cb) ->
    DogCategory.find (err, row, sql) ->
      if err
        return console.log err

      cb(null, row)

  changeDogs:['getDogs', (cb, result) ->
    dogs = result.getDogs
    for i in dogs
      console.log i
      i.en_name = i.pinyin_name
      i.pinyin_name = transliteration.slugify(i.name, {lowercase: false, separator: ''})
      i.first_letter = i.pinyin_name[0]
      i.save()

    console.log "ok"
  ]






