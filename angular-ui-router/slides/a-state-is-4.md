##  A _state_ composes one or more views to define the UI

```javascript
$stateProvider.state('base', { ... })
.state('base.home', {
  url: '/',
  views: {
    '@': { templateUrl: 'home.html' },
    'header': { templateUrl: 'new.html' }
  }
});
```
