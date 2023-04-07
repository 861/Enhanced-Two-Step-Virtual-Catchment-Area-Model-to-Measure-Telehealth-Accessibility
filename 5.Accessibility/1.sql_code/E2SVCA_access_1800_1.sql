CREATE table glassy-automata-358521.access.od_pop as SELECT *, pop*1 ppotent from (select * from `glassy-automata-358521.access.od_1800` od_1800 join `glassy-automata-358521.access.pop` pop on pop.popid = od_1800.orig);

--DELETE FROM `glassy-automata-358521.access.od_pop` WHERE pop = 0;

CREATE table glassy-automata-358521.access.sumpop as SELECT dest, sum(ppotent) sum_pop from `glassy-automata-358521.access.od_pop` GROUP BY dest;
CREATE table glassy-automata-358521.access.doc_sumpop as SELECT * from `glassy-automata-358521.access.sumpop` sumpop left join `glassy-automata-358521.access.doc` doc on doc.docid =sumpop.dest;

CREATE table glassy-automata-358521.access.od_pop_doc_sumpop as SELECT od_pop.orig,od_pop.dest,od_pop.duration,od_pop.popid,od_pop.pop,od_pop.ppotent,doc_sumpop.sum_pop,doc_sumpop.docid,doc_sumpop.doc from `glassy-automata-358521.access.od_pop` od_pop JOIN `glassy-automata-358521.access.doc_sumpop` doc_sumpop on doc_sumpop.dest = od_pop.dest;

DELETE FROM `glassy-automata-358521.access.od_pop_doc_sumpop` WHERE sum_pop = 0;
CREATE table glassy-automata-358521.access.ratio as SELECT *, x.doc/x.sum_pop R from `glassy-automata-358521.access.od_pop_doc_sumpop` x;
CREATE table glassy-automata-358521.access.access_1800_1 as SELECT orig, sum(R) acc1800 from `glassy-automata-358521.access.ratio` GROUP BY orig;



drop table `glassy-automata-358521.access.od_pop`;
drop table`glassy-automata-358521.access.sumpop`;
drop table`glassy-automata-358521.access.doc_sumpop`;
drop table `glassy-automata-358521.access.od_pop_doc_sumpop`;
drop table `glassy-automata-358521.access.ratio`;
