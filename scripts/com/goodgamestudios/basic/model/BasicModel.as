package com.goodgamestudios.basic.model
{
   import com.goodgamestudios.basic.model.components.BasicAchievementData;
   import com.goodgamestudios.basic.model.components.BasicFontData;
   import com.goodgamestudios.basic.model.components.BasicLanguageData;
   import com.goodgamestudios.basic.model.components.BasicLoaderData;
   import com.goodgamestudios.basic.model.components.BasicLocalizationData;
   import com.goodgamestudios.basic.model.components.BasicSessionData;
   import com.goodgamestudios.basic.model.components.BasicSharedObject;
   import com.goodgamestudios.basic.model.components.BasicSmartfoxClient;
   import com.goodgamestudios.basic.model.components.BasicSocialData;
   import com.goodgamestudios.basic.model.components.BasicUserData;
   import com.goodgamestudios.basic.model.proxy.InstanceVOProxy;
   
   public class BasicModel
   {
      
      public static var instanceProxy:InstanceVOProxy = new InstanceVOProxy();
      
      protected static var _smartfoxClient:BasicSmartfoxClient;
      
      protected static var _userData:BasicUserData;
      
      protected static var _socialData:BasicSocialData;
      
      protected static var _languageData:BasicLanguageData;
      
      protected static var _fontData:BasicFontData;
      
      protected static var _achievementData:BasicAchievementData;
      
      protected static var _localData:BasicSharedObject;
      
      protected static var _sessionData:BasicSessionData;
      
      protected static var _basicLoaderData:BasicLoaderData;
      
      protected static var _localizationController:BasicLocalizationData = new BasicLocalizationData();
       
      
      public function BasicModel()
      {
         super();
      }
      
      public static function get smartfoxClient() : BasicSmartfoxClient
      {
         return _smartfoxClient;
      }
      
      public static function set smartfoxClient(param1:BasicSmartfoxClient) : void
      {
         _smartfoxClient = param1;
      }
      
      public static function get userData() : BasicUserData
      {
         return _userData;
      }
      
      public static function set userData(param1:BasicUserData) : void
      {
         _userData = param1;
      }
      
      public static function get socialData() : BasicSocialData
      {
         return _socialData;
      }
      
      public static function set socialData(param1:BasicSocialData) : void
      {
         _socialData = param1;
      }
      
      public static function get languageData() : BasicLanguageData
      {
         return _languageData;
      }
      
      public static function set languageData(param1:BasicLanguageData) : void
      {
         _languageData = param1;
         instanceProxy.langData = param1;
      }
      
      public static function set fontData(param1:BasicFontData) : void
      {
         _fontData = param1;
      }
      
      public static function get fontData() : BasicFontData
      {
         return _fontData;
      }
      
      public static function get achievementData() : BasicAchievementData
      {
         return _achievementData;
      }
      
      public static function set achievementData(param1:BasicAchievementData) : void
      {
         _achievementData = param1;
      }
      
      public static function get localData() : BasicSharedObject
      {
         return _localData;
      }
      
      public static function set localData(param1:BasicSharedObject) : void
      {
         _localData = param1;
      }
      
      public static function get sessionData() : BasicSessionData
      {
         return _sessionData;
      }
      
      public static function set sessionData(param1:BasicSessionData) : void
      {
         _sessionData = param1;
      }
      
      public static function get basicLoaderData() : BasicLoaderData
      {
         return _basicLoaderData;
      }
      
      public static function set basicLoaderData(param1:BasicLoaderData) : void
      {
         _basicLoaderData = param1;
      }
      
      public static function get basicLocalization() : BasicLocalizationData
      {
         return _localizationController;
      }
      
      public static function set basicLocalization(param1:BasicLocalizationData) : void
      {
         _localizationController = param1;
      }
   }
}
