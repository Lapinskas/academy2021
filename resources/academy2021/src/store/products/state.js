export default function () {
  return {
    columns: [
      { name: 'name',           label: 'Name',            field: 'name' },
      { name: 'description',    label: 'Description',     field: 'description' },
      { name: 'price',          label: 'Price',           field: 'price' },
    ],
    products: [],
    loading: 'not-loaded'
  }
}
