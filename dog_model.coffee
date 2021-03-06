T = require("toshihiko")
toshihiko = require("./toshihiko.js")

DogCategory = toshihiko.define 'dog_category',
  [
    {
      name: "cid"
      type: T.Type.Integer
      primaryKey: true
    }
    {
      name: "name"
      type: T.Type.String
      defaultValue: ""
    }
    {
      name: "desc"
      type: T.Type.String
      defaultValue: ""
    }
    {
      name: "pinyin_name"
      type: T.Type.String
      defaultValue: ""
    }
    {
      name: "first_letter"
      type: T.Type.String
      defaultValue: ""
    }
    {
      name: "en_name"
      type: T.Type.String
      defaultValue: ""
    }
  ]

module.exports = DogCategory