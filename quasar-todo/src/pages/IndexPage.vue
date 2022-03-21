<template>
  <q-page padding>
    <div class="row q-mb-lg">
      <q-input
        v-model="newTask"
        label="Add New Task"
        class="col"
        @keyup.enter="addTask"
      />
      <q-btn color="primary" label="Add" @click.native="addTask" />
    </div>
    <div class="row row q-mb-lg">
      <q-list bordered padding class="rounded-borders col">
        <q-item-label header>Tasks</q-item-label>

        <q-item clickable v-ripple v-for="(tasks, index) in tasks">
          <q-item-section>
            <q-item-label>{{ tasks }}</q-item-label>
          </q-item-section>
          <q-btn
            class="gt-xs"
            size="12px"
            flat
            dense
            round
            icon="done"
            @click.native="moveToDone(index)"
          />
        </q-item>
      </q-list>
    </div>
    <div class="row">
      <q-list bordered padding class="rounded-borders col">
        <q-item-label header>Done</q-item-label>

        <q-item v-for="(tasks, index) in done">
          <q-item-section>
            <q-item-label>{{ tasks }}</q-item-label>
          </q-item-section>
          <q-btn class="gt-xs" size="12px" flat dense round icon="delete" @click.native="deleteTask(index)" />
        </q-item>
      </q-list>
    </div>
  </q-page>
</template>

<script lang="ts">
import { defineComponent, ref } from "vue";

export default defineComponent({
  name: "IndexPage",
  data() {
    return {
      tasks: [],
      done: [],
      newTask: "",
    };
  },
  methods: {
    addTask() {
      this.tasks.push(this.newTask);
      this.newTask = "";
    },
    moveToDone(index) {
      this.done.push(this.tasks[index]);
      this.tasks.splice(index, 1);
    },
    deleteTask(index) {
      this.$q.dialog({
        title: 'Confirm',
        message: 'Really Delete?',
        ok: 'Yes',
        cancel: 'No'
      }).onOk(() => {
        this.done.splice(index, 1)
        this.$q.notify('Deleted!')
      })
    }
  },
});
</script>
