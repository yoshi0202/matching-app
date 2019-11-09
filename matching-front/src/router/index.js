import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
import Login from "../views/Login.vue";
import FacilityAdd from "../views/FacilityAdd.vue";
import UserRegist from "../views/UserRegist.vue";

Vue.use(VueRouter);

const routes = [
    {
        path: "/",
        name: "home",
        component: Home
    },
    {
        path: "*",
        name: "home",
        component: Home
    },
    {
        path: "/login",
        name: "login",
        component: Login
    },
    {
        path: "/register",
        name: "userRegister",
        component: UserRegist
    },
    {
        path: "/facility/add",
        name: "facility_add",
        component: FacilityAdd
    },
    {
        path: "/facility/edit",
        name: "facility_edit",
        component: FacilityAdd
    }
];

const router = new VueRouter({
    mode: "history",
    base: process.env.BASE_URL,
    routes
});

export default router;
