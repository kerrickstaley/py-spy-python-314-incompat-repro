import time
import sys

def my_sleep_fn(num_secs):
    time.sleep(num_secs)


my_sleep_fn(float(sys.argv[1]))
