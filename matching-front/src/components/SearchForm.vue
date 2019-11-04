<template>
  <v-form v-model="valid">
    <v-container>
      <v-flex xs12>
        <p class="text-left">施設情報を検索する</p>
        <v-text-field
          v-model="firstname"
          :rules="nameRules"
          :counter="10"
          label="First name"
          required
        ></v-text-field>
      </v-flex>
      <v-flex xs12>
        <v-text-field
          v-model="lastname"
          :rules="nameRules"
          :counter="10"
          label="Last name"
          required
        ></v-text-field>
      </v-flex>
      <v-flex xs12>
        <v-text-field v-model="email" :rules="emailRules" label="E-mail" required></v-text-field>
      </v-flex>
    </v-container>
  </v-form>
</template>