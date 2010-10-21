let () =
    let oc = stdout in
    Whitetrack.enabled := true;
(*    Whitetrack.setOutput oc;   *)
    Cprint.printFile oc (Frontc.parse_with_cabs Sys.argv.(1) ())