/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package haxeunittests;

@:umodule("HaxeUnitTests")
@:glueCppIncludes("BasicTypesSub.h")
@:uextern @:uclass extern class UBasicTypesSub1 extends haxeunittests.UBasicTypesUObject {
  @:ufunction public function bpImplementableEvent(s : unreal.FString) : unreal.Int32;
  @:ufunction public function bpNativeEvent(s : unreal.PRef<unreal.FString>) : unreal.Int32;
  @:uproperty public var someDelegate : haxeunittests.FDynIntInt;
  
}
