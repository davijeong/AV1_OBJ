<%@ page import="Suporte.Tabelas" %>
<%@ page import="Suporte.Paciente" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Tamanho da Roupa</title> 
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="font-family: calibri; font-size: 20px; padding-left:12px; padding-top:0px">
        
        <h2 style="font-size: 30px">TAMANHO DA ROUPA</h2>
        <div id="Dados">
            <p style="font-size:25px; margin-top: -5px; margin-bottom: 12px">Medidas:</p>
            <form action="comparar.jsp" method="get" target="result">
                Sexo: <br>
                <select name="sexo" id="sexo" style="height: 30px; font-size: 14px; margin-bottom: 10px">
                    <option value=1 style="background-color: mistyrose">Feminino</option>
                    <option value=2 style="background-color: lightskyblue">Masculino</option>
                </select><br>
                
                Parte: <br>
                <select name="parte" id="parte" style="height: 30px; font-size: 14px; margin-bottom: 10px">
                    <option value="1">&#x2191 Cima (Camisetas)</option>
                    <option value="2">&#x2193 Baixo (Calças)</option>
                </select><br>

                Medida (em <i>cm</i>): <br><input type="text" name="medida" style="margin-top: 5px; height: 25px; border-style: dotted;font-size: 14px; font-weight: bold;"><br><br>
                
                <span style="font-size: 19px; background-color: ">Como tirar suas medidas:</span><br>
                <li style="font-size: 16px; max-width:85%; margin-top: 5px"> Parte de <b>CIMA</b> - Medida do peito: Coloque uma fita métrica no lugar mais próximo do peito. Certifique-se de que está paralela ao chão.<br>Levante a cabeça, aperte a fita métrica respirando normalmente.</li>
                <li style="font-size: 16px; max-width:85%; margin-top: 3px"> Parte de <b>BAIXO</b> - Medida da cintura: Coloque uma fita métrica abaixo do umbigo no lugar mais fino de sua cintura.<br>Levante a cabeça, aperte a fita métrica respirando normalmente.</li><br>
                
                <input type="submit" name="enviar" value="Qual o meu tamanho?" style="width: 200px; height: 40px; font-size:16px; background-color: lemonchiffon; border-width: 3px">
            
            </form>
        </div>
        <br><br>
        
        
        <div id ="retorno" style="font-size: 50px">
            <iframe name="result" width="350" height="110" style="border-color: grey; border-width: 2px; border-style: solid"></iframe>
        </div>
        
        <%
            
            out.print(new Tabelas().Tamanhos());
           
        %>
        
        <br><br>
    
    
    </body>
</html>
