package
{
   import flash.display.MovieClip;
   
   public dynamic class PicMissiongiver_2_2 extends MovieClip
   {
       
      
      public var npc:MovieClip;
      
      public function PicMissiongiver_2_2()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      function frame1() : *
      {
         this.npc.gotoAndStop(2);
      }
   }
}
