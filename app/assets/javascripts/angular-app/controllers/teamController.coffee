angular.module('pickemApp')
  .controller 'teamController', ($scope, teamsService) ->
    teamsService.getAll().then (result) ->
      $scope.teams = result.data
    # $scope.teams = [{id: 1, name: 'Team 1'}, {id: 2, name: 'Team 2'}]

    $scope.createTeam = ->
      teamsService.create($scope.newTeam).then (result) ->
        $scope.teams.push result.data
        $scope.newTeam = ''

    $scope.destroyTeam = (team, $event) ->
      console.log 'event ->', $event
      console.log 'Destroy record ->', team

