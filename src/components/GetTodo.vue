<template>
    <div id="get-todo" class="container">
        <input class="form-control"
               :value="newTodo"
               @change="getTodo"
               placeholder="I need to...">
        <div class="mt-lg-3"></div>
        <button class="btn btn-primary" @click="addTodo">Add Todo</button>
    </div>
</template>

<script>
    export default {
        name: "GetTodo",
        methods: {
            getTodo(e){
                this.$store.dispatch('getTodo', e.target.value)
            },
            addTodo(){
                this.$store.dispatch('addTodo')
                this.$store.dispatch('clearTodo')
            }
        },
        computed: {
            newTodo(){
                return this.$store.getters.newTodo
            }
        }
    }
</script>

<style scoped>

</style>
