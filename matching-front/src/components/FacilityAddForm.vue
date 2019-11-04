<template>
  <v-form>
    <v-container>
      <v-flex xs12>
        <p>施設情報を登録する</p>
        <v-text-field v-model="facilityName" label="施設名" placeholder="施設名を入力してください" required></v-text-field>
        <v-textarea v-model="facilityDetail" label="施設詳細" placeholder="施設説明を入力してください" required></v-textarea>
        <v-file-input
          v-model="facilityImages"
          label="施設画像"
          placeholder="施設画像をアップロードしてください"
          accept="image/*"
        ></v-file-input>
        <div class="my-2">
          <v-btn color="success" @click="facilityRegist">登録</v-btn>
        </div>
      </v-flex>
    </v-container>
  </v-form>
</template>

<script>
import axios from "axios";
export default {
  data: () => ({
    facilityName: "",
    facilityDetail: ""
  }),
  methods: {
    facilityRegist: function() {
      const requestData = {
        facilityName: this.facilityName,
        facilityDetail: this.facilityDetail
      };
      axios
        .post("http://localhost:3000/facility/create", requestData)
        .then(response => alert(JSON.stringify(response)))
        .catch(err => alert(JSON.stringify(err)));
    }
  }
};
</script>
