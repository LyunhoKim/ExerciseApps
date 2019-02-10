로그인 화면 구션
* 코드에서 동적으로 constraint 변경
* animation 사용
* TextField의 텍스트가 변경될 때 마다 callback을 받기 위한 selector 구현


Screen Shot
---
iPhoneXS

<img src="./screen1.png" width="375"> <img src="./screen2.png" width="375">


```
override func viewDidLoad() {
    super.viewDidLoad()
    
    // selector
    emailTextField.addTarget(self, action: #selector(editStatusChanged), for: UIControl.Event.editingChanged)
    passwordTextField.addTarget(self, action: #selector(editStatusChanged), for: UIControl.Event.editingChanged)
    
    // view의 높이에 대한 constraint
    emailErrorConstraint = emailErrorLabel.heightAnchor.constraint(equalToConstant: 0)
    passwordErrorConstraint = passwordErrorLabel.heightAnchor.constraint(equalToConstant: 0)
    
    // 첫 화면에서는 표시되지 않도록
    emailErrorConstraint?.isActive = true
    passwordErrorConstraint?.isActive = true
}
    

```
