# Pastor Anderson Sermons

## Use Regular Expressions

Select all the files you wish to modify, right-click, and choose `Actions (Quick) > Replace with Regular Expression`.

Example:

```
Pattern: (\d\d)(\d\d)(\d\d)(.)
Replace: $1-$2-20$3 \U$4M -
```

`010514a - Love One Another` becomes `01-05-2014 AM - Love One Another`.

## Add sequential numbers to the filename

Tag - Filename: `$num(%_counter%,3) - %_filename%`


|Operation | Field | Pattern |
| -------------- | ------- | ---- |
|Filename - Tag | | `%track% - %month%-%day%-%year% %time% - %title%` |
|Tag - Tag | Comment | `Preached by Pastor Steven Anderson at Faithful Word Baptist Church on %month%/%day%/%year% for the %time% service.`|
|Tag - Tag | Media created | `%month%/%day%/%year%` |

Directors: Steven Anderson
Media Created:
Author URL: http://www.faithfulwordbaptist.org/page5.html

## [Filename - Filename](https://help.mp3tag.de/main_converter.html#ftf)

```
Old filename: 001 - 01-05-2014 AM - Love One Another.mp4
Old filename pattern: %1 - %2 %3 - %4
 
New filename pattern: %1 - %4 (%2)
New filename: 001 - Love One Another (01-05-2014).mp4

```


# Add track numbers

Tag - Tag: `$num(%_counter%,)`