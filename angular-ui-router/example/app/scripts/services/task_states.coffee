'use strict'

angular.module('listerApp.services.taskStates', [])

.service 'TaskStates', 
  class TaskStatesService

    all: ->
      unstarted: 'Unstarted'
      started: 'Started'
      finished: 'Finished'