##  A _state_ describes what the UI looks like and does at that _place_

```html
<body>
  <div ui-view="header"></div>
  <div ui-view="sidebar"></div>
  <div ui-view></div>
</body>
```

```javascript
$stateProvider.state('home', {
  templateUrl: 'home.html',
  controller: 'HomeController'
});
```
