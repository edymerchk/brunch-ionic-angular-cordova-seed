App = angular.module("app", ['ionic'])

App.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider
  .state("tab",
    url: "/tab"
    abstract: true
    templateUrl: "/tabs.html"
  ).state("tab.home",
    url: "/home"
    views:
      "home-tab":
        templateUrl: "/home.html"
  ).state("tab.vendors",
    url: "/vendors"
    views:
      "vendors-tab":
        templateUrl: "/vendors.html",
        controller: "VendorsCtrl"
  ).state("tab.about",
    url: "/about"
    views:
      "about-tab":
        templateUrl: "/about.html"
  )

  $urlRouterProvider.otherwise "/tab/home"
