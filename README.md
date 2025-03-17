# Naver Trend Shopping App

\[!\[Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)

네이버 쇼핑 트렌드를 검색하고 결과를 보여주는 Flutter 앱입니다. 사용자는 검색어를 입력하여 네이버 쇼핑에서 관련 상품을 검색하고, 결과를 리스트 형태로 확인할 수 있습니다. 또한, 로그인 화면과 네비게이션 드로어를 제공하여 사용자 경험을 향상시켰습니다.

## 주요 기능

*   **로그인 화면:** 사용자 ID와 비밀번호를 입력하여 앱에 로그인할 수 있습니다. (현재는 임시 로그인 기능으로, 실제 로그인 기능은 구현되지 않았습니다.)
*   **쇼핑 검색:** 검색어를 입력하여 네이버 쇼핑에서 관련 상품을 검색할 수 있습니다.
*   **검색 결과 표시:** 검색 결과를 리스트 형태로 표시하며, 상품 이미지, 제목, 가격, 판매처 정보를 확인할 수 있습니다.
*   **네비게이션 드로어:** 앱의 주요 메뉴를 제공하는 네비게이션 드로어를 제공합니다.
    *   Home: 홈 화면으로 이동합니다. (현재는 기능 없음)
    *   Search: 쇼핑 검색 화면으로 이동합니다.
    *   Settings: 설정 화면으로 이동합니다. (현재는 기능 없음)
*   **임시 사용자 정보:** 네비게이션 드로어 상단에 임시 사용자 이름과 이메일을 표시합니다.

## 기술 스택

*   **Flutter:** 크로스 플랫폼 UI 프레임워크
*   **Dart:** Flutter의 프로그래밍 언어
*   **http:** HTTP 요청을 위한 패키지
*   **shared_preferences:** 간단한 데이터 저장을 위한 패키지 (현재는 사용되지 않음)
*   **Material:** Material Design을 위한 패키지

## 설치 방법

1.  Flutter SDK가 설치되어 있는지 확인합니다.
2.  이 저장소를 클론합니다.

\`\`\`
git clone \[저장소 URL]
\`\`\`

3.  프로젝트 디렉토리로 이동합니다.

\`\`\`
cd \[프로젝트 디렉토리]
\`\`\`

4.  필요한 패키지를 설치합니다.

\`\`\`
flutter pub get
\`\`\`

## 실행 방법

1.  에뮬레이터 또는 실제 기기를 연결합니다.
2.  다음 명령어를 실행하여 앱을 실행합니다.

\`\`\`
flutter run
\`\`\`

## 사용 방법

1.  앱을 실행하면 로그인 화면이 나타납니다.
2.  ID와 비밀번호를 입력하고 "Login" 버튼을 클릭합니다. (현재는 임시 로그인 기능으로, 어떤 값을 입력해도 검색 화면으로 이동합니다.)
3.  쇼핑 검색 화면에서 검색어를 입력하고 검색 아이콘을 클릭합니다.
4.  검색 결과가 리스트 형태로 표시됩니다.
5.  왼쪽 가장자리를 스와이프하거나, 앱바의 햄버거 메뉴 아이콘을 클릭하여 네비게이션 드로어를 열 수 있습니다.
6.  네비게이션 드로어에서 "Search"를 클릭하여 쇼핑 검색 화면으로 이동할 수 있습니다.

## API 서버

*   이 앱은 `http://127.0.0.1:5000/search_shopping` 주소로 요청을 보내는 백엔드 서버가 필요합니다.
*   백엔드 서버는 검색어를 받아 네이버 쇼핑 API를 호출하고, 결과를 JSON 형태로 반환해야 합니다.
*   백엔드 서버가 실행되지 않으면, 검색 결과가 표시되지 않습니다.

## 프로젝트 구조

\`\`\`
lib/
├── main.dart              # 앱의 진입점
├── screens/
│   ├── login_screen.dart  # 로그인 화면
│   └── search_screen.dart # 검색 화면
└── widgets/
    └── my_drawer.dart     # 네비게이션 드로어
\`\`\`

## 기여 방법

이 프로젝트에 기여하고 싶으시다면, 다음 단계를 따라주세요.

1.  이 저장소를 포크합니다.
2.  새로운 브랜치를 생성합니다 (`git checkout -b feature/AmazingFeature`).
3.  변경 사항을 커밋합니다 (`git commit -m 'Add some AmazingFeature'`).
4.  브랜치를 푸시합니다 (`git push origin feature/AmazingFeature`).
5.  풀 리퀘스트를 생성합니다.

## 라이선스

이 프로젝트는 \[MIT License](LICENSE) 라이선스 하에 배포됩니다.

## 연락처

*   \[Your Name](Your Email)

## 추가 정보

*   **Flutter:** [https://flutter.dev/](https://flutter.dev/)
*   **http:** [https://pub.dev/packages/http](https://pub.dev/packages/http)
*   **shared_preferences:** [https://pub.dev/packages/shared_preferences](https://pub.dev/packages/shared_preferences)

**사용 방법:**

1.  위의 내용을 **전체 선택**합니다.
2.  **복사**합니다.
3.  프로젝트 루트 디렉토리에 `README.md` 파일을 생성합니다.
4.  `README.md` 파일에 **붙여넣기**합니다.
5.  **수정해야 할 부분을 수정합니다.**

**수정해야 할 부분:**

*   `[저장소 URL]`을 실제 저장소 URL로 변경해야 합니다.
*   `[프로젝트 디렉토리]`를 실제 프로젝트 디렉토리 이름으로 변경해야 합니다.
*   `[Your Name]`과 `[Your Email]`을 실제 이름과 이메일로 변경해야 합니다.
*   `LICENSE` 파일을 생성하고, `README.md` 파일에서 해당 파일을 참고
