##  Similarities between _states_ can be pushed up into a common _parent state_

```javascript
$stateProvider.state('base', {
  abstract: true,
  views: {
    'header': {templateUrl: 'header.html'},
    'footer': {templateUrl: 'footer.html'}
  }
});
```
