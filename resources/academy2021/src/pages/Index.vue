<template>
  <q-page class="flex flex-center">
    <q-table
      title="Products"
      row-key="name"
      :columns="columns"
      :rows="products"
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
import { mapGetters, mapActions } from 'vuex'

export default {
  name: 'PageIndex',
  setup () {
    return {
      dark: ref(true),
    }
  },
  computed: {
    ...mapGetters('products', [
      'columns',
      'products',
      'productsLoading'
    ]),
  },
  methods: {
    ...mapActions('products', [
      'getProducts'
    ]),
  },
  beforeMount() {
    this.getProducts()
  }
}
</script>
