#!/usr/bin/env python
# -*- coding: utf-8 -*-

##Librerias necesarias
import sys, time, base64, cStringIO, datetime
from PyQt4 import QtGui, QtCore
from PyQt4.QtCore import *
from PyQt4.QtGui import *
###hilos
from threading import Thread
#### Socket cliente
from zoket import client
#database api
import MySQLdb
###I.Grafica
from logg import Ui_Loggin ### loggin I.grafic
from lobby import user_lobby  ###lobby usuario
from serversubasta import Ui_MainWindow ##registro cliente


        ##Clase para darle valores a la tabla con 1 string
class MyTableModel(QAbstractTableModel):
    def __init__(self, datain, parent=None, *args):
        QAbstractTableModel.__init__(self, parent, *args)
        self.arraydata = datain

    def rowCount(self, parent):
        return len(self.arraydata)

    def columnCount(self, parent):
        return len(self.arraydata[0])

    def data(self, index, role):
        if not index.isValid():
            return QVariant()
        elif role != Qt.DisplayRole:
            return QVariant()
        return QVariant(self.arraydata[index.row()][index.column()])
        ##Mensajes de alertas erroneas o de mensajes de proceso completo
class Ui_Dialog(object):
    def showEMessageBox(self,message):
            msg = QMessageBox()
            msg.setIcon(QMessageBox.Warning)
            msg.setWindowTitle("Error")
            msg.setInformativeText(message)
            msg.setStandardButtons(QMessageBox.Ok)
            msg.exec_()

    def showCMessageBox(self,message):
        msg = QMessageBox()
        msg.setIcon(QMessageBox.Information)
        msg.setWindowTitle("Error")
        msg.setInformativeText(message)
        msg.setStandardButtons(QMessageBox.Ok)
        msg.exec_()
##################################Cliente inicia abajo################################
class loggin(QtGui.QWidget):
    def __init__(self, parent=None):
        super(loggin, self).__init__(parent)
        self.ui = Ui_Loggin()
        self.ui.setupUi(self)
        QtCore.QObject.connect(self.ui.pushButton_3, QtCore.SIGNAL("clicked()"), self.abrirreg)
        QtCore.QObject.connect(self.ui.pushButton_2, QtCore.SIGNAL("clicked()"), self.abrirlobby)

    def abrirlobby(self):
        ab = client()
        U=Ui_Dialog()
        prot = "Login"
        cor = self.ui.textEdit.toPlainText()
        pas = self.ui.textEdit_2.toPlainText()
        mess1 = "%s, %s, %s"%(prot,cor,pas)
        met = mess1
        veri = ab.sendrec(met)
        if veri == "OK":
            self.lob=ulobby(cor)
            self.lob.show()
        elif veri == "NO":
            U.showEMessageBox("Error, el usuario y contraseña no concuerdan en la base de datos")

    def abrirreg(self):
        self.w = registro()
        self.w.show()

    def quit(self):
        sys.exit(app.exec_())                

class registro(QtGui.QMainWindow):
        def __init__(self, parent=None):
                super(registro, self).__init__(parent)
                self.ui = info_cliente()
                self.ui.setupUi(self)
                QtCore.QObject.connect(self.ui.entrarbtn, QtCore.SIGNAL("clicked()"), self.registrar)

        def registrar(self):
            abc = client()
            prot = "Registro"
            ## self.ui.lineedit.text() obtiene de qlineedit
            nom = self.ui.LEnom.text()
            uid = self.ui.LEid.text()
            ps = self.ui.LEpais.text()
            prov = self.ui.LEprov.text()
            ci = self.ui.LEciud.text()
            cor = self.ui.LEmail.text()
            cp = self.ui.LEpost.text()
            tarj = self.ui.LEtarg.text()
            pw = self.ui.LEpw.text()
            if self.ui.RBAE.isChecked():
                    tipot= "American Express" 
            if self.ui.RBVisa.isChecked():
                    tipot= "Visa" 
            if self.ui.RBmaster.isChecked():
                    tipot= "Master Card" 
            mess1 = "%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s"%(prot,uid,nom,cor,ps,prov,ci,cp,tarj,tipot,pw)
            met = mess1
            val=abc.sendrec(met)
            U=Ui_Dialog()
            if val=="NO":
                U.showEMessageBox("Error al registrar el cliente")
            else:
                U.showCMessageBox("Usuario Registrado con exito")


