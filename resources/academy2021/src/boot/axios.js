import { boot } from 'quasar/wrappers'
import axios from 'axios'

export default boot(({ app, router, store }) => {
  app.config.globalProperties.$axios = axios
})

export { axios }
