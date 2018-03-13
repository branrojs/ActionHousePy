#!/usr/bin/env python
# -*- coding: utf-8 -*-

##Librerias necesarias
import sys, time, base64, cStringIO
from PyQt4 import QtGui, QtCore
from PyQt4.QtCore import *
from PyQt4.QtGui import *
###hilos
import threading
#### Socket cliente
from zoket import client
###I.Grafica
from logg import Ui_Loggin ### loggin I.grafic
from lobby import user_lobby  ###lobby usuario
from infocliente import info_cliente ##registro cliente


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


class ulobby(QtGui.QMainWindow):
        def __init__(self, idcx, parent=None):
                super(ulobby, self).__init__(parent)
                global idcxl
                idcxl=idcx
                self.ui = user_lobby()
                self.ui.setupUi(self)
                self.listab = self.obtenerlista()
                self.listac = self.datoscliente(idcx)
                self.listap = []
                self.listat= self.obtenertiempos()
                self.editarcli()
                QtCore.QObject.connect(self.ui.comboBox, QtCore.SIGNAL("currentIndexChanged(int)"), self.cambiardatosindx)
                QtCore.QObject.connect(self.ui.savebtn, QtCore.SIGNAL("clicked()"), self.guardarclient)
                QtCore.QObject.connect(self.ui.pushButton, QtCore.SIGNAL("clicked()"), self.enviarpuja)


            
        def obtenerlista(self): #################esta funcion completa combobox con la serializacion, copia esto en tu main.py
            ab=client()
            self.ui.comboBox.clear()
            self.ui.comboBox.addItem(" ")
            lista=ab.sendrecs("subasta")
            for i in range(len(lista)):
                self.ui.comboBox.addItem(lista[i][0])
                print lista[i][0]
            return lista

        def obtenertiempos(self):
            ab=client()
            tiempo=ab.sendrecs("tiempo")
            return tiempo

        def cambiardatosindx(self):
            aba = self.ui.comboBox.currentIndex()
            if aba==0:
                print 'comboBox en pos 0'
                self.ui.artlable.setText("")
                self.ui.preinilabel.setText("")
                self.ui.urlable.setText("")
                self.ui.pujanlable.setText("")
            else:
                self.ui.artlable.setText(self.listab[aba-1][0])
                self.ui.preinilabel.setText(str(self.listab[aba-1][1]))
                pm= QtGui.QPixmap()
                pm.loadFromData(self.listab[aba-1][2])
                self.ui.urlable.setGeometry(10,10,100,100)
                self.ui.urlable.setPixmap(pm)
                self.ui.pujanlable.setText(str(self.listat[aba-1]))
            #listab[aba][2]

        def datoscliente(self, idx):
            ab=client()
            lista=ab.sendrecs("cliente, %s"%idx)
            return lista

        def editarcli(self):
            self.ui.lineEdit.setText(self.listac[1])
            self.ui.lineEdit_2.setText(str(self.listac[0]))
            self.ui.lineEdit_3.setText(self.listac[3])
            self.ui.lineEdit_4.setText(self.listac[4])
            self.ui.lineEdit_5.setText(self.listac[5])
            self.ui.lineEdit_6.setText(self.listac[6])
            self.ui.lineEdit_7.setText(self.listac[2])
            self.ui.lineEdit_8.setText(str(self.listac[7]))
            self.ui.lineEdit_9.setText(self.listac[9])

        def guardarclient(self):
            nam=self.ui.lineEdit.text()
            idxs=self.ui.lineEdit_2.text()
            pais=self.ui.lineEdit_3.text()
            prov=self.ui.lineEdit_4.text()
            ciu=self.ui.lineEdit_5.text()
            codp=self.ui.lineEdit_6.text()
            ema=self.ui.lineEdit_7.text()
            tar=self.ui.lineEdit_8.text()
            cont=self.ui.lineEdit_9.text()
            ab = client()
            U=Ui_Dialog()
            prot = "clienup"
            mess1 = "%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s"%(prot,idxs,nam,ema,pais,prov,ciu,codp,tar,cont,idcxl)
            met = mess1
            veri = ab.sendrec(met)
            if veri == "OK":
                u=Ui_Dialog()
                u.showCMessageBox("update aplicado")

        def enviarpuja(self):
            aba = self.ui.comboBox.currentIndex()
            u=Ui_Dialog()
            if aba==0:
                u.showCMessageBox("No se puede pujar ese articulo")
            else:
                datolista = self.listab[aba-1][0]
                pujaval=self.ui.lineEdit_10.text()
                c = client()
                resultado=c.sendpuj(pujaval,datolista,idcxl)
            if resultado=="exitosa":
                u.showCMessageBox("puja mayor, vas ganando el articulo")
            elif resultado == "menor":
                u.showEMessageBox("Puja de menor valor a la ganadora, incrementa el valor de tu puja si quieres ganar el articulo")
            elif resultado =="perdido":
                u.showEMessageBox("Articulo fuera de subasta")

                


if __name__ == "__main__":

        app = QtGui.QApplication(sys.argv)
        myapp = loggin()
        myapp.show()
        sys.exit(app.exec_())
