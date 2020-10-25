select if(g.grd > 7, g.n, NULL) name,  g.grd, g.mrk
    from (
      select students.name as n, grade as grd, students.marks as mrk 
        from grades, students 
            where students.marks 
                between grades.min_mark and grades.max_mark
         ) g
order by g.grd desc, name asc, g.mrk asc

