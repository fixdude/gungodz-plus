// Feather disable all
/// Cleans up special variables inserted into structs by SnapReconstructionPack().
/// 
/// @param value
/// @param [instanceofVariableName="__instanceof__"]

function SnapReconstructionCleanUp(_value, _instanceofVariableName = "__instanceof__")
{
    __SnapReconstructionCleanUpInner(_value, _instanceofVariableName);
}

function __SnapReconstructionCleanUpInner(_value, _instanceofVariableName)
{
    if (is_array(_value))
    {
        var _i = 0;
        repeat(array_length(_value))
        {
            __SnapReconstructionCleanUpInner(_value[_i], _instanceofVariableName);
            ++_i;
        }
    }
    else if (is_method(_value))
    {
        //Ignore
    }
    else if (is_struct(_value))
    {
        variable_struct_remove(_value, _instanceofVariableName);
        
        var _namesArray = variable_struct_get_names(_value);
        var _i = 0;
        repeat(array_length(_namesArray))
        {
            __SnapReconstructionCleanUpInner(_value[$ _namesArray[_i]], _instanceofVariableName);
            ++_i;
        }
    }
}