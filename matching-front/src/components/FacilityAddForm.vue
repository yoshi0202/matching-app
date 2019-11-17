<template>
  <v-form>
    <v-container>
      <v-flex xs12>
        <p v-if="$route.params.isEdit">施設情報を編集する</p>
        <p v-else>施設情報を登録する</p>
        <v-text-field v-model="facilityName" label="施設名" placeholder="施設名を入力してください" required></v-text-field>
        <v-textarea v-model="facilityDetail" label="施設詳細" placeholder="施設説明を入力してください" required></v-textarea>
        <v-file-input
          v-model="facilityImages"
          label="施設画像"
          placeholder="施設画像をアップロードしてください"
          accept="image/*"
          multiple
        ></v-file-input>
        <div class="my-2">
          <v-btn v-if="$route.params.isEdit" color="success" @click="facilityUpdate">編集</v-btn>
          <v-btn v-else color="success" @click="facilityRegist">登録</v-btn>
        </div>
      </v-flex>
    </v-container>
  </v-form>
</template>

<script>
import axios from "axios";
export default {
  created: function() {
    if (this.$route.params.facility) {
      this.facilityId = this.$route.params.facility.id;
      this.facilityName = this.$route.params.facility.name;
      this.facilityDetail = this.$route.params.facility.detail;
    }
  },
  data: () => ({
    facilityId: "",
    facilityName: "",
    facilityDetail: "",
    facilityImages: []
  }),
  methods: {
    facilityRegist: async function() {
      try {
        const requestData = this.createParams(new FormData());
        await axios.post("http://localhost:3000/facility/create", requestData);
        this.$router.push("home");
      } catch (err) {
        alert(JSON.stringify(err));
      }
    },
    facilityUpdate: async function() {
      try {
        const requestData = this.createParams(new FormData());
        await axios.post("http://localhost:3000/facility/update", requestData);
        this.$router.push("home");
      } catch (err) {
        alert(JSON.stringify(err));
      }
    },
    createParams: function(formData) {
      formData.append("facilityName", this.facilityName);
      formData.append("facilityId", this.facilityId);
      formData.append("facilityDetail", this.facilityDetail);
      this.facilityImages.map(function(val) {
        formData.append("facilityImages[]", val);
      });
      return formData;
    }
  }
};
</script>
