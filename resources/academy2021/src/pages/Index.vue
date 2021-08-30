<template>
  <q-page class="flex flex-center">
    <q-table
      title="Products"
      row-key="name"
      :columns="columns"
      :rows="rows"
      :dark="dark"
    />
    <q-toggle
      v-model="dark"
      :label="`Dark mode is ${dark}`"
    />
  </q-page>
</template>

<script>
import { ref } from 'vue'

export default {
  name: 'PageIndex',
  setup () {
    return {
      dark: ref(true),
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
