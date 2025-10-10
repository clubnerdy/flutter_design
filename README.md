# 플러터 디자인 모음집 🚀

> 실서비스 앱들의 UI/UX를 **학습 목적으로 모작**하여 한 페이지씩 구현한 Flutter 샘플 컬렉션입니다.  
> 코드 가독성과 재사용성을 최우선으로 구성했고, 실제 서비스에 쓰이는 컴포넌트/애니메이션/패턴을 해부·재현하는 것이 목표입니다.

<p align="left">
  <img src="https://img.shields.io/badge/Flutter-3.x-blue" />
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey" />
  <img src="https://img.shields.io/badge/License-MIT-green" />
  <img src="https://img.shields.io/badge/Status-Work%20in%20progress-yellow" />
</p>

### 

---

## 🧭 목차

1. [데모](#-데모)
2. [페이지 목록](#-페이지-목록)
3. [프로젝트 구조](#-프로젝트-구조)
4. [설치 & 실행](#-설치--실행)
6. [학습 노트](#-학습-노트)
9. [주의/라이선스](#-주의라이선스)


---

## 🎥 데모

> 아래 GIF/스크린샷은 개발 과정 스냅샷입니다. 고해상도 이미지는 `/docs/screenshots` 참고.

| 페이지 | 미리보기 |
|---|---|
| 나만의 닥터 – 메인화면 | ![doctor](docs/screenshots/doctor_main.gif) |
| 깨비즈 – 알람 생성 | ![kkaebiz](docs/screenshots/kkaebiz_alarm.png) |
| 가슴 속 삼천원 – 지도 | ![map](docs/screenshots/map_page.png) |
| 커리어톡 – 메인화면 | ![career](docs/screenshots/career_main.gif) |

###

---

## 📚 페이지 목록

- [1. 나만의 닥터 메인화면](lib/pages/my_doctor/my_doctor_page.dart)
- [2. 깨비즈 알람생성화면](lib/pages/kkaebiz/kkaebiz_page.dart)
- [3. 가슴 속 삼천원 지도화면](lib/pages/bungeoppang/bungeoppang_page.dart)
- [4. 커리어톡 메인화면](lib/pages/nhr_talk/nhr_page.dart)

> 각 페이지는 독립적으로 돌아가도록 구성되어 **샘플/테스트**에 최적화되어 있습니다.

---

## 🗂 프로젝트 구조
```
lib/
└─ pages/
├─ my_doctor/
├─ kkaebiz/
├─ bungeoppang/
└─ nhr_talk/

assets/
├─ mydoc/
├─ kkaebiz/
├─ bungeoppang/
└─ nhr/

docs/
└─ screenshots/ # README에 쓰는 이미지/GIF
```

---

## ⚙️ 설치 & 실행

```
bash

flutter pub get

# (옵션) .env 사용 시
# 프로젝트 루트에 .env 생성 후 flutter_dotenv로 로드
# 또는 Android는 local.properties에 MAPS_API_KEY 등으로 관리 권장

flutter run
```

---
## 📝 학습 노트
**❤️Inblog**
> https://inblog.ai/clubnerdy

###

---

## ⚖️ 주의/라이선스

본 저장소는 **교육/연습 목적**의 UI 모작 프로젝트입니다.  
원 저작물의 상표·아이콘·브랜드 자산은 각 소유자에게 권리가 있습니다.  
상업적 사용·배포는 지양하며, 필요 시 원작 출처를 명시하세요.

**License: MIT**