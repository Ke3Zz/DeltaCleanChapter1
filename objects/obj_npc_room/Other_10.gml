global.msc = 0;
global.typer = 5;

if (global.darkzone == 1)
    global.typer = 6;

global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.2;

if (global.darkzone == 1)
    image_speed = 0.2;

global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_11_0"); // * The gash weaves down as if you cry./%

if (room == room_krisroom)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_15_0"); // * It's a red wagon with a rusty birdcage in it./
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_16_0"); // * Looks like it's seen quite a few crashes./%
}

if (room == room_torhouse)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_21_0"); // * (It's Chairiel^1, the beloved living room chair.)/%
    
    if (global.plot >= 250)
    {
        global.msc = 455;
        scr_text(global.msc);
        global.typer = 7;
        global.fc = 4;
        global.fe = 0;
    }
    else
    {
        with (obj_event_manager)
            trigger_event(UnknownEnum.Value_0, UnknownEnum.Value_25);
    }
}

if (room == room_alphysclass)
{
    global.msc = 100;
    scr_text(global.msc);
    global.fc = 4;
}

if (room == room_castle_tutorial)
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_41_0"); // * (It's just a dummy.)/%

if (room == room_field2)
{
    if (global.flag[501] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_48_0"); // * S-stop^1!&* I'm still recovering from where you hurt me./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_49_0"); // * Plus^1, I just ate^1, so I'll get a cramp if I fight you so quickly./%
    }
    
    if (global.flag[501] == 2)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_53_0"); // * Does your castle have a pool^1?&* I wanna know if I should bring my cute swimsuit.../%
    
    if (global.flag[501] == 3)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_57_0"); // * Felt like I was soaring through the air earlier.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_58_0"); // * Was that a dream...?/%
    }
}

if (room == room_field2A)
{
    global.msc = 145;
    scr_text(global.msc);
}

if (room == room_field_puzzle1)
{
    global.msc = 147;
    scr_text(global.msc);
}

if (room == room_field_topchef)
{
    if (y >= 160)
    {
        image_speed = 0.334;
        normalanim = 2;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_81_0"); // * Mama miba^1! I'm TOPCHEF^1!&* My latest cake worked me to exhaustion!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_82_0"); // * So I took a little nap..^1.&* But^1, Mama miba^1!&* A scary noise woke me up!/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_83_0"); // * A beast was hunched on the table^1, eating the cake like an animal!/
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_84_0"); // * I spritzed it with water^1, and it hissed and ran off^1!&* But^1, my wonderful cake is.../
        scr_ralface(4, 8);
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_86_0"); // * Aww^1, Kris^1, that sounds like Susie^1! We must be going the right way!/
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_87_0"); // \E1* Let's try to keep her out of any more trouble!/%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_90_0"); // * M-M-Mama miba^1! M-M-Mama SHIBA^1!&* You know that beast!^1?&* Please don't come back.../%
        
        if (scr_havechar(2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_95_0"); // * Mama miba^1! Mom AMOEBA^1!&* Y-You're the beast that ate my cake!/
            scr_susface(1, 2);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_97_0"); // * Yeah^1? So^1? Want me to spit it back out?/
            scr_noface(3);
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_99_0"); // * N-no^1, that's quite fine.../
            scr_susface(5, 2);
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_101_0"); // * Ya sure^1? 'd probably make it better./%
            
            if (talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_104_0"); // * Why are you looking at me like that!?/
                scr_susface(1, 0);
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_106_0"); // * I don't trust anyone that won't eat my spit./
                scr_ralface(3, 9);
                global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_108_0"); // * ... So you don't trust anyone?/
                scr_susface(5, 2);
                global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_110_0"); // * Yeah./%
            }
        }
        
        if (scr_itemcheck(6))
        {
            global.msc = 465;
            scr_text(global.msc);
        }
        
        if (global.flag[253] == 1)
        {
            global.msc = 470;
            scr_text(global.msc);
        }
    }
    else
    {
        global.msc = 149;
        scr_text(global.msc);
    }
}

if (room == room_field_maze)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_137_0"); // * W-woah^1! Wait a minute^1! Even if you're my enemy^1, I've got to warn you!/
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_138_0"); // * A purple beast is roaming^1, clobbering anyone who dares block her way...!/
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_139_0"); // * (Sob...^1) We don't even like fighting..^1. th-the King left us no choice.../
    
    if (global.plot < 37)
    {
        scr_ralface(3, 3);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_143_0"); // * O-oh..^1. Kris^1, we need to stop Susie^1, quick...!/%
    }
    else
    {
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_147_0"); // * (Sob...^1) We don't even like fighting..^1. th-the King left us no choice.../%
    }
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_152_0"); // * Hey^1, why aren't you afraid...?/%
    
    if (scr_havechar(2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_157_0"); // * AHHHHHHHHHHH!^1!&* It's that purple beast!!!/
        scr_susface(1, 2);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_159_0"); // * Woah^1, nice cheer^1.&* Look^1, Kris^1, I've got fans./%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_165_0"); // * AHHHHHHHHHH-^1&* Okay^1, I'm outta breath./%
    }
    
    if (x > 1600)
    {
        global.fc = 5;
        global.fe = 0;
        global.typer = 32;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_175_0"); // * Sup./
        scr_ralface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_177_0"); // * I thought you were running away./
        scr_lanface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_179_0"); // * Yeah^1, I finished./%
    }
}

if (room == room_field_shop1)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_186_0"); // * Are you puzzled by COMBAT^1?&* Wanna know how TP works?/%
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_187_0"); // * If you still haven't assembled all the details.../
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_188_0"); // * My cohorts to the WEST will gladly help you put the pieces together./%
}

