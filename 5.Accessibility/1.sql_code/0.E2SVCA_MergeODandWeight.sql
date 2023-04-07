create table glassy-automata-358521.access.od_900_min_a as select od.orig,od.dest,od.duration,min_a.min_a_w from `glassy-automata-358521.access.od_900` od join `glassy-automata-358521.access.broadband_speed_weight` min_a on (od.orig=min_a.orig and od.dest =min_a.dest);
create table glassy-automata-358521.access.od_900_min_f as select od.orig,od.dest,od.duration,min_f.min_f_w from `glassy-automata-358521.access.od_900` od join `glassy-automata-358521.access.broadband_speed_weight` min_f on (od.orig=min_f.orig and od.dest =min_f.dest);
create table glassy-automata-358521.access.od_900_max_f as select od.orig,od.dest,od.duration,max_f.max_f_w from `glassy-automata-358521.access.od_900` od join `glassy-automata-358521.access.broadband_speed_weight` max_f on (od.orig=max_f.orig and od.dest =max_f.dest);



create table glassy-automata-358521.access.od_1800_min_a as select od.orig,od.dest,od.duration,min_a.min_a_w from `glassy-automata-358521.access.od_1800` od join `glassy-automata-358521.access.broadband_speed_weight` min_a on (od.orig=min_a.orig and od.dest =min_a.dest);
create table glassy-automata-358521.access.od_1800_min_f as select od.orig,od.dest,od.duration,min_f.min_f_w from `glassy-automata-358521.access.od_1800` od join `glassy-automata-358521.access.broadband_speed_weight` min_f on (od.orig=min_f.orig and od.dest =min_f.dest);
create table glassy-automata-358521.access.od_1800_max_f as select od.orig,od.dest,od.duration,max_f.max_f_w from `glassy-automata-358521.access.od_1800` od join `glassy-automata-358521.access.broadband_speed_weight` max_f on (od.orig=max_f.orig and od.dest =max_f.dest);


create table glassy-automata-358521.access.od_2700_min_a as select od.orig,od.dest,od.duration,min_a.min_a_w from `glassy-automata-358521.access.od_2700` od join `glassy-automata-358521.access.broadband_speed_weight` min_a on (od.orig=min_a.orig and od.dest =min_a.dest);
create table glassy-automata-358521.access.od_2700_min_f as select od.orig,od.dest,od.duration,min_f.min_f_w from `glassy-automata-358521.access.od_2700` od join `glassy-automata-358521.access.broadband_speed_weight` min_f on (od.orig=min_f.orig and od.dest =min_f.dest);
create table glassy-automata-358521.access.od_2700_max_f as select od.orig,od.dest,od.duration,max_f.max_f_w from `glassy-automata-358521.access.od_2700` od join `glassy-automata-358521.access.broadband_speed_weight` max_f on (od.orig=max_f.orig and od.dest =max_f.dest);


create table glassy-automata-358521.access.od_3600_min_a as select od.orig,od.dest,od.duration,min_a.min_a_w from `glassy-automata-358521.access.od_3600` od join `glassy-automata-358521.access.broadband_speed_weight` min_a on (od.orig=min_a.orig and od.dest =min_a.dest);
create table glassy-automata-358521.access.od_3600_min_f as select od.orig,od.dest,od.duration,min_f.min_f_w from `glassy-automata-358521.access.od_3600` od join `glassy-automata-358521.access.broadband_speed_weight` min_f on (od.orig=min_f.orig and od.dest =min_f.dest);
create table glassy-automata-358521.access.od_3600_max_f as select od.orig,od.dest,od.duration,max_f.max_f_w from `glassy-automata-358521.access.od_3600` od join `glassy-automata-358521.access.broadband_speed_weight` max_f on (od.orig=max_f.orig and od.dest =max_f.dest);
