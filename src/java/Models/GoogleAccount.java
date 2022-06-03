/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import com.google.gson.Gson;

/**
 *
 * @author ADMIN
 */
public class GoogleAccount {
  public static String GOOGLE_CLIENT_ID = "505680417765-5q4uh21on7m3rgp2ld0k873ku2rkuv3s.apps.googleusercontent.com";
  public static String GOOGLE_CLIENT_SECRET = "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";
  public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/ShoeStore2/GoogleLogin";
  public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
  public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
  public static String GOOGLE_GRANT_TYPE = "authorization_code";
    
}
