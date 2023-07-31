/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author croubs
 */
public class Album{  
  public String clave;
  public String nombre;
  public String pais;
  public int cantidad;
  
  public Album(){}
  
  public Album(String clave, String nombre, String pais) {
    this.clave = clave;
    this.nombre = nombre;
    this.pais = pais;
  }
  
  private Album(ResultSet rs) throws SQLException{
    this.clave = rs.getString(1);
    this.nombre = rs.getString(2);
    this.pais = rs.getString(3);
  }
  
  private Album(ResultSet rs, int cantidad) throws SQLException {
    this.clave = rs.getString(1);
    this.nombre = rs.getString(2);
    this.pais = rs.getString(3);
    this.cantidad = cantidad - 1;
  }
  
  
  private Connection connect() throws SQLException {
    return DriverManager.getConnection("jdbc:mysql://localhost:3306/PIA_POO?zeroDateTimeBehavior=CONVERT_TO_NULL","root","vermeBrillar50");
  }
  
  public void restartAlbum() throws SQLException {
    Connection cnn = connect();
    Statement stmt = cnn.createStatement();
    stmt.executeUpdate("TRUNCATE album;");
    
    stmt.close();
    cnn.close();
  }
  
  public void deleteRepeated() throws SQLException {
    Connection cnn = connect();
    Statement stmt = cnn.createStatement();
    stmt.executeUpdate("UPDATE album SET cantidad_a = 1;");
    
    stmt.close();
    cnn.close();
  }
  
  public ArrayList<Album> showRepeated() throws SQLException {
    Connection cnn = connect();
    Statement stmt = cnn.createStatement(ResultSet.CONCUR_READ_ONLY, ResultSet.TYPE_SCROLL_INSENSITIVE);
    ResultSet rs = stmt.executeQuery("SELECT * FROM showRepeated ORDER BY pais;");
    
    ArrayList<Album> album = new ArrayList();
    
    while(rs.next()) album.add(new Album(rs, rs.getInt(4)));
    
    rs.close();
    stmt.close();
    cnn.close();
    
    return album;
  }
  
  public ArrayList<Album> showAlbum() throws SQLException {
    Connection cnn = connect();
    Statement stmt = cnn.createStatement(ResultSet.CONCUR_READ_ONLY, ResultSet.TYPE_SCROLL_INSENSITIVE);
    ResultSet rs = stmt.executeQuery("SELECT * FROM showAlbum ORDER BY pais;");
    
    ArrayList<Album> album = new ArrayList();
    
    while(rs.next()) album.add(new Album(rs));
    
    rs.close();
    stmt.close();
    cnn.close();
    
    return album;
  }
  
  public ArrayList<Sticker> openPack() throws SQLException {
    Random random = new Random();
    int value;
    
    ArrayList<Sticker> result = new ArrayList();
    
    for(int i = 0; i < 50; i++){
      value = random.nextInt(650) + 1;
      result.add(new Sticker(value));
    }
    
    Connection cnn = connect();
    Statement stmt = cnn.createStatement(ResultSet.CONCUR_READ_ONLY, ResultSet.TYPE_SCROLL_SENSITIVE);
    
    result.forEach((r) -> {
      try {
        // Usar un preparatedStatement
        stmt.executeQuery("CALL addToAlbum('" + r.clave + "');");
      } catch (SQLException ex) {
        Logger.getLogger(Album.class.getName()).log(Level.SEVERE, null, ex);
      }
    });
    
    stmt.close();
    cnn.close();
    
    return result;
  }
}
