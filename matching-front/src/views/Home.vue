<template>
  <v-app>
    <v-content>
      <v-container>
        <v-layout text-center wrap>
          <v-flex xs2 offset-xs2 mt-3>
            <SearchForm />
          </v-flex>
          <v-flex xs6 mt-3>
            <Facility />
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
// @ is an alias to /src
import SearchForm from "@/components/SearchForm.vue";
import Facility from "@/components/Facility.vue";

export default {
  name: "home",
  components: {
    SearchForm,
    Facility
  }
};
</script>
