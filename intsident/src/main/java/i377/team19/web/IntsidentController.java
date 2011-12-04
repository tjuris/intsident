package i377.team19.web;

import i377.team19.entities.Intsident;
import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "intsidents", formBackingObject = Intsident.class)
@RequestMapping("/intsidents")
@Controller
public class IntsidentController {

//    public long countAll() {
//        return Intsident.countIntsidents();
//    }
}
