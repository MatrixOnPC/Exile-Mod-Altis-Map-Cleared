/// Altis map walls wire-fencing and small rocks removed
_center = [worldSize / 2, worldsize / 2, 0];
_fences = nearestTerrainObjects [[15904.8,16359.6,195], ["fence"], 16000];
{
	_string = format ["%1", _x];
	_className = _string select [(count _string) - 20];
	if ( (_className isEqualTo "wired_fence_8m_f.p3d") OR (_className isEqualTo "wired_fence_4m_f.p3d") OR (_className isEqualTo "ired_fence_8md_f.p3d") OR (_className isEqualTo "ired_fence_4md_f.p3d") ) then
	{
		hideObject _x;
	};

} count _fences;

_moundsNlittleRocks = nearestTerrainObjects [[15904.8,16359.6,195], ["hide"], 16000];
{
	_string = format ["%1", _x];
	_className = _string select [(count _string) - 16];
	if	(
			(_className isEqualTo "mound01_8m_f.p3d") OR (_className isEqualTo "mound02_8m_f.p3d") OR (_className isEqualTo "pstone_03_lc.p3d") OR (_className isEqualTo "ones_erosion.p3d") OR (_className isEqualTo "tstone_01_lc.p3d") OR
			(_className isEqualTo "luntstone_01.p3d") OR(_className isEqualTo "luntstone_02.p3d") OR(_className isEqualTo "luntstone_03.p3d") 
		) then
	{
		hideObject _x;
	};

} count _moundsNlittleRocks;
