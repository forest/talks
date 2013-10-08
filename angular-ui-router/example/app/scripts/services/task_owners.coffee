'use strict'

angular.module('listerApp.services.taskOwners', [])

.service 'TaskOwners', 
  class TaskOwnersService

    all: ->
      manny: 'Manny'
      moe: 'Moe'
      jack: 'Jack'