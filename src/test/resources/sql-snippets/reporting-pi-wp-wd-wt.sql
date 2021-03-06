SELECT pi.PROJECTKEY, pi."NAME", wp.WPNAME, wd.WORKINGDAY, SUM(wt.WORKINGTIME) AS workingTime 
  FROM APP.WORKINGTIME AS wt
 INNER JOIN APP.WORKINGDAY AS wd ON wt.WORKINGDAY_ID = wd.ID
 INNER JOIN APP.WORKPACKAGEDESCRIPTION AS wpd ON wt.WORKPACKAGEDESCRIPTION_ID = wpd.ID
 INNER JOIN APP.WORKPACKAGE AS wp ON wpd.WORKPACKAGE_ID = wp.ID
 INNER JOIN APP.PROJECTINFORMATION AS pi ON wp.PROJECTINFORMATION_ID = pi.ID
GROUP BY pi.PROJECTKEY, pi."NAME", wp.WPNAME, wd.WORKINGDAY
ORDER BY pi.PROJECTKEY, pi."NAME", wp.WPNAME, wd.WORKINGDAY