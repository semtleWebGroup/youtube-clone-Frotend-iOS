# YouTube 클론코딩 
![Unknown](https://github.com/NKLCBJoin/oh_OOTD/assets/114370871/b2b9f620-522e-4df7-87f8-b0f00eaa6935)


### 📖 프로젝트 소개

**유튜브 클론 코딩**은 `Spring Boot`와  `Swift`, `React`를 기반으로 영상 기반 소셜 미디어 **유튜브** 서비스를 하나하나 구현해가는 프로젝트입니다.

--------


### ⛰️ 프로젝트 목표

- 친숙한 서비스인 유튜브를 **분석**해서 **구조**를 직접 **설계**합니다.
- 역할을 분담하여 서비스를 코드로 **구현**하고 **배포**해봅니다.
    - 구현하는 과정에서 Front-end와 Back-end가 **협업**하는 과정을 이해합니다.
        - RESTful API를 직접 설계하고 API를 통한 HTTP 통신을 겪으며 협업 능력을 기릅니다.
        - 자신이 맡은 부분을 남에게 설명할 수 있는 의사소통 능력을 기릅니다.
    - 단순히 구현 후 끝나는 것이 아닌 **코드 리뷰**와 **피드백**을 통해 함께 성장합니다.
    - 기존의 코드를 지속적으로 개선하기 위해 **리팩토링**을 진행합니다.
- **Spring Boot**와  **Swift**, **React**를 기반으로 다양한 기술 스택을 **학습**하고 적용합니다.



--------



### 🖥 ️구현
<details>
<summary>로그인</summary>
<div markdown="1">
![ezgif com-video-to-gif-4](https://github.com/NKLCBJoin/oh_OOTD/assets/114370871/caf9b3f7-ae54-49e5-9fc1-f0ccc13582ec)

  - 소셜로그인(구글) 구현 
  - 로그인, 로그아웃
</div>
</details>

<details>
<summary>메인 화면 및 쇼츠 </summary>
<div markdown="1">
![ezgif com-video-to-gif-3](https://github.com/NKLCBJoin/oh_OOTD/assets/114370871/2872d5ce-88b0-4d49-8c39-82db4742d0f7)
  
  -메인화면 및 쇼츠화면
</div>
</details>

<details>
<summary>영상화면 및 댓글</summary>
<div markdown="1">
![ezgif com-video-to-gif-2](https://github.com/NKLCBJoin/oh_OOTD/assets/114370871/def10b58-61a7-4576-a51c-fa12d90c9624)
  
  -영상호출(M3u8)
  -댓글
</div>
</details>

<details>
<summary>영상업로드</summary>
<div markdown="1">
![ezgif com-video-to-gif-7-min](https://github.com/NKLCBJoin/oh_OOTD/assets/114370871/e09a86ff-902d-47c9-b3d9-79521b14b316)
  
  -영상업로드 및 인코딩
</div>
</details>




--------
### 👨🏻‍💻 기술스택
|Category|Stack|
|------|---|
|Tool|Xcode, Swift PM|
|Language|Swift, StoryBoard|
|Architecture|MVVM|
|Collaboration|Git, Github, Discord|

--------



### ✍🏻 느낀점
- MVVM 패턴으로 구현하며, MVVM패턴의 장점인 코드의 재사용성을 느낄 수 있는 시간이었다.
- M3u8영상을 AV kit 을 활용하여 인코딩하여 갖고오는 작업을 하며 영상처리하는 것에 대한 이해도가 향상되었다. 또한 비동기처리로 인한 지연을 사용자에게 알리는 view를 적용하면서 UI/UX에 대한 견해 또한 넒어졌다 
- completioin handler를 이용해 비동기적으로 데이터를 처리하면서 발생하는 지연을 사용자에게 알리기 위해 ProgressView를 처음으로 프로젝트에 적용해보았다.

