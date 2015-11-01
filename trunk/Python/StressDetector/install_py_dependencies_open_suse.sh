#on terminal: sudo bash install_py_depedencies_open_suse.sh
yast2 --install python;
yast2 --install python-pip;
yast2 --install python-numpy python-scipy python-matplotlib python-pandas python-sympy python-nose;
yast2 --install git;
yast2 --install curl;
pip2.7 install web.py;
cd ~/;
mkdir repo;
cd repo;
git clone https://github.com/maxmousee/Stress-Detector.git -b master
#need to change this
#to run it just go to the folder and type "python StressDetector.py" without the quotes
#it will run as a http service listening to port 8080
#to send a test request just run "curl -H "Content-Type: application/json" --data @audiodata.json http://localhost:8080/processAudio"
