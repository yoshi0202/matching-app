<template>
  <v-content style="height:100%">
    <Header></Header>
    <v-content style="height:80%" class="align-center">
      <v-container fluid>
        <v-layout text-center wrap>
          <v-flex xs4 offset-xs4>
            <h1>User Login</h1>
            <v-text-field
              v-model="facilityName"
              label="メールアドレス"
              placeholder="メールアドレスを入力してください"
              required
            ></v-text-field>
            <v-text-field
              v-model="facilityName"
              label="パスワード"
              placeholder="パスワードを入力してください"
              required
              type="password"
            ></v-text-field>
            <v-btn color="success" @click="facilityRegist">ログイン</v-btn>
          </v-flex>
        </v-layout>
      </v-container>
    </v-content>
  </v-content>
</template>

<script>
// @ is an alias to /src
import Header from "@/components/Header.vue";

export default {
  name: "home",
  components: {
    Header
  }
};
</script>
