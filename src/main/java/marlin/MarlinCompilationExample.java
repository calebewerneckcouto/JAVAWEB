package marlin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class MarlinCompilationExample {

    public static void compileMarlin(String marlinFolderPath, String platformioPath) {
        try {
            String command = platformioPath + " run -d " + marlinFolderPath;

            // Executa o comando para compilar o projeto Marlin usando o PlatformIO
            Process process = Runtime.getRuntime().exec(command);

            // Lê a saída do processo
            InputStream inputStream = process.getInputStream();
            BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));

            // Exibe a saída do processo
            String line;
            while ((line = reader.readLine()) != null) {
                System.out.println(line);
            }

            // Aguarda o término da compilação
            int exitCode = process.waitFor();
            if (exitCode == 0) {
                System.out.println("Compilação do Marlin concluída com sucesso.");
            } else {
                System.out.println("Erro durante a compilação do Marlin.");
            }
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }

   
}
