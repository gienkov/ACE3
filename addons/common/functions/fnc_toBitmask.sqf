/*
 * Author: commy2
 * Convert an array of booleans into a number.
 *
 * Arguments:
 * N: Booleans <ARRAY>
 *
 * Return Value:
 * Bitmask <NUMBER>
 *
 * Public: Yes
 */
#include "script_component.hpp"

private ["_array", "_result"];

_array = _this;

_result = 0;

{
    if (_x) then {_result = _result + 2 ^ _forEachIndex};
} forEach _array;

_result
