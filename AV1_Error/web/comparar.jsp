<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int sexo = Integer.parseInt(request.getParameter("sexo"));
        int parte = Integer.parseInt(request.getParameter("parte"));
        Float medida = Float.parseFloat(request.getParameter("medida"));
        String html = "";
        String size = "";
        
        try{
            
            if (parte == 1) {
                html = "Medida do Peito: "
                        + "<br>";
            } 

            else{
                html = "Medida da Cintura: "
                        + "<br>";
            }
            out.print(html);
            out.print(medida+"cm<br>");

            //Verifica se é homem ou mulher;
            if (sexo == 2){

                //Verifica se é a parte de Cima ou Baixo
                if (parte == 1){


                    //Utiliza a medida para determinar o tamanho para HOMENS;
                    if (medida >= 84 && medida < 88){
                        size = "PP";
                    }

                    else if ( medida < 92){
                        size = "P";
                    }

                    else if ( medida < 96){
                        size = "M";
                    }

                    else if ( medida < 104){
                        size = "G";
                    }

                    else if ( medida < 114){
                        size = "GG ";
                    }

                    else if ( medida < 124){
                        size = "3G";
                    }

                    else if ( medida < 136){
                        size = "4G";
                    }

                    else if ( medida < 147){
                        size = "5G";
                    }

                    else if ( medida < 160){
                        size = "6G";
                    }

                    else{
                        size = "Tamanho indisponível ou não reconhecido.";
                    }
                }

                //No caso da parte ser "Baixo"
                else{

                    //Utiliza a medida para determinar o tamanho para HOMENS;
                    if (medida >= 70 && medida < 74){
                        size = "PP";
                    }

                    else if ( medida < 78){
                        size = "P";
                    }

                    else if ( medida < 82){
                        size = "M";
                    }

                    else if ( medida < 90){
                        size = "G";
                    }

                    else if ( medida < 101){
                        size = "GG";
                    }

                    else if ( medida < 112){
                        size = "3G";
                    }

                    else if ( medida < 124){
                        size = "4G";
                    }

                    else if ( medida < 136){
                        size = "5G";
                    }

                    else if ( medida < 148){
                        size = "6G";
                    }

                    else{
                        size = "Tamanho indisponível ou não reconhecido.";
                    }
                }
            }

            //No caso do sexo ser "Mulheres"
            else {            
                //Caso seja a parte "Cima"
                if (parte==1){

                //Utiliza a medida para determinar o tamanho para MULHERES;
                    if (medida >= 80 && medida < 84){
                        size = "3P";
                    }

                    else if ( medida < 88){
                        size = "PP";
                    }

                    else if ( medida < 92){
                        size = "P";
                    }

                    else if ( medida < 96){
                        size = "M";
                    }

                    else if ( medida < 104){
                        size = "G";
                    }

                    else if ( medida < 114){
                        size = "GG";
                    }

                    else if ( medida < 124){
                        size = "3G";
                    }

                    else if ( medida < 136){
                        size = "4G";
                    }

                    else if ( medida < 148){
                        size = "5G";
                    }

                    else if ( medida < 160){
                        size = "6G";
                    }

                    else{
                        size = "Tamanho indisponível ou não reconhecido.";
                    }
                }

                //No caso da parte ser "Baixo"
                else{

                    //Utiliza a medida para determinar o tamanho para HOMENS;
                    if (medida >= 58 && medida < 63){
                        size = "3P";
                    }

                    else if ( medida < 66){
                        size = "PP";
                    }

                    else if ( medida < 70){
                        size = "P";
                    }

                    else if ( medida < 74){
                        size = "M";
                    }

                    else if ( medida < 85){
                        size = "G";
                    }

                    else if ( medida < 97){
                        size = "GG";
                    }

                    else if ( medida < 109){
                        size = "3G";
                    }

                    else if ( medida < 121){
                        size = "4G";
                    }

                    else if ( medida < 133){
                        size = "5G";
                    }

                    else if ( medida < 146){
                        size = "6G";
                    }

                    else{
                        size = "Tamanho indisponível ou não reconhecido.";
                    }
                }
            }
        
            out.print("<br>Tamanho da roupa:<br>");
            out.print(size);
        }
        
        catch (Exception ex) {
            String erro;
            erro = ex.getMessage();

            if (erro == null || erro == "empty String"){
                out.print("Parece que faltou preencher os campos com os dados.<br><br>");
            }
            
            else{
            out.print("Mensagem de erro do sistema: <br>" + ex.getMessage());
            }
        }
        
        %>
    </body>
</html>
