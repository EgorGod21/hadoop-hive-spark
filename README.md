1. выгружаем [данные](https://cseweb.ucsd.edu/~jmcauley/datasets/amazon_v2/) в директорию `data`
2. строим образ `docker-compose build`
3. поднимаем контейнер: `docker-compose up -d`
4. переходим в контейнер: `docker-compose exec -it master bash` и выполняем команды `source /myenv/bin/activate` и `jupyter notebook --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''`
5. переходим по ссылке для работы в ноутбуке [http://localhost:8888/](http://localhost:8888/tree/workspace/notebooks)
