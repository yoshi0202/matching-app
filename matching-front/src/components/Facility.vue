<template>
  <v-container>
    <v-card class="mx-auto mb-3" max-width="700" v-for="facility in facilities" :key="facility.id">
      <v-img
        class="white--text align-end"
        height="200px"
        :src="'http://localhost:3000/facility_images/' + facility.facility_images[0].name"
      >
        <v-card-title>{{facility.name}}</v-card-title>
      </v-img>

      <v-card-subtitle class="pb-0">施設の説明</v-card-subtitle>

      <v-layout text-left wrap>
        <v-card-text class="text--primary">
          <div>{{facility.detail}}</div>
        </v-card-text>
      </v-layout>
      <v-layout wrap>
        <v-flex xs3 offset-xs6>
          <router-link :to="'/facility/edit/' + facility.id">
            <v-btn text>
              <span class="mr-2">施設情報を編集する</span>
            </v-btn>
          </router-link>
        </v-flex>
        <v-flex xs3>
          <router-link :to="'/facility/destroy/' + facility.id">
            <v-btn text>
              <span class="mr-2">施設を削除する</span>
            </v-btn>
          </router-link>
        </v-flex>
      </v-layout>
    </v-card>
  </v-container>
</template>
<script>
import axios from "axios";
export default {
  data: () => ({
    facilities: []
  }),
  created: function() {
    axios
      .get("http://localhost:3000/facility/index")
      .then(response => {
        this.facilities = JSON.parse(response.data.facilities);
        console.log(this.facilities);
      })
      .catch(err => alert(JSON.stringify(err)));
  },
  methods: {}
};
</script>