let drop n arr =
  Array.sub arr n (Array.length arr-n)
let () =
    Cprint.open_bracket := Sys.argv.(2) ^ "\n";
    Cprint.close_bracket := Sys.argv.(3) ^ "\n";
    Cprint.towrap := Array.to_list (drop 4 Sys.argv);
    let oc = stdout in
    Whitetrack.enabled := true;
(*    Whitetrack.setOutput oc;   *)
    let cabs = Frontc.parse_with_cabs Sys.argv.(1) () in
    Cprint.printFile oc cabs