package data;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author croubs
 */
public class Sticker {
  private int id;
  public String code;
  public String name;
  public String country;
  
  private Connection connect()throws SQLException {
    return DriverManager.getConnection("jdbc:mysql://localhost:3306/PIA_POO?zeroDateTimeBehavior=CONVERT_TO_NULL","root","vermeBrillar50");
  }
  
  public Sticker(int id) throws SQLException {
    Connection cnn = connect();
    Statement stmt = cnn.createStatement(ResultSet.CONCUR_READ_ONLY, ResultSet.TYPE_SCROLL_INSENSITIVE);
    ResultSet rs = stmt.executeQuery("SELECT * FROM stickers WHERE id_s = " + id + ";");
    
    rs.next();
    this.id = id;
    this.code = rs.getString(2);
    this.name = rs.getString(3);
    this.country = rs.getString(4);
    rs.close();
    stmt.close();
    cnn.close();
  }
  
  public boolean isReapeated() throws SQLException {
    Connection cnn = connect();
    Statement stmt = cnn.createStatement(ResultSet.CONCUR_READ_ONLY, ResultSet.TYPE_SCROLL_INSENSITIVE);
    ResultSet rs = stmt.executeQuery("SELECT * FROM showRepeated WHERE clave = '" + this.code + "';");
    Boolean result = false;
    
    if (rs.next()) result = true;
    
    rs.close();
    stmt.close();
    cnn.close();
    
    return result;
  }
}
