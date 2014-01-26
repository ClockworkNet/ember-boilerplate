Subcategory = DS.Model.extend
  subCategoryId : DS.attr 'number'
  name          : DS.attr 'string'
  category      : DS.belongsTo 'category'

`export default Subcategory`