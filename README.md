# FILE 구조 
```bash
.
├── README.md
├── NLPwithCNN
│   ├── eng_error_with_cat.csv
│   ├── eng_error_CNN_with_BERT.ipynb
│   └── create_dataset.ipynb
└── Model_Serving
    ├── requirements.txt
    ├── models
    │   └── 1
    │       ├── variables
    │       │   ├── variables.index
    │       │   └── variables.data-00000-of-00001
    │       ├── saved_model.pb
    │       └── assets
    ├── flask-post.py
    ├── app.py
    └── Dockerfile
```
# Dataset 

- 동일한 에러문에 임의로 특정 단어나 숫자만 바꿔 생성. 
	- 0 : Port Error 
	- 1 : Pod Error
	- 2 : No Network Access
	- 3 : Application Failure

# TF-Serving

- Docker image build 
```
docker build -t [Docker image 명] .
```

- Docker run 
```
docker run -d -p [외부포트]:[내부포트] --name [container 명] [docker image 명]
```

- Flask를 이용한 post
```
python3 flask-app.py [외부포트]
```
