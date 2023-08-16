from datetime import datetime

def get_current_datetime():
    data = datetime.now()
    
    return data.strftime('%d/%m/%Y %H:%M:%S')