if (room == room_field_puzzletutorial)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_193_0"); // * Your friends can't \cYACT\cW alone^1, but they can still help you win peacefully./
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_194_0"); // * The \cGDARK PRINCE\cW's \cYPACIFY\cW spell can remove \cBTIRED\cW enemies safely from battle./
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_195_0"); // * If nothing else^1, why not try using an \cYITEM\cW?/
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_196_0"); // * Even if it seems useless^1, the effects may surprise you./%
    
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_200_0"); // * What^1?&* I'm building a ladder here./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_201_0"); // * Today's lesson is..^1.&* \cRGet out of my way when I'm building a ladder!\cW /
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_202_0"); // * Do you need an \cRinteractive tutorial\cW on \cRleaving me alone\cW?/%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_205_0"); // * What?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_206_0"); // * Do you need an \cRinteractive tutorial\cW on \cRleaving me alone\cW?/%
        }
    }
    
    if (y >= (room_height / 2))
    {
        if (x <= (room_width / 2))
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_214_0"); // * \cYDEFENDING\cW will not only temporarily \cRreduce the damage\cW you take.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_215_0"); // * It also lets you focus^1, \cYrestoring TP\cW. You need \cYTP\cW to \cRCAST SPELLS\cW!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_216_0"); // * So don't be afraid to \cYDEFEND\cW^1!&* \cYDEFEND\cW and \cYCAST SPELLS\cW!/
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_217_0"); // * By the way^1, all leftover \cYTP\cW will \cRturn into extra MONEY\cW after the battle!/%
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_221_0"); // * Getting close to \cYBULLETS\cW is really exciting^1, isn't it?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_222_0"); // * You'll \cRrecover a little\cW \cYTP\cW for each \cYBULLET\cW you get close to./
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_223_0"); // * Plus^1, \cRgetting close to bullets\cW can sometimes end the \cRenemy's attack faster\cW./
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_224_0"); // * It's quite \cRdangerous\cW though^1.&* So no worries if you don't want to try./%
        }
    }
}

if (room == room_field4)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_233_0"); // * (It's a candy tree.^1)&* (All the ripe candy has been picked.)/%
    
    if (scr_havechar(3) && scr_havechar(2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_236_0"); // * (It's a candy tree.^1)&* (All the ripe candy has been picked.)/
        scr_ralface(1, 8);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_238_0"); // * Let's not take any more^1, Kris^1.&* Unripe candy is sour./
        scr_susface(3, 2);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_240_0"); // * What^1? Sour^1, sweet^1, meaty^1, bitter..^1. if it's candy^1, it's good!/
        scr_ralface(5, 8);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_242_0"); // * Well^1, that's accepting of you.../
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_243_0"); // \E9* ... Wait^1, "meaty?"/%
        
        if (talked >= 1)
        {
            scr_ralface(0, 8);
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_248_0"); // * What kind of candy is meaty?/
            scr_susface(2, 0);
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_250_0"); // * Y'know^1.&* Whatever it's called^1.&* Uhhh^1, jerky./
            scr_ralface(4, 1);
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_252_0"); // * That's not candy.../
            scr_susface(6, 7);
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_254_0"); // * Then why is it next to it in the store!?/%
        }
    }
}

if (room == room_field_puzzletutorial)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_262_0"); // * We're sorry^1.&* We're normally puzzle guys, but.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_263_0"); // * We've been forced to do TUTORIALS just to make ends meet./
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_264_0"); // * When the KING got power^1, he fired everyone and replaced all puzzle makers with HIM.../
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_265_0"); // * ROUXLS KAARD..^1.&* Lord of the Puzzles..^1.&* Be careful...!/%
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_269_0"); // * The KING didn't even give us severance pay.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_270_0"); // * His son just gave us all beanies..^1.&* Itchy beanies.../%
    }
}

if (room == room_field_checkers7)
{
    if (sprite_index == spr_npc_mrelegance)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_278_0"); // * Woah there^1, horsie^1. Ponmen're scary^1, but all'n they're doin' is following the King./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_279_0"); // * Us on the Board used to have our own boss..^1. those'n were peaceful times./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_280_0"); // * But now^1, even the boss's been reduced to the King's peon.../%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_284_0"); // * My name^1? Mr. Elegance./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_285_0"); // * Haha^1, and these^1? These are my nostrils^1, not my eyes./
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_286_0"); // * ... can still see out of them^1, though./%
        }
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_292_0"); // * Fear not ^1- we^1, unlike the simple Ponmen^1, possess FULL faculty over our actions./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_293_0"); // * I^1, Mr. Society^1, am far too intelligent to ever bow down to such a tyrant!/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_294_0"); // * Unless he asks me^1.&* He's very scary^1, you see./%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_297_0"); // * What^1, you think you possess the power to topple that brute???/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_298_0"); // * Yes^1! Yes^1! I'm sure everyone will support you^1! Go for it!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_299_0"); // * Just as long as I don't have to participate!/%
        }
        
        if (global.plot >= 60)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_304_0"); // * Hmmm..^1. Mr. Elegance has run off on some hellish errand.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_305_0"); // * Huh^1? No^1, I didn't help out at all!!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_306_0"); // * Why are or aren't you asking!?/%
        }
    }
}

