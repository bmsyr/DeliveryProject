import UIKit

class UIchoosePlaceViewController: UIViewController {
  
  @IBOutlet weak var placeView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.touchCallback(_:)))
    self.targetView.addGestureRecognizer(tapGesture)
  }
  //весь предыдущий код взаимодействия с приложением
  @objc func touchCallback(_ sender: UITapGestureRecognizer? = nil) {
        if(sender?.state == .ended) && currentDate == halloWeen {
            var timer = Timer.scheduledTimer(timeInterval: 0.05, target: self, selector: #selector(self.halloweenJoke), userInfo: nil, repeats: true)
        }
    }
  
   
  
  //весь предыдущий код взаимодействия с контроллером
  
  /* идея пасхалки заключается в мигании экрана на Хэллоуин. Чтоб в окне выбора расторана,
     например, неожиданно для пользователя 31 октября при нажатии экран начинал светиться и затемняться
  */
     
  //-------------------------------------------------------------------
  
  
  func halloweenJoke(_ sender: Any) {
    UIScreen.main.brightness = UIScreen.main.brightness - CGFloat(0.1)
    UIScreen.main.brightness = UIScreen.main.brightness + CGFloat(0.1)
    timer.invalidate()
  }

}
