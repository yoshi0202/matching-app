<template>
  <v-app>
    <v-card height="100%">
      <v-navigation-drawer>
        <template v-slot:prepend>
          <div v-for="n in 30" v-bind:key="n">
            <v-list-item two-line>
              <v-list-item-avatar>
                <img src="https://randomuser.me/api/portraits/women/81.jpg" />
              </v-list-item-avatar>

              <v-list-item-content>
                <v-list-item-title>Jane Smith</v-list-item-title>
                <v-list-item-subtitle>Logged In</v-list-item-subtitle>
              </v-list-item-content>
            </v-list-item>
          </div>
        </template>

        <v-divider></v-divider>

        <v-list dense>
          <v-list-item v-for="item in items" :key="item.title" @click="aaa">
            <v-list-item-icon>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-item-icon>

            <v-list-item-content>
              <v-list-item-title>{{ item.title }}</v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list>
      </v-navigation-drawer>
    </v-card>
  </v-app>
</template>
<script>
import axios from "axios";
export default {
  methods: {
    test: () => {
      alert("hogehoge1");
      axios
        .get("http://localhost:3000", {
          headers: {
            "Content-Type": "application/x-www-form-urlencoded",
            Accept: "text/html"
          },
          data: {}
        })
        .then(res => {
          alert(res);
        })
        .catch(err => {
          alert(`err:${err}`);
        });
    }
  }
};
</script>