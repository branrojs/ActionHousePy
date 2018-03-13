import socket
import pickle
import sys
import MySQLdb
import datetime
import time
from threading import Thread

class mysocket:
        def __init__(self):
                server = socket.socket()
                global addres 
                addres = ("127.0.0.1",5559)
                server.bind(addres)
                server.listen(7)
                self.listar = [] #
                self.listapuj=[]
                self.listat=[]
                while True:
                        print "Iniciando servidor "
                        self.client, addr = server.accept()
                        print "Cliente conectando desde: ", addr[0],":",addr[1]
                        while True:
                                self.data = self.client.recv(1024)
                                self.datos = self.data.split(", ")
                                if self.datos[0]=="Registro":
                                        self.registrar()
                                        break
                                if self.datos[0]=="Login":
                                        self.iniciars()
                                        break
                                if self.datos[0]=="subasta":
                                        self.subastar()
                                        break
                                if self.datos[0]=="tiempo":
                                        self.dartiempos()
                                        break
                                if self.datos[0]=="cliente":
                                        self.darcliente()
                                        break
                                if self.datos[0]=="clienup":
                                        self.clienteup()
                                        break
                                if self.datos[0]=="agregar":
                                        self.articulorecivido()
                                        break
                                if self.datos[0]=="eliminado":
                                        self.articuloeliminado()
                                        break
                                if self.datos[0]=="pujar":
                                        self.pujar()
                                        break


                                
        def registrar(self):
                try:
                        #con = MySQLdb.connect('localhost','root','1234','subastas')
                        con = MySQLdb.connect('localhost','root','oveja','subastas')
                        cursor = con.cursor()
                        cursor.callproc('cuenta_nueva',(self.datos[1],self.datos[2],self.datos[3],self.datos[4],self.datos[5],self.datos[6],self.datos[7],self.datos[8],self.datos[9],self.datos[10]))
                        con.commit()
                except MySQLdb.Error as e:
                        try:
                                print "MySQL ERROR [%d]: %s" %(e.args[0], e.args[1])
                                client.send("NO")
                                
                        except IndexError:
                                print "MySQL Error %s" % str(e)
                                client.send("NO")
                                
                finally:
                        self.client.send("Trans completada")
                        cursor.close()
                        con.close()

        def iniciars(self):
                try:
                        #con = MySQLdb.connect('localhost','root','1234','subastas')
                        con = MySQLdb.connect('localhost','root','oveja','subastas')
                        cursor = con.cursor()
                        cursor.execute("call login("+self.datos[1]+",'"+self.datos[2]+"')")
                        save = cursor.fetchall()
                        if 1==save[0][0]:
                                print("Ingreso Validado: "+self.datos[1])
                                self.client.send("OK")
                        if 0==save[0][0]:
                                self.client.send("NO")
                except MySQLdb.Error as e:
                        try:
                                print "MySQL ERROR [%d]: %s" %(e.args[0], e.args[1])
                                
                        except IndexError:
                                 print "MySQL Error %s" % str(e)
                                 
                finally:
                        cursor.close()
                        con.close()
                        
        def subastar(self):
                data_string = pickle.dumps(self.listar)
                self.client.send(data_string)

        def dartiempos(self):
            data_time = pickle.dumps(self.listat)
            self.client.send(data_time)    
                        
        def darcliente(self):
                try:
                        #con = MySQLdb.connect('localhost','root','1234','subastas')
                        con = MySQLdb.connect('localhost','root','oveja','subastas')
                        cursor = con.cursor()
                        cursor.execute("select * from usuarios where id_usuarios=%i"%(int(self.datos[1])))
                        save = cursor.fetchone()
                        data_string = pickle.dumps(save)
                        self.client.send(data_string)                             
                except MySQLdb.Error as e:
                        try:
                                print "MySQL ERROR [%d]: %s" %(e.args[0], e.args[1])
                                
                        except IndexError:
                                print "MySQL Error %s" % str(e)
                                
                finally:
                        cursor.close()
                        con.close()

        def clienteup(self):
                try:
                        #con = MySQLdb.connect('localhost','root','1234','subastas')
                        con = MySQLdb.connect('localhost','root','oveja','subastas')
                        cursor = con.cursor()
                        cursor.execute("UPDATE usuarios SET id_usuarios=%i, nombre='%s', correo='%s', pais='%s', prov='%s', ciudad='%s', cod_pos=%i, targeta=%i, contra='%s' WHERE id_usuarios=%i"%(int(self.datos[1]),self.datos[2],self.datos[3],self.datos[4],self.datos[5],self.datos[6],int(self.datos[7]),int(self.datos[8]),self.datos[9],int(self.datos[10])))
                        con.commit()
                        self.client.send("OK")                        
                except MySQLdb.Error as e:
                        try:
                                print "MySQL ERROR [%d]: %s" %(e.args[0], e.args[1])
                                
                        except IndexError:
                                print "MySQL Error %s" % str(e)
                                
                finally:
                        cursor.close()
                        con.close()

        def articulorecivido(self):
                self.client.send("mande")
                arti=self.client.recv(999999999)
                artis = pickle.loads(arti)
                self.listar.append(artis)
                self.client.send("tiempo")
                tiempis=self.client.recv(50000)
                self.listat.append(tiempis)

        def articuloeliminado(self):
                self.client.send("manda")
                rem=self.client.recv(999999999)
                remu = pickle.loads(rem)
                self.listar.remove(remu)

                #cliente 0 articulonom = 1 puja 2

        def pujar(self):
            self.client.send("lleguele")
            pujada=self.client.recv(10000)
            pujadas = pickle.loads(pujada)
            con = MySQLdb.connect('localhost','root','oveja','subastas')
            cursor = con.cursor()
            cursor.execute("Select id_articulo,estado from articulos where nombre='%s'"%pujadas[1])
            idart=cursor.fetchone()
            if idart[1]=="en subasta":
                    cursor.execute("Select pujamayor from pujas where idarticulo=%i"%idart[0])
                    pujadata=cursor.fetchone()
                    if float(pujadata[0])<float(pujadas[2]):
                            cursor.execute("UPDATE pujas SET idusuario=%i, pujamayor=%f WHERE idarticulo=%i;"%(int(pujadas[0]),float(pujadas[2]),idart[0]))
                            con.commit()
                            self.client.send("pujamayor")
                    elif float(pujadata[0])==float(pujadas[2]) or float(pujadata[0])>float(pujadas[2]):
                            self.client.send("pujamenor")
            elif idart[1]=="no subastado" or idart[1]=="subastado":
                    self.client.send("perdido")
                    
                                
                



if __name__ == "__main__":
        u=mysocket()
        u()