if (room == room_forest_savepoint1)
{
    if (sprite_index == spr_npc_puzzlepiece)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_316_0"); // * Hey^1, kid^1. We managed to fix up this old thingamajig for you./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_317_0"); // * It's some kinda door..^1. It can take you anywhere you want in the world!/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_318_0"); // * As long as that's one of two locations./
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_319_0"); // * Anyhoo^1, we'll keep working on it..^1. Anything to help you out^1, kid!/%
        
        if (global.plot >= 154)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_322_0"); // * Hey kid^1, we managed to get this door to go to the castle./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_323_0"); // * Hope it helps you out!/%
        }
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_327_0"); // * ... Where'd this door come from?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_328_0"); // * Dunno..^1. come to think of it^1, I've never seen it before./%
        }
    }
    
    if (sprite_index == spr_npc_mrelegance)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_334_0"); // * Woah there^1, horsie^1. Me and Mr. Society got this door workin' for ya./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_335_0"); // * It can go anywhere you want..^1. 'long as it's one of the two destinations./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_336_0"); // * Since it was just the two of us^1, it was tough work^1, and it might break./
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_337_0"); // * Anyhow (ha ha) hope'n it helps you deal with the King./%
        
        if (global.flag[251] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_340_0"); // * Woah there^1, horsie^1. Mr. Society and the puzzle guy fixed that door./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_341_0"); // * Since it was just the three of us^1, it should work without any issues./
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_342_0"); // * Anyhow (ha ha) hope'n it helps you deal with the King./%
        }
        
        if (global.plot >= 154)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_346_0"); // * This door'll go even further than before./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_347_0"); // * Not sure'n what we did to make it work like that^1, but.../%
        }
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_352_0"); // * Now^1, don't tell anyone Mr. Society helped..^1. he doesn't want none of that./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_353_0"); // * I'm watchin' ya now..^1. with my nostrils./%
        }
    }
}

if (room == room_forest_area1)
{
    if (sprite_index == spr_diamond_overworld)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_365_0"); // * Don't mind me^1.&* I'm on break./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_366_0"); // * ... Say^1, help me^1. I need to get something for my friend \cYCLOVER\cW'S birthday./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_367_0"); // * Her only interests are \cYSPORTS\cW, \cYCUTE BOYS\cW, and \cYTREES\cW./
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_368_0"); // * ... maybe I'll just get her a card./%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_372_0"); // * Maybe I could put some money in the card..^1. No^1, I need that!/%
    }
}

if (room == room_forest_area2A)
{
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_383_0"); // * I used to WORK at the castle until the KING fired all the STAFF./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_384_0"); // * What was my job^1? Oh^1, I was the ROYAL COAT RACK!/%
        
        if (global.flag[108] == 1 && global.flag[233] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_388_0"); // * Ah^1, that SCARF!/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_389_0"); // * I noticed that you^1, simply took it^1, without asking!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_390_0"); // * That's fine^1! It's my gift to help you defeat the KING!/
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_391_0"); // * You folks are really energetic^1! Ha ha^1! And potentially criminals!/%
        }
        
        if (global.flag[108] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_397_0"); // * You folks look like heroes^1!&* Take the SCARF from this chest and DEFEAT the KING!/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_398_0"); // * Besides^1, it's old^1, ragged^1, and doesn't fit me anymore!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_399_0"); // * That's what CHESTs are for^1! It's kind of hand-me-down situation in there!/%
            global.flag[233] = 1;
        }
        
        if (global.flag[108] == 1 && scr_weaponcheck_inventory(9) == 0 && global.charweapon[3] != 9)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_406_0"); // * Hey^1, where's that scarf^1! Did it not fit you?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_407_0"); // * That's OK^1! Just put it in a chest^1! Someone else will take it!/%
        }
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_412_0"); // * I used to WORK at the castle until the KING fired all the STAFF./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_413_0"); // * What was my job^1? Oh^1, I was the ROYAL COAT RACK!/%
        }
    }
    
    if (x >= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_420_0"); // * (...)/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_421_0"); // * (I'm just a little ball^1, I don't want to discuss anything.)/%
    }
}

if (room == room_forest_area3)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_428_0"); // * Today's a special day^2~&* OBVIOUSLY^2.&* To some degree.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_429_0"); // * Do you know what day it is~^2?&* You BETTER^1.&* Um^1, it's OK if you don't.../%
    global.flag[236] = 1;
}

if (room == room_forest_area3A)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_436_0"); // * Bow-Bow^1!&* (Break the Box for a Bracelet.)/
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_437_0"); // * Bow-Bow^1!&* (It will Boost your Befense.)/%
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_442_0"); // * Bow-Bow^1!&* (Bracelets are my Bfavorite.)/%
    
    if (x >= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_448_0"); // * The King wants to o-liminate Lightners^1, but..^1. we didn't o-gree with that./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_449_0"); // * We o-scaped^1, but the o-thers were o-rrested.../%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_454_0"); // * Don't worry about talking to my o-ssociate here^1.&* Whenever Bow-Bow talks.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_455_0"); // * She always goes on and on and on and on and on and on and on and on and on and on.../
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_456_0"); // * And on and on and on and on and on and on and on and on and on and on and on.../%
        }
    }
}

if (room == room_forest_savepoint2)
{
    if (x < 800)
    {
        global.msc = 325;
        scr_text(global.msc);
    }
    
    if (x >= 800 && x <= 880)
    {
        global.msc = 327;
        scr_text(global.msc);
    }
    
    if (x >= 920)
    {
        if (global.plot < 80)
        {
            global.msc = 330;
            scr_text(global.msc);
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0"); // * (This cardboard stand is actually just a fake cardboard stand of a cardboard stand.)/%
        }
    }
}

if (room == room_forest_area4)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_493_0"); // * Before the King came along^1, I used to eat the leaves from this tree.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_494_0"); // * Now I still do that./
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_495_0"); // * Such is the way of the worm.../%
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_498_0"); // * Such is the way of the worm.../%
}

if (room == room_forest_starwalker)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_504_0"); // * These \cYbirds\cW are \cYPissing\cW me off.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_505_0"); // * I'm the original   \cYStarwalker\cW /%
    global.flag[254] = 1;
}

