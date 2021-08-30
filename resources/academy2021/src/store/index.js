import { store } from 'quasar/wrappers'
import { createStore } from 'vuex'

import products from './products'

export default store(function (/* { ssrContext } */) {
  const Store = createStore({
    modules: {
      products
    },

    strict: process.env.DEBUGGING
  })

  return Store
})
