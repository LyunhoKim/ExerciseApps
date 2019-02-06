커스텀 스위치 버튼
* UIView, UIButton 이용 
* NSLayoutConstraint, UIView.animate



Screen Shot
---
iPhoneXS
Before and After

<img src="./screen1.png" width="375"> <img src="./screen2.png" width="375">


```
@IBAction func switchTouched(_ sender: Any) {

// 버튼 On, 위치 변경, 배경 뷰 색상 변경
if ButtonConstraintX.constant == -25 {
ButtonConstraintX.constant = 25
self.switchView.backgroundColor = UIColor.blue
// 버튼 Off
} else {
ButtonConstraintX.constant = -25
self.switchView.backgroundColor = UIColor.lightGray
}
UIView.animate(withDuration: 0.3) {
self.view.layoutIfNeeded()
}
}
```
