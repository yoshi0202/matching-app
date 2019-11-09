<template>
  <v-app>
    <Header></Header>
    <v-container text-center fill-height>
      <v-layout column wrap>
        <v-spacer></v-spacer>
        <v-flex sm2>
          <h1>User Login</h1>
        </v-flex>
        <v-flex sm2>
          <v-layout row wrap>
            <v-flex sm4 offset-sm4>
              <v-text-field v-model="email" label="メールアドレス" placeholder="メールアドレスを入力してください" required></v-text-field>
            </v-flex>
          </v-layout>
        </v-flex>
        <v-flex sm2>
          <v-layout row wrap>
            <v-flex sm4 offset-sm4>
              <v-text-field
                v-model="password"
                label="パスワード"
                placeholder="パスワードを入力してください"
                required
                type="password"
              ></v-text-field>
            </v-flex>
          </v-layout>
        </v-flex>
        <v-flex sm1>
          <v-layout row wrap>
            <v-flex sm4 offset-sm4>
              <v-btn color="success" @click="userLogin">ログイン</v-btn>
            </v-flex>
          </v-layout>
        </v-flex>
        <v-spacer></v-spacer>
      </v-layout>
    </v-container>
  </v-app>
</template>

<script>
// @ is an alias to /src
import Header from "@/components/Header.vue";
import axios from "axios";

export default {
  data: () => ({
    email: "",
    password: ""
  }),
  name: "home",
  components: {
    Header
  },
  methods: {
    userLogin: async function() {
      try {
        await axios.post("http://localhost:3000/user/login", {
          user: {
            email: this.email,
            password: this.password
          }
        });
        this.$router.push("/");
      } catch (error) {
        alert(`err:${JSON.stringify(error)}`);
      }
    }
  }
};
</script>
