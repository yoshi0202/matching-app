import Vue from "vue";
import Router from "vue-router";
import Home from "./components/HelloWorld";
import Foo from "./components/Foo";

Vue.use(Router);

export default new Router({
    mode: "history",
    routes: [
        {
            path: "/",
            name: "home",
            component: Home
        },
        {
            path: "/foo",
            name: "foo",
            component: Foo
        }
    ]
});
