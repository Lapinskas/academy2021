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
import { axios } from "boot/axios";

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
      rows: []
    }
  },
  beforeMount() {
    console.log('Before mount hook')
    axios.get(`http://127.0.0.1:8000/products`)
      .then( response => {
        console.log(response.data)
      })
      .catch(function (error) {
        console.log(error);
      })
  }
}
</script>
