<template>
  <v-app>
    <Header></Header>
    <router-view></router-view>
  </v-app>
</template>

<script>
// import HelloWorld from "./components/HelloWorld";
import Header from "./components/Header";
export default {
  name: "App",
  components: {
    Header
  },
  data: () => ({
    //
  })
};
</script>
