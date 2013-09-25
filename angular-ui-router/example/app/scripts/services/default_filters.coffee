'use strict'

angular.module('listerApp.services.defaultFilters', [])

.provider 'DefaultFilters',
  class DefaultFiltersProvider
    filters =
      state: null
      owner: null
      labels: null

    setOwner: (newOwner) ->
      filters.owner = newOwner

    $get: ->
      isBlank = ->
        filters.state is null and filters.owner is null and filters.labels is null

      clear = ->
        filters.state = null
        filters.owner = null
        filters.labels = null

      get = ->
        return {} if isBlank()

        copied = angular.copy(filters)
        clear()
        return copied

      get: get
