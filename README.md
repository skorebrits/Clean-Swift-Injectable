# Clean-Swift-Injectable
Adaption of Clean Swift with Dependency Injection with Templates

This code is based on https://clean-swift.com by https://github.com/rayvinly

By making the Interactor & Presenter injectable the code becomes better reusable, and needs less setup. 

```swift
if let cleanInjectableViewController = segue.destination as? CleanInjectDisplayDelegate,
    segue.identifier == "presentCleanInject" {
    cleanInjectableViewController.interactor = CleanInjectInteractor(
        presenter: CleanInjectPresenter(display: cleanInjectableViewController)
    )
}
```

vs 

```swift
private func cleanSetup() {
    let viewController = self
    let interactor = CleanInteractor()
    let presenter = CleanPresenter()
    let router = CleanRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
}
```

The project has a working example of Clean Swift and the same ViewController implemented as Injectable.

Templates are included for Scene & Tests