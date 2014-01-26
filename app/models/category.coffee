Category = DS.Model.extend
  categoryId    : DS.attr 'number'
  name          : DS.attr 'string'
  subcategory   : DS.hasMany 'subcategory'

`export default Category`
