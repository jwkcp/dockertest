# dockertest
Django를 Docker로 배포하기 위한 연습 프로젝트입니다.

## 다음과 같은 항목을 연습합니다.
1. nginx-gunicorn-django-postgres 로 서비스 구동
2. Dockerfile로 이미지 생성
3. Docker-compose로 nginx, django+gunicorn, postgresql 을 각각 컨테이너로 구동
4. 컨테이너 간 네트워킹
5. 볼륨 설정으로 nginx 설정(default.conf), postgresql 데이터, 소스 마운팅
6. 컨테이너 간 의존성 설정
7. 환경설정파일 로드
8. 엔트리포인트(Entrypoint)로 후속 스크립트 실행
9. Postgresql서비스 올라오기 전 DB 마이그레이션 오류 방지 및 재시도
10. 배포 환경에서 static, media 데이터 정상 로드