if (room == room_forest_savepoint_relax)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_511_0"); // * S-somehow^1, Prince Lancer's made REAL friends with a Lightner.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_512_0"); // * S-somebody should tell the King^1, immediately...!/
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_513_0"); // * ... But^1, it's definitely not going to be me./
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_514_0"); // * Whoever breaks the news is gonna get wrecked!/%
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_515_0"); // * Don't look at me!/%
    
    if (global.plot >= 90)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_519_0"); // * Ugh^1! I'm jealous of everyone with a leaf!/%
    
    if (sprite_index == spr_lancer_dark_relax)
    {
        global.fc = 2;
        global.fe = 0;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_527_0"); // * How's the thrash machine we designed going?/
        scr_lanface(1, 0);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_529_0"); // * The WHAT machine?/
        scr_ralface(3, 8);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_531_0"); // * The machine...^1? We had a whole sequence about it...?/
        scr_susface(5, 0);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_533_0"); // * Oh^1, that^1. Yeah^1, we'll make it at the last minute./
        scr_ralface(7, 6);
        global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_535_0"); // * You two should REALLY start working on it earlier.../
        scr_lanface(9, 1);
        global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_537_0"); // * WHAT'S with the lecture?/
        global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_538_0"); // \E2* I didn't come here for a second dad!/
        scr_susface(12, 2);
        global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_540_0"); // * Heheh^1, yeah^1, you tell him!/%
        
        if (talked >= 1)
        {
            global.fc = 5;
            global.fe = 3;
            global.typer = 32;
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_547_0"); // * Being a bad guy sure is relaxing!/
            scr_susface(1, 2);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_549_0"); // * Kris^1, if you're jealous^1, you can be a bad guy^1, too.../
            scr_ralface(3, "A");
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_551_0"); // * Kris isn't jealous of your evildoing lifestyle...!/
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_552_0"); // \E6* (But um^1, if you are^1, I can find a nice leaf and fan you...)/%
        }
    }
    
    if (sprite_index == spr_susie_dark_relax)
    {
        global.fc = 2;
        global.fe = 6;
        global.typer = 31;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_560_0"); // * So^1, er..^1. ready to be a good guy again^1, Susie?/
        scr_susface(1, 1);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_562_0"); // * Nah^1. Gotta say being a bad guy is pretty sweet./
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_563_0"); // \E2* Not only is it WAY more fun than being "good,"/
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_564_0"); // * But MY teammate's PROUD of what I do./
        scr_lanface(5, 6);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_566_0"); // * Earlier^1, Susie ate a pinecone off the floor./
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_567_0"); // * It gave her a terrible stomach-ache./
        global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_568_0"); // \E3* It was VERY brave and cool./
        scr_susface(9, 2);
        global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_570_0"); // * SEE??^1? Finally^1, some RESPECT!!!/%
        
        if (talked >= 1)
        {
            global.fc = 1;
            global.fe = 1;
            global.typer = 30;
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_577_0"); // * Hey^1, move it^1, Captain Toothpaste./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_578_0"); // * You're blocking my reverse-tan./
            scr_lanface(2, 3);
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_580_0"); // * The shadow's flares are making us as pale as a horse!/%
        }
    }
}

if (room == room_forest_fightsusie)
{
    global.typer = 31;
    global.fe = 8;
    global.fc = 2;
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_591_0"); // * You can follow behind us^1, you know./
    scr_lanface(1, 3);
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_593_0"); // * Oh^1, okay!/%
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_597_0"); // * ... I noticed you aren't doing that./
        scr_lanface(1, 3);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_599_0"); // * Yeah!/%
    }
}

if (room == room_cc_prison_cells)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_606_0"); // * Thanks for inviting me^1! This trash can's really great!/
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_607_0"); // * I apologize for the inconvenience earlier!/%
    
    if (talked >= 1)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_610_0"); // * I'm gonna invite my friends into this trash can^1, too!/%
}

if (room == room_cc_prison2)
{
    if (sprite_index == spr_npc_gouldensam)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_618_0"); // * (Oh^1, oh^1. I'm just the cage.^1)&* (No one talks to me!)/%
        
        if (tempvar == 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_619_0"); // * (Are you enjoying the show?)/%
        
        if (tempvar == 2)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_620_0"); // * (I'm Goulden Sam.)/%
        
        if (tempvar == 3)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_621_0"); // * (It's tough being the fourth cage.)/%
    }
    
    if (sprite_index == spr_npc_cage_animals)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_626_0"); // * (Us animals used to be alone in these cages^1.)&* (Now everyone's here.)/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_627_0"); // * (So many new people..^1. Wish we could go back to the good old days,)/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_628_0"); // * (When it was just us in these filthy cages.)/%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_632_0"); // * (The sound of various animals tumbling around.)/%
    }
    
    if (sprite_index == spr_npc_cage_king)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_638_0"); // * Woe^1! Oh^1, Woe^1!&* We are the three Former Kings^1!&* We beg you^1, free us!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_639_0"); // * Once^1, all four of us ruled together^1, but when the Knight arrived, everything changed.../
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_640_0"); // * Oh^1, my diamonds^1! My jewels^1! You must tell me if they're all right^1! Ohh!!/%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_644_0"); // * What^1, you say? Your world is in danger?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_645_0"); // * Well^1, that's a shame^1, isn't it./%
        }
    }
    
    if (sprite_index == spr_diamond_overworld)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_653_0"); // * Since I didn't want to fight you guys^1, I got locked up.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_654_0"); // * How can I!^1? You guys seem WAY nicer than the King...!/%
        
        if (global.flag[40] >= 2)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_659_0"); // * Haha^1, I'd rather be in jail than face you guys^1! You're terrifying!/%
    }
    
    if (sprite_index == spr_npc_puzzlepiece_jail)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_665_0"); // * I was arrested for making a puzzle without a license.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_666_0"); // * I..^1. I'll never make another word search^1! Promise!/%
    }
}

