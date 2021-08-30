import { axios } from 'boot/axios'

export const getProducts = ({ commit }) => {
  commit('SET_LOADING', 'loading')
  axios.get('http://127.0.0.1:8000/products')
    .then(response => {
      commit('SET_PRODUCTS', response.data.data)
      commit('SET_LOADING', 'loaded')
    })
    .catch(function (error) {
      console.log('Error loading coupons');
      console.log(error.toJSON());
      commit('SET_LOADING', 'error')
    });
}
