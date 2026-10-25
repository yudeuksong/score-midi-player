# 악보·MIDI 플레이어 (Score MIDI Player)

설치 없이 실행하는 오프라인 MusicXML·MIDI 플레이어입니다. 외부 CDN, 계정, Python, Node.js 또는 서버가 필요하지 않습니다.

## 시작하기

1. [Releases](https://github.com/yudeuksong/score-midi-player/releases)에서 `score-midi-player-v1.0.0-portable.zip`을 받습니다.
2. ZIP 전체를 원하는 폴더에 압축 해제합니다. ZIP 안에서 바로 실행하지 마세요.
3. Windows에서 `Start.cmd`를 두 번 클릭합니다. 또는 `index.html`을 Edge/Chrome으로 엽니다.
4. 재생 버튼을 누릅니다. 원하는 악보/MIDI를 파일 열기 또는 끌어다 놓기로 불러옵니다.

HTML 파일과 브라우저만 있으면 macOS/Linux에서도 실행할 수 있습니다. Windows EXE가 아니라 설치·관리자 권한이 필요 없는 브라우저 기반 포터블입니다. 최신 Edge/Chrome을 권장합니다.

## 기능

- MusicXML / XML / 압축 MXL: 오선 악보 표시, 재생 커서
- MIDI / MID: 피아노 롤, 트랙별 음소거, 한글 UTF-8 트랙 이름
- 재생/일시정지/정지, 위치 이동, 빠르기 40~200%, 음량, 4가지 합성 음색, 반복
- 예제 MusicXML·MIDI 내장
- Space: 재생/일시정지, 좌우 화살표: 5초 이동
- 로컬 처리만 사용하며 업로드·분석 추적 코드 없음. CSP로 네트워크 연결 차단

## 제한과 주의

- 실제 악기 샘플이 아닌 합성 음색입니다. 드럼은 기본 음소거입니다.
- 도돌이표/D.C./D.S. 및 복잡한 템포 변화는 대략적으로 처리될 수 있습니다. 전문 악보 편집기를 대체하지 않습니다.
- 파일당 최대 20MB, 100,000개 음표, 2시간을 지원합니다. 복잡한 악보는 렌더링에 시간이 걸립니다.
- 긴 MIDI는 캔버스 메모리 보호를 위해 가로 축을 축소합니다.
- 소리가 없으면 재생 버튼을 눌렀는지, 브라우저 탭·Windows 볼륨이 음소거인지 확인하세요.
- 악보/MIDI 저장·편집·변환 기능은 없습니다.
- 서명된 EXE를 제공하지 않습니다. Windows가 CMD 실행을 차단하면 `index.html`을 직접 열면 됩니다.

## 개발 및 패키징

`index.html`이 실행 가능한 전체 소스입니다. CSS, 앱 코드 및 고정 버전 라이브러리를 모두 포함합니다. 실행 시 다운로드가 발생하지 않습니다. 일반 텍스트 편집기로 수정할 수 있습니다. `build.ps1`을 PowerShell로 실행하면 `dist`에 ZIP과 SHA-256 파일을 만듭니다. 빌드에는 Windows PowerShell 5.1 이상이 필요합니다.

## 라이선스

앱 코드: MIT. 라이브러리의 별도 조건은 `THIRD-PARTY-NOTICES.md`와 `LICENSE-*.txt`를 참조하세요. 사용 권한이 있는 음악 파일만 이용해 주세요.
