<template>
  <v-app-bar app>
    <v-toolbar-title class="headline text-uppercase">
      <v-btn text to="/">
        <span>Common</span>
        <span class="font-weight-light">Header</span>
      </v-btn>
    </v-toolbar-title>
    <v-spacer></v-spacer>
    <router-link to="/facility/add">
      <v-btn text>
        <span class="mr-2">施設情報を登録する</span>
      </v-btn>
    </router-link>
  </v-app-bar>
</template>