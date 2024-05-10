#!/bin/bash
PROJECT_PATH=/kaggle/working
PASSWORD=jupiter123
docker run --rm -it --gpus=all \
    -v .:/kaggle \
    -v $PROJECT_PATH/.cache/torch:/root/.cache/torch \
    -v ./cache/huggingface:/root/.cache/huggingface \
    -v $PROJECT_PATH/.kaggle:/root/.kaggle \
    -p 9999:9999 \
    kaggle_gpu /bin/bash -c "export PASSWORD=$PASSWORD; jupyter lab --no-browser --ip='0.0.0.0' --notebook-dir=/kaggle --NotebookApp.token='$PASSWORD' --NotebookApp.password='' --allow-root" 
