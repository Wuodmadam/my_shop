from flask import *
import pymysql
from functions import*
from mpesa import *
app=Flask(__name__)
# session key
app.secret_key="2000"

@app.route("/")
def Homepage():
    # connect to DB
    connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
    sql="SELECT * FROM products WHERE product_category='phones'"
    sql1="SELECT * FROM products WHERE product_category='electronics'"
    sql2="SELECT * FROM products WHERE product_category='Beauty'"
   
    # you need to have a cursor
    # cursor - is used to run/execute the above SQL
    cursor=connection.cursor()
    cursor1=connection.cursor()
    cursor2=connection.cursor()
    
    # execute
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    


    # fetch all phones rows
    phones=cursor.fetchall()
    electronics=cursor1.fetchall()
    Beauty=cursor2.fetchall()
    
   


    # fetch all electronics rows
   
    return render_template("index.html", phones=phones, electronics=electronics, Beauty=Beauty, )

  

    

# route for single item
@app.route("/single/<products_id>")
def singleitem(products_id):
    connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
    sql = "SELECT * FROM products where products_id = %s"
    cursor=connection.cursor()
    cursor.execute(sql,products_id)
    product = cursor.fetchone()
    return render_template("single.html" , product = product)

#upload products
@app.route("/upload",methods=['POST','GET'])
def upload():
    if request.method == 'POST':
        # user can add the products
        product_name =request.form['product_name']
        product_desc =request.form['product_desc']
        product_cost =request.form['product_cost']
        product_category =request.form['product_category']
        product_image_name =request.files['product_image_name']
        product_image_name.save('static/images/' +product_image_name.filename)
        
    
    # connect to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
        cursor = connection.cursor()

        sql="insert into products (product_name,product_desc,product_cost,product_category,product_image_name) values (%s, %s,%s,%s,%s)"
        data = (product_name, product_desc, product_cost, product_category, product_image_name.filename)
        cursor.execute(sql, data)
# save changes
        connection.commit()
        return render_template("upload.html",message="product added successfully")
    else:
        return render_template("upload.html",error="please add a product")

    

 
#    fashion route helps you to see fashions
@app.route("/fashion")
def fashion():
    # connect to DB
    connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
    sql="SELECT * FROM products WHERE product_category='dresses'"
    sql1="SELECT * FROM products WHERE product_category='handbags'"
    sql2="SELECT * FROM products WHERE product_category='socks'"
    sql3="SELECT * FROM products WHERE product_category='cap'"
    sql4="SELECT * FROM products WHERE product_category='belts'"
   
    # you need to have a cursor
    # cursor - is used to run/execute the above SQL
    cursor=connection.cursor()
    cursor1=connection.cursor()
    cursor2=connection.cursor()
    cursor3=connection.cursor()
    cursor4=connection.cursor()
    
    # execute
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)
    


    # fetch all phones rows
    dresses=cursor.fetchall()
    handbags=cursor1.fetchall()
    socks=cursor2.fetchall()
    cap=cursor3.fetchall()
    belts=cursor4.fetchall()
    return render_template("fashion.html", dresses=dresses, handbags=handbags,socks=socks, cap=cap, belts=belts)

@app.route("/uploadfashion",methods=['POST','GET'])
def uploadfashion():
    if request.method == 'POST':
        # user can add the products
        product_name =request.form['product_name']
        product_desc =request.form['product_desc']
        product_cost =request.form['product_cost']
        product_category =request.form['product_category']
        product_image_name =request.files['product_image_name']
        product_image_name.save('static/images/' +product_image_name.filename)
        
    
    # connect to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
        cursor = connection.cursor()

        sql="insert into products (product_name,product_desc,product_cost,product_category,product_image_name) values (%s, %s,%s,%s,%s)"
        data = (product_name, product_desc, product_cost, product_category, product_image_name.filename)
        cursor.execute(sql, data)
# save changes
        connection.commit()
        return render_template("uploadfashion.html",message="fashion added successfully")
    else:
        return render_template("uploadfashion.html",error="please add a fashion product")

    # user registration
    
@app.route("/about")
def about():
    return "this is my about page"

@app.route("/register",methods=['POST','GET'])
def register():
    if request.method == 'POST':
        # user can add the products
        username =request.form['username']
        email =request.form['email']
        gender =request.form['gender']
        phone =request.form['phone']
        password =request.form['password']
        
        # # validate user password
        # response = checkpasswordvalidity(password)
        # if response == True:
        #     # password met all the conditions

        # else:
        #     # password did not meet all the conditions
        #    return render_template("register.html",message="registered successfully")


         # connect to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
        cursor = connection.cursor()

        sql="insert into users (username,email,gender,phone,password) values (%s, %s,%s,%s,%s)"
        data = (username,email, gender, phone, password)
        cursor.execute(sql, data)

        connection.commit()

        return render_template("register.html",message="registered successfully")
    else:
        return render_template("register.html",error="please register")


@app.route("/login", methods=['POST','GET'])
def login():
    if request.method == 'POST':
        # user can register
        email =request.form['email']
        password =request.form['password']

         # connect to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='my_shop')
        cursor = connection.cursor()

        # check if user with email exist in the db

        sql="SELECT * FROM users WHERE email = %s AND password= %s"
        data = (email,password)
        cursor.execute(sql, data)

       
        # check if any result is found

        if cursor.rowcount == 0:
                # it means username and password not found

            return render_template("login.html",error="invalid login credentials")
        else:
            session['key']= email
            return redirect("/")
    return render_template('login.html')

#mpesa
# implement stk push
@app.route('/mpesa', methods = ['POST'])
def mpesa():
    phone = request.form["phone"]
    amount = request.form["amount"]

    # use mpesa_payment function from mpesa.py
    # it accepts the phone and amount as arguments
    mpesa_payment(amount, phone)
    return '<h1> PLease complete payment in your phone<h1>'\
    '<a href="/" class="btn.btn-dark btn-sm > Go back to products</a>'

@app.route("/logout")
def logout():
    session.clear()
    return redirect("/login")

if __name__== "__main__":
    app.run(debug=True,port=4000)

 

