<template>
  <v-container>
    <Header></Header>
    <v-content>
      <v-container>
        <v-layout text-center wrap>
          <v-flex xs6 offset-xs3 mt-3>
            <FacilityAddForm />
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
  </v-container>
</template>

<script>
// @ is an alias to /src
// import SearchForm from "@/components/SearchForm.vue";
// import Facility from "@/components/Facility.vue";
import FacilityAddForm from "@/components/FacilityAddForm.vue";
import Header from "@/components/Header.vue";

export default {
  name: "home",
  components: {
    FacilityAddForm,
    Header
  }
};
</script>
