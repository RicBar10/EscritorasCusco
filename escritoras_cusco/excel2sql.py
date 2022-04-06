import openpyxl

# Ubicacion del archivo Excel
excel = '.\\Proposicion de bdd\\bddMujeresDelLibroPeruano.xlsx'
# Nombre del archivo donde guardar las instrucciones
sql_out = 'datos.sql'
# Hojas a leer del archivo Excel
hojas_nombres = ['Mujer', 'Publicacion', 'Lugar', 'Ejerce']

workbook = openpyxl.load_workbook(excel)
file_sql = open(sql_out, 'w', encoding='utf8')

# Borrar los datos existentes en las tablas
for nombre in hojas_nombres:
    file_sql.write('DELETE FROM ' + nombre + ';\n')

# Iterar en todas las hojas para extraer los datos
for nombre in hojas_nombres:
    hoja = workbook[nombre]
    id_key = 1
    file_sql.write('\n')
    for row in hoja.iter_rows(min_row=2, max_row=hoja.max_row, min_col=2, max_col=hoja.max_column):
        # Crear query de la forma
        # INSERT INTO <tabla> VALUES (id,...,...,...,...,...);
        query = 'INSERT INTO ' + nombre + ' VALUES (' + str(id_key)
        id_key += 1
        for cell in row:
            if cell.value == None:
                # casilla vacia
                query = query + ',NULL'
            elif cell.data_type == 's':
                # string (agregar comillas)
                query = query + ',"' + str(cell.value) + '"'
            elif cell.data_type == 'd':
                # fecha (agregar comillas y transformar a formato DD/MM/AAAA)
                fecha = str(cell.value)
                query = query + ',"' + fecha[8:10] + '/' + fecha[5:7] + '/' + fecha[0:4] + '"'
            elif cell.data_type == 'n' and cell.value > 1500:
                # anho superior a 1500 (agregar comillas)
                # ATENCION: pueden haber problemas si se superan las 1500 escritoras
                query = query + ',"' + str(cell.value) + '"'
            else:
                query = query + ',' + str(cell.value)
        query = query + ');\n'
        file_sql.write(query)
