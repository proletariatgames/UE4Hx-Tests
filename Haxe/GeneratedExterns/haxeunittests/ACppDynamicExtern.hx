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
@:glueCppIncludes("DynamicExtern.h")
@:uextern @:uclass extern class ACppDynamicExtern extends unreal.AActor {
  @:uproperty public var theString : unreal.FString;
  @:ufunction(BlueprintImplementableEvent) public function runBlueprints(str : unreal.FString) : unreal.Int32;
  @:ufunction(BlueprintCallable) @:final public function runCppFunction(i : unreal.Int32, str : unreal.FString) : unreal.Int32;
  @:ufunction(BlueprintImplementableEvent) public function runBlueprints2(str : unreal.PRef<unreal.FString>) : unreal.Int32;
  @:ufunction(BlueprintCallable) @:final public function testOut(str : unreal.PRef<unreal.FString>) : Void;
  @:ufunction static public function getStringSize(str : unreal.FString) : unreal.Int32;
  
}