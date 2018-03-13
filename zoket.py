import sys
import socket
import pickle

class client:
	def __init__(self):
		ip = '127.0.0.1'
		port = 5559
		global addres
		addres=(ip,port)

	def send(self,mensaje):
		client = socket.socket()
		client.connect(addres)
		client.send(mensaje)
		me=client.recv(1024)
		client.send("Fin")
		client.close()

	def sendrec(self,mensaje):
		client = socket.socket()
		client.connect(addres)
		client.send(mensaje)
		me=client.recv(999999999)
		print "obtuve info, sendrec completo."
		client.close()
		return me
		

	def sendrecs(self,mensaje): ##################Esta funcion recibe datos serializados en el servidor y los deserializa
		client = socket.socket()
		client.connect(addres)
		client.send(mensaje)
		me=client.recv(999999999)
		print "obtuve info, sendrecs completo."
		data = pickle.loads(me)
		client.close()
		return data

	def sendlistaserver(self,mensaje,tiempo): ##################Esta funcion recibe datos serializados en el servidor y los deserializa
		client = socket.socket()
		client.connect(addres)
		client.send("agregar")
		me=client.recv(1024)
		if me =="mande":
			data = pickle.dumps(mensaje)
			tiempos = pickle.dumps(tiempo)
			client.send(data)
			ma=client.recv(1024)
			if ma=="tiempo":
				client.send(tiempos)
		client.close()

	def sendeliminararticulo(self,mensaje): ##################Esta funcion recibe datos serializados en el servidor y los deserializa
		client = socket.socket()
		client.connect(addres)
		client.send("eliminado")
		me=client.recv(1024)
		if me =="manda":
			data = pickle.dumps(mensaje)
			client.send(data)
		client.close()

	def sendpuj(self,puja,articulo,cliente):
		client = socket.socket()
		client.connect(addres)
		client.send("pujar")
		me=client.recv(1024)
		if me =="lleguele":
			puja_articulo=(cliente,articulo,puja)
			data = pickle.dumps(puja_articulo)
			client.send(data)
			lel=client.recv(1024)
			client.close()
		if lel=="pujamayor":
			return "exitosa"
		elif lel == "pujamenor":
			return "menor"
		elif lel == "perdido":
			return "perdido"
		


