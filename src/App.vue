<template>
    <div class="container" id="app">
        <div class="row mt-lg-5"></div>
        <CompletedTodos></CompletedTodos>
        <GetTodo></GetTodo>
        <CurrentTodos></CurrentTodos>
    </div>
</template>

<script>
    import GetTodo from './components/GetTodo.vue'
    import CurrentTodos from './components/CurrentTodos.vue'
    import CompletedTodos from './components/CompletedTodos.vue'
    export default {
        components: {
            GetTodo,
            CurrentTodos,
            CompletedTodos
        }
    }
</script>

<style>
    body {
        font-family: Helvetica, sans-serif;
    }
</style>