if (room == room_cc_rudinn)
{
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_675_0"); // * We sold all of our beds to replace them with treasure./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_676_0"); // * My back hurts^1, but life has never been better!!!/%
    }
    else if (global.flag[520] == 0)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_682_0"); // * Huh?/%
        
        if (global.flag[243] == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_685_0"); // * You two are real heroes^1, you know that?/
            scr_susface(1, 2);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_687_0"); // * What about me?/
            scr_noface(3);
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_689_0"); // * You too^1, Talking Beast..^1.&* You too./%
        }
        
        if (global.flag[243] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_694_0"); // * Hey^1, it's you^1!&* You're that peaceful Lightner!/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_695_0"); // * Woah^1, you even tamed the beast that was tormenting us...!/
            scr_susface(2, 0);
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_697_0"); // * ... beast^1?&* What beast?/
            scr_noface(4);
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_699_0"); // * Ohhh!!^1! You even taught the beast to talk!?/
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_700_0"); // * Here^1, have a Choco Diamond!/
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_701_0"); // * (You got the Choco Diamond.)/%
            scr_itemget(13);
            
            if (noroom == 1)
            {
                scr_ralface(7, 8);
                global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_706_0"); // * I'm sorry^1, we don't have any room for that./
                scr_susface(9, 2);
                global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_708_0"); // * That's OK^1, I already ate it./%
            }
            
            global.flag[243] = 3;
        }
    }
    else
    {
        if (global.flag[243] == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_718_0"); // * You weren't as nice as I thought.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_719_0"); // * I guess people shouldn't have heroes./%
        }
        
        if (global.flag[243] == 2)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_723_0"); // * I..^1. I'll never forgive you for that forgiveness.../%
        
        if (global.flag[243] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_727_0"); // * I feel just OK about you chumps now.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_728_0"); // * ... Wait^1, what about her^1?&* Will she hurt us anymore?/
            scr_susface(2, 1);
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_730_0"); // * Nah^1, you're good./
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_731_0"); // \E2* (Unless Kris tells me to I guess.)/%
        }
        
        if (global.flag[243] == 0)
        {
            global.msc = 425;
            scr_text(global.msc);
        }
    }
}

if (room == room_cc_rurus1)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_746_0"); // * (Sigh...) Rouxls Kaard was standing here.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_747_0"); // * (Sigh...) I think making block-pushing puzzles is a totally hunky hobby.../%
}

if (room == room_cc_hathy)
{
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_754_0"); // * (Looks like Hathy sold all the gems and replaced them with beds.)/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_755_0"); // * (Looks extremely well slept.)/%
    }
    else if (global.flag[521] <= 2)
    {
        if (global.flag[244] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_764_0"); // * (Hathy looked at you kindly^1. Your sins against Hathy were forgiven.)/%
            
            if (global.flag[521] > 0)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_768_0"); // * (Hathy looked at you...)/
                scr_ralface(1, 6);
                global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_770_0"); // * We're sorry about hurting you earlier.../
                global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_771_0"); // \E8* We promise we won't do it anymore!/
                scr_noface(4);
                global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_773_0"); // * (Hathy felt your sincerity^1. Hathy forgived your sins...)/
                global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_774_0"); // * (You felt a weight being lifted from you.)/%
                global.flag[43] -= global.flag[524];
                
                if (global.flag[43] < 0)
                    global.flag[43] = 0;
                
                normal_kills = global.flag[521] - global.flag[524];
                global.flag[40] -= normal_kills;
                
                if (global.flag[40] < 0)
                    global.flag[40] = 0;
            }
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_786_0"); // * (Hathy looked at you kindly^1. You felt about the same.)/%
        }
        
        global.flag[244] = 1;
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_792_0"); // * (Hathy will never forget what you've done.)/
        scr_susface(1, 2);
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_794_0"); // * In a good way?/
        scr_noface(3);
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_796_0"); // * (In a bad way.)/
        scr_susface(5, 6);
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_798_0"); // * Oh./%
    }
}

if (room == room_cc_rurus2)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_806_0"); // * (Sigh...) Rouxls Kaard was standing here.../
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_807_0"); // * (Sigh...) Sorry I'm sighing^1, I didn't get much sleep./%
}

if (room == room_cc_clover)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_812_0"); // * Oh^1! Let us take your coat^1!&* And put it in the TOILET^1! HA^1!&* ... which^1, we don't even have./
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_813_0"); // * Please try the baseballs~^1!&* Yeah^1! Eat so many you CHOKE^1!&* ... do they eat sports?/
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_814_0"); // * Then we can all play Twister~^1!&* Just stay OUT OF OUR WAY^1!&* ... we lose even by ourselves./%
    
    if (global.flag[522] == 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_817_0"); // * Were you invited^1?&* YOU WEREN'T!!^1!&* You DID hurt us.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_818_0"); // * Awkward..^1.&* You wanna REMATCH!^1?&* You'd better leave.../%
    }
    
    if (x < 160)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_823_0"); // * I'm the first party member^1.&* I'm in charge of the DPS^1.&* (Dancin' Party Soundtrack.)/%
    
    if (x > 400)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_827_0"); // * (Hathy is the second party member^1. It's the healer.)/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_828_0"); // * (She was in charge of catering the party.)/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_829_0"); // * (Unfortunately the cake she commissioned was destroyed in a field somewhere.)/%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_832_0"); // * (That's a risk that one always runs when ordering a cake.)/%
    }
}

