package com.goodgamestudios.mafia.controller.protobuf.equipment.viewfood
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT32;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class PBEquipmentViewFoodRequest extends Message
   {
      
      public static const PLAYER_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("com.goodgamestudios.mafia.controller.protobuf.equipment.viewfood.Request.player_id","playerId",1 << 3 | WireType.VARINT);
       
      
      private var player_id$field:uint;
      
      private var hasField$0:uint = 0;
      
      public function PBEquipmentViewFoodRequest()
      {
         super();
      }
      
      public function clearPlayerId() : void
      {
         this.hasField$0 = this.hasField$0 & 4294967294;
         this.player_id$field = new uint();
      }
      
      public function get hasPlayerId() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set playerId(param1:uint) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.player_id$field = param1;
      }
      
      public function get playerId() : uint
      {
         return this.player_id$field;
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         if(this.hasPlayerId)
         {
            WriteUtils.writeTag(param1,WireType.VARINT,1);
            WriteUtils.write$TYPE_UINT32(param1,this.player_id$field);
         }
         for(_loc2_ in this)
         {
            super.writeUnknown(param1,_loc2_);
         }
      }
      
      override final function readFromSlice(param1:IDataInput, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = 0;
         while(param1.bytesAvailable > param2)
         {
            _loc4_ = ReadUtils.read$TYPE_UINT32(param1);
            switch(_loc4_ >> 3)
            {
               case 1:
                  if(_loc3_ != 0)
                  {
                     throw new IOError("Bad data format: Request.playerId cannot be set twice.");
                  }
                  _loc3_++;
                  this.playerId = ReadUtils.read$TYPE_UINT32(param1);
                  continue;
               default:
                  super.readUnknown(param1,_loc4_);
                  continue;
            }
         }
      }
   }
}
