'use strict';

angular.module('listerApp')

.service('Tasks', ['$rootScope',
  class TasksService
    constructor: (@$rootScope) ->
      # empty

    get: (params) ->
      tasks = [
        { state: 'unstarted', owner: '', description: 'Basic service.', labels: 'oil, fluids' },
        { state: 'unstarted', owner: '', description: 'Major service.', labels: 'breaks' },
        { state: 'unstarted', owner: '', description: 'Basic service.', labels: 'tires' },
        { state: 'unstarted', owner: '', description: 'Major service.', labels: 'timing belt' },
        { state: 'started', owner: 'Manny', description: 'Basic service.', labels: 'oil, tires, fluids' },
        { state: 'started', owner: 'Moe', description: 'Basic service.', labels: 'oil, tires, fluids' },
        { state: 'started', owner: 'Manny', description: 'Major service.', labels: 'kaput' },
        { state: 'started', owner: 'Moe', description: 'Basic service.', labels: 'oil, tires, fluids' },
        { state: 'started', owner: 'Jack', description: 'Major service.', labels: 'breaks, radiator' },
        { state: 'finished', owner: 'Moe', description: 'Basic service.', labels: 'oil, tires, fluids' },
        { state: 'finished', owner: 'Manny', description: 'Basic service.', labels: 'oil, tires, fluids' },
      ]

      isBlank = (params) ->
        params.state is '' and params.owner is '' and params.labels is ''

      # HACK: add some filtering to our static list of data
      # total abuse of list comprehensions
      if !params? or isBlank(params)
        (task for task in tasks)
      else
        reLabels = new RegExp(params.labels)
        (task for task in tasks when (task.state is params.state or !params.state?) and (task.owner is params.owner or !params.owner?) and (reLabels.test(task.labels) or !params.labels?))
])
