#from datetime import datetime
#from operator import index
#from tkinter.tix import INTEGER, TEXT
#from typing import Text
import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.types import Text, Date

df = pd.read_excel('Escritoras-peruanas.xlsx')
engine = create_engine('sqlite:///mep_db.db')

df.to_sql('Escritoras', con=engine, if_exists='replace', index=False, #chunksize=1, #chunksize=1 for inserting one row at a time
          dtype={'Fecha de defuncion': Date(), 'Trayectoria': Text()}) #erase if columns types are detected correctly
