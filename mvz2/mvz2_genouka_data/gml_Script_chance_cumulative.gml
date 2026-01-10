// This code is made by Genouka.
// This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
// If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

var numerator = argument0;
var denominator = argument1;
var result = 0;

if (numerator >= denominator)
{
    result += (numerator div denominator);
    numerator -= (denominator * (numerator div denominator));
}

result += (random(1) <= (numerator / denominator));
result = min(result, 32000);
return result;