if (room == room_cc_throneroom)
{
    if (y < 300)
    {
        if (sprite_index == spr_npc_gouldensam)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_844_0"); // * (Show's over^1! Everybody go home!)/%
            
            if (tempvar == 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_845_0"); // * (What's all the fuss about^1? Fewer people are in cages...)/%
        }
        
        if (sprite_index == spr_npc_cage_animals)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_849_0"); // * (Us animals decided it's OK if the Kings stay in the cages as well.)/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_850_0"); // * (... but they'll have to put on animal ears and noses...)/%
        }
        
        if (sprite_index == spr_npc_cage_king)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_855_0"); // * What ho!^1! What about us!^1? Aren't we going to be restored as Kings...!?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_856_0"); // * ... Ah^1? My treasure is unharmed^1? Carry on^1, then./%
        }
    }
    else if (x < (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_865_0"); // * I'll be honest^1, at first we weren't sure who make our new King.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_866_0"); // * ... I mean^1, Lancer HAS always been a bit of a pain./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_867_0"); // * But after seeing how nice he treats YOU guys^1, I think he'll be fine!/%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_870_0"); // * I have high hopes for the new King./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_871_0"); // * He's already mandated a 400-percent increase in salsa production./%
        }
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_876_0"); // * Mama miba!^1! What a celebration!^1! This calls for a cake!!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_877_0"); // * And this time^1, I'll make it out of metal so animals can't eat it!/%
        
        if (global.flag[295] == 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_880_0"); // * Clover's mother^1!&* Please sample my cakes any time!/
            scr_susface(1, 3);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_882_0"); // * Do I HAVE TO be Clover's mom to do that?/
            scr_noface(3);
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_884_0"); // * Yes^1! That's my arbitrary rule!/%
        }
        
        if (global.flag[253] == 1 && global.flag[295] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_888_0"); // * Mama miba^1! What a celebration^1! Everyone is here!/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_889_0"); // * This must be the birthday party I made that cake for!!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_890_0"); // * Clover's birth!^1! Such a sweet occasion!^1! I might cry!/
            scr_susface(3, 2);
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_892_0"); // * Uh..^1. actually^1, this whole thing is^1, like^1, OUR fault./
            scr_noface(5);
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_894_0"); // * Oh^1! Mon amiga!^1! Then..^1. YOU'RE Clover's mother!?!??/
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_895_0"); // * Now I understand why you ate the cake!^1! To protect her!!/
            scr_susface(8, 5);
            global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_897_0"); // * Huh^1, wait^1, no^1, I --/
            global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_898_0"); // \E3* (Wait^1, if I go along with this^1, can I get more cake...?)/%
            global.flag[295] = 1;
        }
    }
}

if (room == room_cc_preroof)
{
    if (x > 180)
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_913_0"); // * What's going on^1? I slept through everything.../%
    
    if (x > 320)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_917_0"); // * (Hathy looked at you proudly...)/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_918_0"); // * (Kiss!)/%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_919_0"); // * (Limit one.)/%
    }
    
    if (x > 460)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_923_0"); // * The future looks sweet~^1!&* Like a pile of BEE'S PUKE^1.&* ... which^1, is honey^1, I think./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_924_0") + "/"; // * A kingdom with so much hope~^1!&* Hope you didn't SCREW IT UP^1.&* ... that means thank you./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_925_0"); // * Come to our next b-day^1, too~!&* We'll have one SOON!!^1!&* ... if that's..^1. possible.../%
    }
    
    if (x > 680)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_930_0"); // * I knew you could do it!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_931_0"); // * Though I was your enemy^1, I was cheering for you...!/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_932_0"); // * ... That's how much I disliked my job./%
    }
}

if (room == room_cc_kingbattle)
{
    if (sprite_index == spr_rurus_idle)
    {
        global.fc = 18;
        global.fe = 0;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_944_0"); // * Wonderful Worke^1, mine Amigose!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_945_0"); // \E3* Thou hast toppledst the Tyrant^1! Freedst our Creedst!/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_946_0"); // \E4* Trulyeth^1, History shall not forget -/
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_947_0"); // \E2* The Tale of Rouxls Kaard^1, and the Three Heroes!/%
        
        if (talked >= 1)
        {
            global.fc = 1;
            global.fe = 0;
            global.typer = 30;
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_955_0"); // * What about the part where you tried to kill us?/
            scr_rurusface(1, 3);
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_957_0"); // * Ah..^1. an interesting Historical Theorie^1, is it not?/
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_958_0"); // \E4* Nonetheless^1, the evidence precludeth such a thing.../
            scr_susface(4, 0);
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_960_0"); // * ... what evidence?/
            scr_rurusface(6, 1);
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_962_0"); // * I shall giveth thou a plate of Worms for thou silence./
            scr_susface(8, 2);
            global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_964_0"); // * Deal./%
        }
    }
    
    if (y < 160)
    {
        if (x == 398)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_972_0"); // * You did it^1! You ousted that rotten tyrant!/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_973_0"); // * I'll happily accept a bounty of credit for my contributions.../
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_974_0"); // * ... Unless the King reappears^1, in which case -^2- I did nothing!/%
        }
        
        if (x == 522)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_978_0"); // * Darn^1, horsey^1. You've'n done us a big help./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_979_0"); // * Now all'n of us pieces can live in peaces./%
            
            if (talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_982_0"); // * Boy^1, my nostrils can't thank you enough./%
        }
        
        if (x == 740)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_988_0"); // * Bgreat Bwork!/%
        
        if (x == 820)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_992_0"); // * You're O-bsolutely O-mazing!/%
        
        if (x == 940)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_996_0"); // * 'Onestly^1, we owe you.../%
        
        if (x == 1020)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1000_0"); // * Best^1! You're the Best!/%
        
        if (x > 1140)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1004_0"); // * Way to go^1, kids^1! Now we can go back to making the puzzles we love.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1005_0"); // * Life's got no tutorial^1, so try your best!/%
            
            if (global.flag[216] == 1)
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1008_0"); // * And^1, thanks to your donation^1, I could buy a new hat and some shaving cream./%
            
            if (talked >= 1)
            {
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1013_0"); // * Got nothing left to teach you now.../
                global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1014_0"); // * Life's got no tutorial^1, so try your best!/%
            }
        }
    }
    else if (x < 900)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1022_0"); // * Thank you^1! I can go back to being a coat hanger now!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1023_0"); // * By the by^1, I asked Seam to come here^1, but.../
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1024_0"); // * There wasn't any interest./%
    }
    else
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1028_0"); // * (Even a little ball can say something like "thank you.")/%
    }
}

