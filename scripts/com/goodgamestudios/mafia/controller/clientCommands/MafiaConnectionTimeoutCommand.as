package com.goodgamestudios.mafia.controller.clientCommands
{
   import com.goodgamestudios.basic.controller.BasicController;
   import com.goodgamestudios.basic.controller.clientCommands.BasicConnectionTimeoutCommand;
   import com.goodgamestudios.basic.view.BasicLayoutManager;
   import com.goodgamestudios.mafia.event.model.MafiaUserEvent;
   import com.goodgamestudios.mafia.view.MafiaLayoutManager;
   
   public class MafiaConnectionTimeoutCommand extends BasicConnectionTimeoutCommand
   {
       
      
      public function MafiaConnectionTimeoutCommand()
      {
         super();
      }
      
      override public function execute(param1:Object = null) : void
      {
         if(this.layoutManager.currentState == BasicLayoutManager.STATE_LOGIN || this.layoutManager.currentState == BasicLayoutManager.STATE_REGISTRATION)
         {
            BasicController.getInstance().dispatchEvent(new MafiaUserEvent(MafiaUserEvent.CHANGE_NO_CONNECTION));
            return;
         }
         super.execute(param1);
      }
      
      private function get layoutManager() : MafiaLayoutManager
      {
         return MafiaLayoutManager.getInstance();
      }
   }
}
