<?php

class maConnection{

    private static $connection=null;
    const host='localhost';
    const user='root';
    const pass='';
    const base='colblanc';

    private function _construct() {}

        static public final function getInstance(){
            if(is_null(self::$connection)){

                   try{
    self::$connection=new PDO('mysql:host='.self::host.';dbname='.self::base,self::user,self::pass,array(
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_CASE => PDO::CASE_NATURAL,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_NUM,
                    PDO::MYSQL_ATTR_INIT_COMMAND => "set names utf8"));
        }
            
        catch(PDOException $e){
            die("Database connection rompu:".$e->getMessage());

                 
        }
            
            }

       // self::$mysqli->set_charset("utf8");
            return self::$connection;
        }

}













?>