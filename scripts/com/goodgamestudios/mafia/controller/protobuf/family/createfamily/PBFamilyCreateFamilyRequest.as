package com.goodgamestudios.mafia.controller.protobuf.family.createfamily
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final class PBFamilyCreateFamilyRequest extends Message
   {
      
      public static const FAMILY_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("com.goodgamestudios.mafia.controller.protobuf.family.createfamily.Request.family_name","familyName",1 << 3 | WireType.LENGTH_DELIMITED);
       
      
      public var familyName:String;
      
      public function PBFamilyCreateFamilyRequest()
      {
         super();
      }
      
      override final function writeToBuffer(param1:WritingBuffer) : void
      {
         var _loc2_:* = undefined;
         WriteUtils.writeTag(param1,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_STRING(param1,this.familyName);
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
                     throw new IOError("Bad data format: Request.familyName cannot be set twice.");
                  }
                  _loc3_++;
                  this.familyName = ReadUtils.read$TYPE_STRING(param1);
                  continue;
               default:
                  super.readUnknown(param1,_loc4_);
                  continue;
            }
         }
      }
   }
}
