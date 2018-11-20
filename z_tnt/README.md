# Z_TNT

A datapack to allow you to break bedrock in a vanilla-like way.
TNT entities that explode while inside an unignited TNT block are super-charged, and  will break some [normally unbreakable](data/z_tnt/tags/blocks/breakable.json) blocks.

## Settings

Z_TNT has a few customization settings to adjust how the TNT explosions behave. Run `/function z_tnt:settings/show` to show the settings menu.

* Explosion Shape: `Star` or `Cube`
  * `Star`: Destroys the 6 blocks in the cardinal directions from the TNT
  * `Cube`: Destroys the 27 blocks in the 3x3x3 cube around the TNT
* Require Confinement: `No` or `Yes`
  * `No`: Always explode
  * `Yes`: Only explode if the TNT is surrounded (6 cardinal directions) by normally unbreakable blocks
* Allow openings to void: `No` or `Yes`
  * `No`: Never break the very bottom layer of bedrock at `y=0`
  * `Yes`: Allow breaking of the very bottom layer of bedrock at `y=0`