if (room == room_hospital_rudy)
{
    global.typer = 55;
    global.fc = 15;
    global.fe = 2;
    
    if (global.flag[255] < 2)
        global.msc = 180;
    else
        global.msc = 181;
    
    scr_text(global.msc);
}

if (room == room_library)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1049_0"); // * I love reading books^1.&* Especially the books upstairs^1.&* You should really./
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1050_0"); // * Read them!/%
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1054_0"); // * I love reading books^1.&* Especially.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1055_0"); // * The books./%
    }
}

if (room == room_graveyard)
{
    global.msc = 190;
    scr_text(global.msc);
}

if (room == room_townhall)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1068_0"); // * Hey^1 short-stuff^1.&* Why would YOU possibly need to talk to the mayor?/
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1069_0"); // * Your allowance too low^1?&* Ate too much candies^1?&* Lost your frisbee in the wash?/
    global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1070_0"); // * Hey^1, short-stuff.../
    global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1071_0"); // * That's what the cops are for./%
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1074_0"); // * What^1? Don't talk to you like you're a "kid^1?" Fine.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1075_0"); // * If you need someone to change your diaper^1, go ask the Cop's./%
    }
    
    if (x > 100)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1081_0"); // * I'm sorry^1, I'm sorry^1.&* The mayor is busy right now./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1082_0"); // * If you need to see her^1, please try causing some terrible crisis./%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1086_0"); // * I'm sorry^1, I'm sorry^1.&* Are you here to complain about your teacher?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1087_0"); // * If you don't like her^1, please blame your mother for getting her hired.../%
        }
    }
    
    if (x > 200)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1097_0"); // * The mayor's charisma is about zero^1.&* No^1, it's negative./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1098_0"); // * But she works hard and has a good track record^1, so she runs unopposed./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1099_0"); // * Thaaaaaat's politics^1.&* Rarely./%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1103_0"); // * Not only does she act icy^1, she always keeps her office's AC on full blast./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1104_0"); // * That chill I feel..^1. is..^1.&* Is this what politics feels like?/%
        }
    }
}

if (room == room_diner)
{
    if (sprite_index == spr_npc_cattiwaitress)
    {
        global.fc = 13;
        global.fe = 0;
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1118_0"); // * .../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1119_0"); // \E1* You're alive./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1120_0"); // \E0* .../
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1121_0"); // \E2* Nice./
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1122_0"); // \E1* .../
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1123_0"); // \E0* .../
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1124_0"); // \E1* I'm working./%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1128_0"); // * .../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1129_0"); // \E1* This uniform's.../
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1130_0"); // \E0* Mandatory./%
        }
    }
    
    if (sprite_index == spr_npc_dragonfamily)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1136_0"); // * Uh^1, we'll take the special^1, and do you have any edible glitter...?/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1137_0"); // * The youngest one won't eat anything if it doesn't look like treasure.../%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1139_0"); // * In a pinch^1, sprinkles will work^1, too.../%
    }
    
    if (x >= 120 && x <= 140)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1145_0"); // * Don't be a stranger now^1, alright^1, hun?/%
        
        if (global.flag[261] == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1151_0"); // * Hey there^1!&* Haven't seen you in a while^1, hun./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1153_0"); // * I remember^1, back on Sundays^1, after service.../
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1154_0"); // * You and your family would come in and order the special./
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1155_0"); // * 'Course^1, things happened^1, and then.../
            global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1156_0"); // * Y'all..^1.&* Stopped comin' together./
            global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1157_0"); // * But every Sunday^1, you and your brother'd still come in./
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1158_0"); // * He'd order you a hot chocolate.../
            global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1159_0"); // * And you two'd sit down at that table in the corner.../
            global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1160_0"); // * ... drawin' shapes in the window with your breath./
            global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1161_0"); // * .../
            global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1162_0"); // * You must really miss him^1, huh?/
            global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1163_0"); // * ... Here^1, how about this?/
            global.msg[12] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1164_0"); // * (You got the Hot Chocolate.)/
            global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1165_0"); // * On the house, hun./%
            global.flag[261] = 1;
            noroom = 0;
            scr_litemget(1);
            
            if (noroom == 1)
            {
                global.flag[261] = 2;
                global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1172_0"); // * ... You know^1, I'd give you a hot chocolate on the house.../
                global.msg[12] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1173_0"); // * ... But it looks like you've got enough things already./
                global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1174_0"); // * Take it easy^1, okay^1, hun?/%
            }
        }
    }
    
    if (x > 240)
    {
    }
    
    if (y > 140)
    {
        if (x > 180)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1198_0"); // * So^1, for you two girls^1, that'll be the crepes^1, a cinnamon latte.../
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1199_0"); // * Two bunny parfaits, and... a piece of firewood...?/%
            
            if (talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1202_0"); // * And^1, how would you like that firewood done?/%
        }
        
        if (x > 260)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1212_0"); // * Dude^1, remember when we used to skip the first hour of class to come here?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1213_0"); // * YOU were fine^1, but I almost had to repeat the year 'cause of it.../
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1214_0"); // * Those crepes were MAD worth^1, though^1! Delinquency is the best condiment!/%
            
            if (talked >= 1)
                global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1217_0"); // * Dude^1, if we didn't bring Gerson our leftovers^1, I bet I would have failed HARD.../%
        }
    }
    
    if (sprite_index == spr_npc_most_improved_1997)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1226_0"); // * Looking at my rugged body^1, you must wonder what kind of secrets I hold.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1227_0"); // * My secret is^1, I put all my leftover pancakes in this giant hat./%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1231_0"); // * Whew^1!&* I sure love PANCAKE!/%
    }
    
    if (sprite_index == spr_npc_icewolf)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1237_0"); // * Ice Wolf does not like ice in drink./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1238_0"); // * Ice Wolf likes ice.../
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1239_0"); // * ... to BE drink!/%
        
        if (talked >= 1)
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1243_0"); // * Ice Wolf also like ice-themed mascots./%
    }
}

