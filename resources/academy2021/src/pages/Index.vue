<template>
  <q-page class="flex flex-center">
    <q-table
      title="Products"
      row-key="name"
      :columns="columns"
      :rows="rows"
    />
  </q-page>
</template>

<script>

export default {
  name: 'PageIndex',
  setup () {
    return {
      columns: [
        { name: 'name',           label: 'Name',            field: 'name' },
        { name: 'description',    label: 'Description',     field: 'description' },
        { name: 'price',          label: 'Price',           field: 'price' },
      ],
      rows: [
        { name: 'Test', description: 'Quasar test', price: 'Priceless' },
        { name: 'Product', description: 'Just for fun', price: '500.00' },
      ]
    }
  }
}
</script>
