angular.module('pickemApp')
  .factory 'teamsService', ($http) ->
    {
      getAll: ->
        $http.get '/api/v1/teams'
      create: (name) ->
        $http.post '/api/v1/teams', name: name
      destroy: (team) ->
        $http.delete '/api/v1/teams/' + team.id
    }
