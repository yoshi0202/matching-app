import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import FacilityAdd from "../views/FacilityAdd.vue";

Vue.use(VueRouter);

const routes = [
    {
        path: "/",
        name: "home",
        component: Home
    },
    {
        path: "/facility/add",
        name: "facility_add",
        component: FacilityAdd
    }
];

const router = new VueRouter({
    mode: "history",
    base: process.env.BASE_URL,
    routes
});

export default router;
