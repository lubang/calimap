# INSTALL

## 배포

캘리맵의 배포 환경은 다음과 같다.

* PORT: 10100
* server: 경로를 Docker volume으로 매핑

캘리맵은 Docker 를 이용한 컨테이너로 배포된다. 배포를 위한 Docker image 및 실행 방법은 다음과 같다. 아래의 명령들은 반드시 calimap root 폴더에서 수행한다.

    $ docker/docker-build.sh
    $ docker/docker-run.sh


1. Docker Image 생성: docker 폴더의 `docker/docker-build.sh` 실행
2. Docker 실행: docker 폴더의 `docker/docker-run.sh` 실행

위와 같이 실행하여 배포판을 서비스한다. 성공적으로 수행이 되면 http://localhost:10100 주소에서 서비스된다.
