package com.db;
public class DBScript
{
    public String driverName()
    {
        String str = "com.mysql.jdbc.Driver";
        return str;
    }
    public String getConnection()
    {
        String name = "jdbc:mysql://localhost:3306/cfsr";
        return name;
    }
    public String uName()
    {
        String uname = "root";
        return uname;
    }
    public String pwd()
    {
        String pass = "srinu";
        return pass;
    }    
}