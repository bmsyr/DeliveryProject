import UIKit

class UIMapViewController: UIViewController {
  
  @IBOutlet weak var mapView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  //весь предыдущий код взаимодействия с контроллером
  
  /* идея пасхалки заключается в замене изображения курьера на карте
     на анимацию трясущегося курьера на реактивном ранце, если пользователь
     не покидает контроллер карты на протяжении 10 минут, то есть очень
     ждёт свою еду */
     
  //-------------------------------------------------------------------
  
  /* Если таймер на окне наблюдения за курьером перещелкивает за 10 минут,
     запускается функция screenActiveForAWhile, заменяющая иконку курьера и
     добавляющая анимацию */
  
  @IBAction func screenActiveForAWhile(_ sender: Any) {
    self.mapView.carrier = UIImage(named: "jetpack.png")
    UIView.animate(withDuration: 1, delay: 0.25, options: [.autoreverse, .repeat], animations: {
                self.mapView.carrier.frame.origin.y -= 10
                self.mapView.carrier.frame.origin.x += 10
                self.mapView.carrier.frame.origin.y += 10
                self.mapView.carrier.frame.origin.x -= 10
            })
  }

}
