# Art
1. Download the data from the following link [https://drive.google.com/file/d/1WRPsMQaMVLAVdwEnZUWxjGqvWNz-VKiA/view?usp=drive_link]
2. conda install -c conda-forge mpi4py
3. Change the image path in qwen_json.py file (eg.. change "/content/drive/MyDrive/1.ArtExp/train_images/" accordingly where you kept the data, input will be train.csv), it will generate a json file which will be input.
4. Install the requirements as ```pip install -r requirements```
5. Change the path inside train.sh accordingly the  and run it as ```bash train.sh```
