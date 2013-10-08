'use strict'

angular.module('listerApp.services.defaultFilters', [
    'listerApp.services.currentUser'
  ])

.service('DefaultFilters', ['currentUser',
  class DefaultFilters
    constructor: (user) ->
      filters.owner = user

    filters =
      state: `undefined`
      owner: `undefined`
      labels: `undefined`

    isBlank = ->
      filters.state is null and filters.owner is null and filters.labels is null

    clear: ->
      filters.state = null
      filters.owner = null
      filters.labels = null

    setOwner: (newOwner) ->
      # ng.directive:select expects string to set "selected" option attribute
      filters.owner = (newOwner + "") unless isBlank()

    get: ->
      return {} if isBlank()

      copied = angular.copy(filters)
      return copied
  ])