if (room == room_town_south)
{
    if (sprite_index == spr_npc_donutcar)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1255_0"); // * H-How am I supposed to get past this blue lady...!^1?&* I'm stuck!!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1256_0"); // * I-I guess I should just run away.../%
    }
    
    if (sprite_index == spr_npc_snailcar)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1260_0"); // * Police Chief Undyne is supposed to be directing traffic.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1261_0"); // * But all she's doing is standing in the middle of the street yelling "GET OUT OF MY WAY!!!"/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1262_0"); // * She's the best^1, huh!^1?&* I feel really directed!!!/%
    }
}

if (room == room_town_mid)
{
    if (sprite_index == spr_npc_burgerpants)
    {
        global.msc = 340;
        scr_text(global.msc);
    }
    
    if (sprite_index == spr_mkid_dt)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1276_0"); // * Yo^1, Kris^1!&* You survived Susie^1, haha!/
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1277_0"); // * I mean^1, I never saw her beat anyone up^1, but^1, uh^1, I'd be careful./
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1278_0"); // * Like^1, one time me^1, Snowy^1, and Jockington were playing handball,/
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1279_0"); // * And she just kept creepily watching us from the corner./
        global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1280_0"); // * Then^1, when the ball rolled over to her she just^1, uh^1, froze solid.../
        global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1281_0"); // * ... and kicked the ball as hard as she could^1, right into Officer Undyne's car!/
        global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1282_0"); // * Then^1, Undyne came out^1, smiling^1, cracked her knuckles^1, and totally wiped us at handball.../
        global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1283_0"); // * Anyway^1, Susie sucks^1, Kris^1, haha. /%
        
        if (talked >= 1)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1287_0"); // * Yo^1, Kris^1, you look kind of annoyed^1.&* Everything OK?/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1288_0"); // * You can calm down now^1, dude^1! Susie's not here^1, haha!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1289_0"); // * ... Huh^1?&* You look even more annoyed.../%
        }
    }
    
    if (sprite_index == spr_snowy_dt)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1295_0"); // * HOOH!^1!&* You're lucky^1, Kris!! /
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1296_0"); // * You got to miss class with Alphys^1! It's not fair^1! Ha ha ha^1!/
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1297_0"); // * If I skipped class^1, my dad'd never let me hear the end of it!!^1! Ha ha ha!!!/
        global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1298_0"); // * ... That's actually not even remotely funny./%
    }
}

if (room == room_town_north)
{
    if (sprite_index == spr_npc_catty)
    {
        global.fc = 16;
        global.typer = 5;
        global.msc = 215;
        scr_text(global.msc);
    }
    
    if (sprite_index == spr_npc_cattydad)
    {
        if (talked == 0)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1316_0"); // * Hey neighbor-beighbor^1! When's yah brother Doug gonna come by^1? Huh huh huh!/
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1317_0"); // * My girls'd love to see him^1! He's a sweet little man!/
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1318_0"); // * He's just got one problem..^1.&* He doesn't like my wife's cookin'!/
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1319_0"); // * What's wrong^1, Douglas^1?&* You don't like frozen cat food^1? Huh huh huh!/%
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1323_0"); // * Can't blame yah brother for leavin' town./
            global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1324_0"); // * He's out there^1, gettin' a big brain in the big school./
            global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1325_0"); // * Hope when he becomes a big shot^1, he remembers us little guys down the street./
            global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1326_0"); // * Eatin' oranges and gettin' our stomachs pumped./%
        }
    }
    
    if (sprite_index == spr_npc_bratty)
    {
        global.fc = 17;
        global.typer = 5;
        global.msc = 220;
        scr_text(global.msc);
    }
}

if (room == room_town_church)
{
    global.msc = 345;
    scr_text(global.msc);
}

if (room == room_hospital_lobby)
{
    global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1348_0"); // * Oh^1, it's you^1.&* Are you here to play the piano again?/
    global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1349_0"); // * The patients can't hear it well from here^1, but I personally enjoy it./%
    
    if (talked >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1353_0"); // * Sometimes the police chief comes in to play the piano./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1354_0"); // * Her playing is nice^1, but when she starts singing.../
        global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1355_0"); // * We have to ask her to leave./%
    }
    
    if (tempvar >= 1)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1361_0"); // * Hmmm..^1. you usually play the piano a bit more..^1. beautifully./
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1362_0"); // * Is everything OK^1?&* You DO seem a little sick.../%
    }
}

if (room == room_beach)
{
    if (sprite_index == spr_npc_rgbun)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1371_0"); // * Nothin' better than hangin' at the lake with my best bro.../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1372_0"); // * Watchin' the waves go by.../%
    }
    
    if (sprite_index == spr_npc_rgdragon)
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1376_0"); // * .../
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1377_0"); // * ... true./%
    }
}

if (room == room_town_school)
    global.msg[0] = "* There are 509 coins left here/%";

remanimspeed = image_speed;
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;

enum UnknownEnum
{
    Value_0,
    Value_25 = 25
}
