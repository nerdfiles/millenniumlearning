'use strict';

describe('Controller: HomeCtrl', function () {

  beforeEach(module('mlts'));

  var HomeCtrl,
    scope;

  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    HomeCtrl = $controller('HomeCtrl', {
      $scope: scope
    });
  }));

  it('should attach a list of streams to the scope', function () {
    expect(scope.streams.length).toBe(3);
  });
});
