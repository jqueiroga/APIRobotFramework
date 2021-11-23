from pymongo import MongoClient
import certifi
import bson

client = MongoClient('mongodb://qaninja:academy@cluster0-shard-00-00.xgu0j.mongodb.net:27017,cluster0-shard-00-01.xgu0j.mongodb.net:27017,cluster0-shard-00-02.xgu0j.mongodb.net:27017/rocklov?ssl=true&replicaSet=atlas-13m6ta-shard-0&authSource=admin&retryWrites=true&w=majority',  tlsCAFile=certifi.where())
db = client['rocklov']

def get_mongo_id():
    return bson.objectid.ObjectId()

def remove_user_by_email(user_email):
    users = db['users']
    users.delete_many({'email': user_email})

    
def remove_equipo(equipo_name):
    users = db['equipos']
    users.delete_many({'name': equipo_name})