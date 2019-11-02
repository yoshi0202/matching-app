<template>
  <v-container>
    <v-card class="mx-auto mb-3" max-width="700" v-for="i in 10" :key="i">
      <v-img
        class="white--text align-end"
        height="200px"
        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
      >
        <v-card-title>サンプル施設</v-card-title>
      </v-img>

      <v-card-subtitle class="pb-0">施設の説明</v-card-subtitle>

      <v-layout text-left wrap>
        <v-card-text class="text--primary">
          <div>説説明説明説明説明説明説明説明説明説明説明説明説明説明明</div>

          <div>説説明説明説明説明説明説明説明説明説明説明説明説明説明明</div>
        </v-card-text>
      </v-layout>
      <v-card-actions>
        <v-layout text-right wrap>
          <v-btn color="orange" text>この施設に問い合わせする</v-btn>
        </v-layout>
      </v-card-actions>
    </v-card>
  </v-container>
</template>