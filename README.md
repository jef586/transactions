Instrucciones Para el inicio de la aplicación primero se deben ejecutar en el terminal los dos Rake tasks respetando el siguiente orden.

parse_txt.rake 2. parse_client.rake
Posteriormente, luego de iniciar el servidor (considerando servidor local) se pueden consultar los endpoints siguiendo las rutas a través de la aplicación Postman o similar.

http://localhost:3000/clients
http://localhost:3000/clients/1/transactions donde “1” corresponde al id del cliente http://localhost:3000/clients/1/balance donde “1” corresponde al id del cliente
