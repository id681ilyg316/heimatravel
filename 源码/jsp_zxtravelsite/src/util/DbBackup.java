package util;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DbBackup {
	
	
	/**
     * �������ݿ�db
     * @param root
     * @param pwd
     * @param dbName
     * @param backPath
     * @param backName
     */
    public static void dbBackUp(String root,String pwd,String dbName,String backPath,String backName) throws Exception {
        String pathSql = backPath+backName;
        File fileSql = new File(pathSql);
        //��������sql�ļ�
        if (!fileSql.exists()){
            fileSql.createNewFile();
        }
        //mysqldump -hlocalhost -uroot -p123456 db > /home/back.sql
        StringBuffer sb = new StringBuffer();
        sb.append("mysqldump");
        sb.append(" -h127.0.0.1");
        sb.append(" -u"+root);
        sb.append(" -p"+pwd);
        sb.append(" "+dbName+" >");
        sb.append(pathSql);
        System.out.println("cmd����Ϊ��"+sb.toString());
        Runtime runtime = Runtime.getRuntime();
        System.out.println("��ʼ���ݣ�"+dbName);
        Process process = runtime.exec("cmd /c"+sb.toString());
        System.out.println("���ݳɹ�!");
    }
 
    /**
     * �ָ����ݿ�
     * @param root
     * @param pwd
     * @param dbName
     * @param filePath
     * mysql -hlocalhost -uroot -p123456 db < /home/back.sql
     */
    public static void dbRestore(String root,String pwd,String dbName,String filePath){
        StringBuilder sb = new StringBuilder();
        sb.append("mysql");
        sb.append(" -h127.0.0.1");
        sb.append(" -u"+root);
        sb.append(" -p"+pwd);
        sb.append(" "+dbName+" <");
        sb.append(filePath);
        System.out.println("cmd����Ϊ��"+sb.toString());
        Runtime runtime = Runtime.getRuntime();
        System.out.println("��ʼ��ԭ����");
        try {
            Process process = runtime.exec("cmd /c"+sb.toString());
            InputStream is = process.getInputStream();
            BufferedReader bf = new BufferedReader(new InputStreamReader(is,"utf8"));
            String line = null;
            while ((line=bf.readLine())!=null){
                System.out.println(line);
            }
            is.close();
            bf.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("��ԭ�ɹ���");
    }
    
    
    
    public static void main(String[] args) throws Exception {
        String backName = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date())+".sql";
        DbBackup.dbBackUp("root","123456","db_travel","D:/",backName);
    }
    

}
