<template>
  <div id="app">
    <comheader></comheader>
    <router-view></router-view>
  </div>
</template>

<script>
// import HelloWorld from "./components/HelloWorld.vue";
import comheader from "./components/comheader.vue";

export default {
  components: {
    comheader
  },
  data() {
    return {
      msg: "Hello Worldoooooo"
    };
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