class servidor(QtGui.QMainWindow):
    def __init__(self, parent=None):
                super(servidor, self).__init__(parent)
                self.ui = Ui_MainWindow()
                self.ui.setupUi(self)
                self.ui.comboBox.addItem(" ")
                self.listab = self.obtenerlista()
                self.listat = self.predetiempo()
                QtCore.QObject.connect(self.ui.comboBox, QtCore.SIGNAL("currentIndexChanged(int)"), self.cambiardatosindx)
                QtCore.QObject.connect(self.ui.evinararticulo, QtCore.SIGNAL("clicked()"), self.enviarart)
                QtCore.QObject.connect(self.ui.detenert, QtCore.SIGNAL("clicked()"), self.ireliminando)                


    def obtenerlista(self):
        con = MySQLdb.connect('localhost','root','oveja','subastas')
        cursor = con.cursor()
        cursor.execute("select nombre,precio_ini,img,segundos from articulos")
        save = cursor.fetchall()
        cursor.close()
        con.close()
        for i in range(len(save)):
            self.ui.comboBox.addItem(save[i][0])
        return save

    def cambiardatosindx(self):
        aba = self.ui.comboBox.currentIndex()
        if aba==0:
            print 'comboBox en pos 0'
            self.ui.artlable_2.setText("")
            self.ui.preinilabel_2.setText("")
            self.ui.urlable.setText("")
            self.ui.tiempol.setText("")
        else:
            self.ui.artlable_2.setText(self.listab[aba-1][0])
            self.ui.preinilabel_2.setText(str(self.listab[aba-1][1]))
            pm= QtGui.QPixmap()
            pm.loadFromData(self.listab[aba-1][2])
            self.ui.urlable_2.setGeometry(10,10,100,100)
            self.ui.urlable_2.setPixmap(pm)
            self.ui.tiempol.setText(str(self.listat[aba-1]))

    def enviarart(self):
        aba = self.ui.comboBox.currentIndex()
        u=Ui_Dialog()
        if aba==0:
            u.showCMessageBox("No se puede enviar ese articulo")
        else:
            con = MySQLdb.connect('localhost','root','oveja','subastas')
            cursor = con.cursor()
            cursor.execute("select id_articulo,estado from articulos where nombre='%s'"%self.listab[aba-1][0])
            save = cursor.fetchone()
            if save[1]=="no subastado":
                cursor.execute("UPDATE articulos SET estado='en subasta' WHERE nombre='%s';"%self.listab[aba-1][0])
                con.commit()
                cursor.execute("UPDATE pujas SET pujamayor=%f WHERE idarticulo=%i;"%(float(self.listab[aba-1][1]),save[0]))
                con.commit()
                datolista = self.listab[aba-1]
                datotiempo = self.listat[aba-1]
                
                c = client()
                c.sendlistaserver(datolista,datotiempo)
                cursor.close()
                con.close()
                self.ui.label_6.setText("en subasta")
            elif save[1]=="subastado" or save[1]=="en subasta":
                u.showEMessageBox("Ese articulo ya fue subastado")

    def ireliminando(self):
        aba = self.ui.comboBox.currentIndex()
        con = MySQLdb.connect('localhost','root','oveja','subastas')
        cursor = con.cursor()
        cursor.execute("select estado from articulos where nombre='%s'"%self.listab[aba-1][0])
        save = cursor.fetchone()
        if save[0]=="en subasta":
            cursor.execute("UPDATE articulos SET estado='subastado' WHERE nombre='%s';"%self.listab[aba-1][0])
            con.commit()
            cursor.close()
            con.close()
            self.ui.label_6.setText("subastado")
        elif save[0]==save[0]=="no subastado":
            u.showEMessageBox("Ese articulo no se ha enviado a subastar")
            
    def predetiempo(self):
        baborsg=[]
        for x in range(len(self.listab)):
            a=datetime.datetime.now()
            b=a+datetime.timedelta(0,self.listab[x][3])
            baborsg.append(str(b))
        return baborsg

if __name__ == "__main__":

        app = QtGui.QApplication(sys.argv)
        myapp = servidor()
        myapp.show()
        sys.exit(app.exec_())
