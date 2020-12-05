package com.goodgamestudios.mafia.vo.avatar.parts
{
   import com.goodgamestudios.mafia.constants.Constants_Avatarparts;
   import com.goodgamestudios.mafia.constants.enums.CharacterGender;
   
   public class EarsAvatarVO extends BasicAvatarPartVO
   {
       
      
      public function EarsAvatarVO(param1:CharacterGender)
      {
         super();
         wodID = param1 == CharacterGender.Female?int(Constants_Avatarparts.FEMALE_EARS_WODID):int(Constants_Avatarparts.MALE_EARS_WODID);
      }
   }
}
