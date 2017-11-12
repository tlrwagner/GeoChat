import MySQLdb
from flask import Flask
from flask import jsonify
app = Flask(__name__)
app.debug = True

def query(query, isUpdate=False):
	db = MySQLdb.connect(host="hackitaldb.ce1doaue7cqd.us-east-1.rds.amazonaws.com", user="hackathon", passwd="thetatau", db="innodb")
	cur = db.cursor()
	cur.execute(query)

	if (isUpdate):
		db.commit()
		returnValues = None
	else:
		returnValues = cur.fetchall()

	db.close()
	return returnValues


#returnResults = []
#results = query("select niche_code, if(now()>niche_next_post_time, 1, 0) as is_due, niche_post_url, niche_post_url_image from niche where is_active = 1")

#for result in results:
#	returnResults.append((result[0], result[1], result[2], result[3]));

#return returnResults

@app.route('/')
def index():
	returnResults = ""
	results = query("select * from entry")
	for result in results:
		returnResults += "<p>" + str(result[0]) + ", " + str(result[1])  + ", " + str(result[2]) + "</p>"

	return returnResults[0][1]



@app.route('/test', methods=['POST'])
def test():
	return jsonify("TYLER RULEZ")