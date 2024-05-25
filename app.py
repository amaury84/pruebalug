print("hola mundo")
import mysql.connector
try:
    connection = mysql.connector.connect(
    host='https://ip172-18-0-58-cp2edv291nsg00f9irv0-3306.direct.labs.play-with-docker.com/',       # O la dirección de tu servidor MySQL
    user='root',      # Reemplaza con tu usuario de MySQL
    #database='coordenadas',
    password='Cisco_123'  # Reemplaza con tu contraseña de MySQL
    )
    if connection.is_connected():
        print('Conexión exitosa.')
        """ cursor = connection.cursor()
        consulta = "SELECT * FROM posiciones"
        cursor.execute(consulta)
        resultados = cursor.fetchall()
        for fila in resultados:
            print(fila)"""
        # No olvides cerrar la conexión una vez que hayas terminado con ella.
    connection.close()
except mysql.connector.Error as e:
    print('Error al conectar a MySQL:', e)
