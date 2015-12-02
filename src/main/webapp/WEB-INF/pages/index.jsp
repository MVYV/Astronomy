<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Astronomy | Astronomy-mvyv.rhcloud.com</title>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <META name="description" content="Site about astronomy"/>
    <META name="keywords" content="astronomy, universe, space, astronomy-mvyv.rhcloud.com"/>
    <link type="text/css" rel="stylesheet" href="/resources/css/global_navigation.css">
    <script src="<c:url value='http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js?ver=1.3.2' />" ></script>
    <script src="<c:url value='/resources/js/jquery.cycle.all.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.cycle.all.min.js' />" ></script>
    <script src="<c:url value='/resources/js/jquery.easing.1.1.1.js' />" ></script>
    <link rel="shortcut icon" href="/resources/favicon.ico" type="image/x-icon">
    <script type="text/javascript">
        $(document).ready(function() {
            $('#globalBox').cycle({
                fx: 'fade',
                speed: 1000,
                timeout: 4000
            });
        });
    </script>

</head>
<body>
<div id="glassBox">
    <div id="glassContainer">
        <div id="glassTitle">
            <span id="gTitle">ASTRONOMY</span>
        </div>
        <div id="glassEnter">
            <div id="gEnter">
                <a href="/home" id="glassRef">Enter</a>
            </div>
        </div>
    </div>
    <div id="glassFooter">
        <table id="glassTable" border="0" style="font-family: Verdana;">
            <tr>
                <th class="glassLink" id="glassL"><a href="/universeobjects?object=planets">Planets</a></th>
                <th class="glassLink"><a href="/universeobjects?object=satellites">Satellites</a></th>
                <th class="glassLink"><a href="/universeobjects?object=stars">Stars</a></th>
                <th class="glassLink"><a href="/universeobjects?object=galaxies">Galaxies</a></th>
                <th class="glassLink"><a href="/about?name=solarSystem&object=solarSystem">Solar System</a></th>
                <th class="glassLink"><a href="/about?name=universe&object=universe">Universe</a></th>
                <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
                    <th class="glassLink"><a href="#modal_enter">Sign In</a></th>
                </sec:authorize>
                <sec:authorize access="hasAnyRole('ROLE_USER', 'ROLE_ADMIN')">
                    <th class="glassLink"><a href="/j_spring_security_logout">Sign Out</a></th>
                </sec:authorize>
            </tr>
        </table>
    </div>
</div>
<div id="globalBox">
    <img src="https://lh3.googleusercontent.com/mawoY0G-uVJsKS42ueEBRvNJV7srj1AYbKd85ufYJmQvf0kJD-jPfnuWKbQFNyO2aolEXnKjXpY2E23jyG6L2_ENQv9xl-0Y7TK6i-cRpHmFk4z16P1hGJ8Q6geTzqI06wn6BvL7X3zv03VWvmDY3R7uVgBgPxfePTYhQTkmDgbAf6FRdFS3iCShRPnjHFAlnMOUr5SouFSly08NBM1frpAsjDVOYWNzhhiL5aNSywXC0I3l5Yh7pLPp0xihDxhueZ_6aC__XzW8bSsrgIzCSAT_yyulRn5uHh6Sp5ACNYeg_mmjdsZeBXUJVuZ74uOU6V8k3mKWrjx6-nYHs3QCl36s6Oz2aphCAwBZw8X57JbdRqTnZOsMDDkDU4jZ8qsi6rzlbKmnd3sR7EmBJWIOywyqnS6ei4WyhCk2wPQyfvnaadgEkZbw7KV2hyKowUoj0hBZzKmk_p2vxjf1lgq4GjR2xLuZHnqktXReYyxUTK-47cS3pEO4vNEwNJA3OFaJPT-dH_ltIROw1bNdAYR3tcV5QlfR32KX09A2-zDjREk=w1421-h799-no" class="globalChUnique"/>
    <img src="https://lh3.googleusercontent.com/usIAVYzt811AP5vF05_l3egTv4ROtpteBaKFu8EXbnxqXA3KIP1tDGnTtD27TSpFKBEU-lR-OT6sXb0XWjvZ3xVjf7L1806Jxh_gxggdIFjlw5cn1GXxNfTmfnxhnFSBeYcyvL4sIIcIosA1XzpX51X-Mf3JORzlxSGzubSHMEDZAT5r2zK_ztZIqGccTffslos_S7nVRV3sjMAx1Gh7UCrqcsazX-oHArRr9Wfy3ggt8uivUZb54f67VF9Jk1XJAAidUQClR0wqbFkfMoENioynqLTv58W6tazTXoRA8vzYoa73XKSlvQmUYLi3oJahgG4o79A58xSSw_RACPn0AwVdHVPvJt959XppuGxiJy1xbZCGBx8ahFf8YuzSiP_dKxqZE6xgPF0EmBlYhZW2WuoDGqpysoe7XbvbaK0WCOq0e-pvPnGgZiP9DvWeF_llg0xhQgJsP7FBHmzt4Zmz-QwF7odwPeSCe74F_-HOopB3weYIWPXlpTA0UCa1g_Ab3Yk49YdH7tY3KMb-XSEltdhTSsccWQQgI_k4JupORE0=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/COfRE43GgSDSVSibvtMfYYQOKkHKHW_GduoUjzP7UgISUwNG-ty4WyG4kQ2nTLHl3wpu_OblEXtNkwlBmm5Osibce_sB5WRmsjnNLmPOzCZsCjp5MhN0rI8j-uSx6wk1AG4Z2rvtNwKpOk_i3BPgsRT2ypClwXAHZj6JIGLr4Ees27W94BjOi0w3TOYDBN9yVEsgpcr92il2Znw_FEfMrp7gJfIdE7I4WazlYlq2LJGOj8bsgukA4V-CeMZ6ltlrVftj54czKPyXHj4GIG0zXMpYRujeu6EsA3RsE_lN1ekjmTg617QFIx8brB3rsSVUQPS85iKCJfvR_gvsjIvgoUCS1Xj2s_ed4V_AWnjyuMIvs794pHASfKwMCuGQJfZVumMg-HCD9xj3NbBAu6bh0Ke5FViA_tVm-35xkDqqok-Vpt__qQ3pRt4XgcXT7YnbyV65XeVDdKOxd2vKnDyqtm4ktEdSfn0GR80HQfGbkEjdal4KeO12HPAQpX-zS02Njld4IFLiHS1eeXJtjhzjz1xHouWZACB9eskRGFuKddY=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/k2i5ex3VtTsgV3RNQJcRDPGwSGLHJZ7tufxVpDsyue2t0MHjVDCNZ441_3sdONzfRGRQjlSg-UqWdyUEu_UOL1rJSgz2I-xB0jaATcorez5RHipaW_PQcdKRJg7Ekz5NANR173ax38gbXIxBwz58hAD6eK_PlzXTZY0qWhL59bzKj-HfLaqfTWOZbs0gaaDMGJcEBZTJwGxSW5wKWYaKPuk_YApuBYZBM5GPfzyi-8xRvfOsO7RNvFQvvG04qEbefypAzmLw710aQA33cOUZkWDTaSfZ3HLc5vt_UIJItchVF_BwQq0G1lPlELYFExWD2EExAYC5gSbYj4smF_mzKsBSjY7DyFKK-p0-njri2s0m7hR9ibmCy-xg0yQHv34F7yqHnf4g9r3UqvEPOM2acQ4WVTBtgLw8mCVauNm4vvgnV49m4GN6E_IhxfPvsMZxfw-m_4RJQu4wZnbn-o6y2s1_Cp8MjG9LygdM4cPIJ4XfdTXgh-vnNbiijMz3xFi5qnZLpF4rsDz6hYT6esFnelgehE6OnCE68LtAsBJY3xY=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/_Uhkdx3QYn8hbeGh_7ZA2RK5YLY8UgzMfpGIWtYr5Q1x4RAdAc273dQUjsmMxKpZG-dqVFqCx85lXpNbIMBdUZpl1ZM1qdgxh_9P7Z0DlPoKThqXlLlMzpRmLM321RZHBFHHof1vEz0Bjath-PO5xV9NciVmyRiwKgQY6K2403F7LHb-wFI4zyVMmDCy_gGGRaQe-pidHI_Q3m3BQqsdjnyIu7LBOyDZ4ladjbVklEFrcGsvM9xWaYrZQ3xuFVNKly0uwdzvz52rBibv4u90G0vAQ-LfU_OgIZ2WGmjqJNbE-aNeKk02lcJvwSqIVlDrLzjTCzrMCulS8c_yrvB7-VYTxRAdQeVKyrWqfHdV--Jr6x6WmlPyXRZrtQlD6FF2OUxwLAMoBcBKFbjmBEOMtbbTleFFjrb57UKKei75d-kMqAvgB1WNIehGM89fQOUtgjdws5JoMaNS9ChXG3bv92NxSO4aOhZRSblWoMKSt3HTaa74ocFifzfAKZoS31X0GWU9bJ4NcJx2Otzq4YuABKp0I7l-e6x7_fv7qj-XomQ=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/SROkdPJHIKSD2EQgwpkt0b-cupeJxb651YQ1bExsFj4Gx9G1nAWlt4n2HGKZP68xtkVLRFK_4n3UGTmNOWNXZvADgfkKEiZ30UCUThs8rmWX6YM50xMqAwA-H1EQXpwrrDt2cTiu-soX6xSD-RTyyj-_VGBiZJTNwSCn92EYmXoND4pW1yfXdXSJvsNgZU2_v8F-S0uEbYVHM4eMvAEIT12n3HOWGwo15uLsk8DNEU2KK1a_DaPOyEIW6AshqwdN8SF0ANKdJdGjBXTVgKTnKcH5B5Re9S1_zCwQ75aNXVDjYb1sw7k9zkPA4GN8hHc4qYRj3bBfCVSBLD9tUPRo2FQOkW5jzB7e-GDwkMkJaZnkOoB8VTumsf4GE6yIw-vslJcMBaS4BlO15Ai69J_JWjcrLGyV2vBVTJ-lkzmn8_rHOJaiKTyBgr8Qkrupm9PEs1VkmUGsx2qqCHmPfp5H1-xjfkjSmzO3cxrCfMaR6za1MTMtVCY8rfExgPLHA0ns5hTDWgkFFX0jFRg7iip8To930bu1rhk5CWw8DndENw4=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/UuO61nZiWCiv40xU-3Zlro7K8uePr601kJnVWiDdhrM1nXhqsr3TjHHvA07CfmDXfr1v2-A2XCkFy1XgNxq6_xCpYAv3kp7SOfsdLj_AmNGl7_HqDM7hCjmKo18CGdlPTua7YRrZeXuv3Pis6QN06uVLSxEgfatb1A6eh2OFKoF8OzANf0_BcWu4YVMdoeow6IY9EaYJxSz0eYrxmTJ2h6GtJK2llI4nNjZXNHlvq3iT7eepBhGoF6YtsRWXFzssvgN2NMEIfM64wE78WBBt7SJqilHOCRbFZ2iaEaYUE2HzQZj9fcSe4zbx1LAfcnmPc7mt7yXauthT4bKFFH1O3azl0er0vwQtEJRELuvFWm9nwCVtBs6goB-TwILh8_0L3cClgB-O7BWuZuhaT4r8orq_jxLcOxRYUcI9CVcKmw2TCdA1jSXAUEHepeuaF6tN2EWEihBnFcICG-EiCct9fL1lUoaxB0vODUel3onwMIJvVT6FP9vyd3p3CU5dFJgGKMe7HZ5Vk-RlyoErRll6L6aaT5rvfT-wN0h5g1mfp1g=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/Wr0lIpIoZU_TDwT-Kv7FkeDaio7JMAvO0aEKfXDDGevK55Ei7tuB9V3IQp_Zj3JePh90wMaToKB_SyScRD8hRnPs4NWdeMe1rT3U0yQ2hwm14bfZbr2QZNksMn5ro5-oYLBKLq4e8QvgW57q1gamgpa9sOcp17uO-iQ4LIcSLGbpShYYyFB57n6Otu6bv-nNsYssS5wJ4Eqehc2SKiF9lTt3mGIINFcf5-3r9gJMrLHZ75tBA3Etl5ttMfEuxsKgNZ87yPSwwgcd9Ujs75g1Rit73TFy0dsDMCl8z0LUcNnSwFmoQSeXNIH3ZhdgicqrjHl5tUO8pc4o46vIFmPKAWlJ9wjk6WKZGC8gzAPNaFTfMfhScTKNOU2bySIvQ_gEArChDZ7cwbQprhLtGq0baqBVIhFHpHJPpMPls4O9RQpxNol6Eb0jFG5YNV-Nr8zbbSqJDOrANG9lA8QUOtUVOHoorywaCHvoRKP7t6PvonFwlnDOyU2k2gK2onC8hMLvZMnaXRJqEue9eKq3MgJT5EwlvtJ4CMeMhP3VHwqymhI=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/pPMx_Fv5OeHf_1FVkZA1m-J509O3STXhOTRAoWcB4Lnf1k1d0sundQ5earJsKO5d7ZDm25SRKV4I4x3hFgyehWmSlcM4LBVnJUiNq9bMB50sGUtk3ZGtyUXZ8BsySD6cXwj_r9K2xoLqeZ05lG-MA7yJzUpTyviWjtieA01-IBBaArmWyNvnRRRx2JEa_2nyYnKSZt9FLzJllUru6A5knhkXAPfL0w1XYRu4Gc-6A-kafOuJrg1XWmcJermtBym11QkpfgNpdPvYBjAQIf_-8WKoeQ8r-KEtdvfiG5xKLr7K3c3800hkw1ZW7iTlw-37UUqAfxWIaO8dvRLB5CIRw4coTUisrebbIPhdXeBfH2G9x90gTAvr-qnW-QW1M8kYZI11hyedxb98NCKu7-7qwXLRpxAnow2w-pnLgqUXiLIfrV4sGwf8DWCgcK6eXSk6le2UeK3RSXf8rphXaVloobby7T-2m7ndLziQaK1srO8gBLax2pnEMDIvVd3x6xUPZmaLMz6-c0EPL89ur2h9qUkqKYGdPArDECt5aGDSCYQ=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/dQXpsd1Ro1GEHI2AQDk3WpvROmf3DL7vzSyqysCuqTfo7r90KhRiCWcxW48_PJ8tTh9vaMRb_qWRWYZmUQZ2dX3gwfVosy4WHLn1ltRjsg9LiqDjUBScBDqs5J2PxQlvy-z2nPMra7dhHIoLe28mXs-ngP-N2fwSu3qC84UdbThPcOy8ajvJdfKXFeYFPP7V0wSsGknj-wcxBFrxhyOfxnkcVOTe5_SuIWdytlYwK_W2SWOFA6pCsyVp3vWzoEB1awZxFIK4ep9bVFLD88_mSQOcFj4lBZykHjTvAKDf94qxamC9aRH9C5aC-FopzBVJ-SwtSqhy8SHZ2uhJ593A1wQHichZGTnlclnmcDS11hQp2QTQIzU0KNiEhVf7C4u-JjHVcuL7KLWwN90RQ83SU34308ZnUEm_51bMm2Hjca70shaKPuMrKsuiXMhr-wKUnstgYuQMI-jn9EIX4XqvMPd_KM7MjSKW3j2VQ0cYyDcXqyaYk4TIkaZANvyLiENksN2QhbEjIudnFgNzddteZErRZA2-am6QLc0l6p5XW_0=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/SghtuQwFWfx1a8fAivtBlPGJ0RVSPDmba3QIfc0PdWIyCvYD9gYZQnwsmBqqlcFtNKTTG0JJyFaNAyBDEoVI5k4sw7qHh_dKmBWsqeobJm17QnQ1u1DQ3Tp7dH-y_ehJzfpqBxAlUEntTLT0G5P6uJGR9Z5iaa3VCfaek5fmTf2DTClV8wN16M3O31Y7XBdjKzp7YZxE3vQQ1vwNaZC3xNiaVEanGi8duILBNYrcxUM4YG91kIYQ7NMSv6Huen3KNmmDi4F2mFG_7e53QYkHXtply849ZaPBUmEhaqIbO-n2Z50j7ezWgvs_7sXHeh1zYhnL8xK-LFDRS3WjuVRHg5rNuDp_0F4GEYJqirXHCcfq-U0_zXrVy8kJQjBMGvCuqEuEtOhSvEdLOmfEkwZdD7_i31xW7d1LxY9-qcdf4csSoPC-j1L4C6B4lX-P8l2J62b2EiYWoacAJM4jextHzKdyUqfN048NmVgBbF1B-6UyWlvB-jDAxFFmJ_MIQOy26d5TbGV4vMYX3yOLf8SHuIk__dbBcnG1tkr4ZnzESYE=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/XMdzMnyYdNdcy7DLaIb0j2U7YLAS5Id4C7d5JBbkNuMuq77BUYfW4JHr5Dox3uYfBFynrRdrGNJNvsIlr5FKx3qJ3M3oaYwBZ-C_fpW7sShgWCAs0dMGPJWTTbIdrhTXJy3axD8m8vUSGZXjWWvJKEYxQzFuqoe73SXCvfgCcJaOrh5x3A3M0xJk_sAA4LuWUZfhQjvkKI9tqsUWrYdMh7Mi6ITxfj5h1HF_09BEJWRO4z-V6COslMTsAs7pbIqkM9YkBoDu6dUsL_vH9k7R07m47DwSVlmryZ3nG50dSicNEZJKvMWGbpAH_W0v0ABKWs9Tid2vZp4XOQH3zFgT3PpkGPCOVfYBxPNxZqpFDe8SGM1sAoKforAvKM9U-cz90O0_THmMalg5qf4GCOv-K6JwcNMoIhApDo2a9XNC6pXQJNd9O8mrFmfVN1-F8POaSKUFPqbLM45eIWSsGbQZfmjkdrN-PvuHUCfSMRmLjNrUKAFYvIajZnmuMPONgavGc28-eNKroIK7hJgT1uJEOE2jA47aNUVhlWeanGh9qrs=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/OkwV26pmG_wxzqLLoxcrWuqlP0IOO4uSyfKBdqjNtJ9Wyf3Yw2iEHhYY5gz0YkcWxDCp07EkuPpoog23mqJumVfoFyrZ2e3R1FyYp9YSFz81rZXF40NgZ-3p3AxQI6y7sAbTzY_K71DgNNTfp8hqJkzjOv860HH6BAT5kVpaTtVpkx2OtoWrfiVcm-UxDWp0wYRD7qMqaOxBAyqDHnbjMp6Mc_t5lAbf0kD366upmCohoLM7LtVF1NgaJPaQhKoSCwmmlgDYk5DiF5e8Vzk_rGb-O74cwq9ei1p6o_ApVmmgW35T1P8WXtZw2sJUiDrRWHLkBB2Eh42Jq0UleH_4inXUky3S4qpuBU9ElMXx9k2nqBu8fKxu2hl-Tzur2_SXFR9_xeJm7zl7TposgGMNPiokEJSvcOwj8H1zHsVuCqaVVxE1uh13wkyqz6loD505jHX7emX8-4ME1wGTzKhYp16r-dOBdf_poreVWCCtyRzHsZ0d9mGdrX72Pb_3AoVSP1riK2lB-_OU4gNb8Y6O1VmJDZnzDztfAX7OkBvNo0w=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/mB25Toh0eKQqgaeFw9G08xov-YpkoDyNY6EBv2PuLqMx0BlD4u9ZCfQ_CX7BO17UcvfOJLus-r7uvzc-DuZYQ5wmEkui0HRRJ-iEFYbwqIDwQFCeZ4p6oYShsW8tvV4iuPjPuDKHTghSo7NI0H1eM73iE2MnQMQAcFUSo6fk8_mPLysyM24nb3bJSG_bqN8I08k8tYm9oTobaRArTns3bqCTrNDm3f-9ChtkBgA_0jn0Ksktaci9ZIsCZgWKPqWXfjx_Ly_q8axITeLeH7cnd52VaCavmeryjKddphxQ-LmVS55107Co5ZMLwMSXw9KkwjcksCYROmPUBR-usDPnKAfIdODES93XN6rY2bERmSs04MM0Faj3Zv6DBiSj6EmfB1tnr2qlRXEZOacOkdPxLUDQxbslMpXUx2NEJXU9NOOCuNcjG7KIS982iavePYZLQyVL1nlt7emdN8GdV2z0DS5P_MEVIdDWneYBPEHd6dnNqYdED47DI6WTBzeMC70p8IJLtyfEzVkhdNW--i-zpvUrTgiSDONu7JbMB_dB964=w1421-h799-no" class="globalCh"/>
    <img src="https://lh3.googleusercontent.com/TyFqM1MgvU9nQvy6bobyvO4jeh01L0pmThbQk9d84ogqDppm_ZIayIytZbyJ1euB5CWEoibmEe3RuPlYE3-eRjp_tgDJE9UPIrKhb5s2CngAYdWKCc04wSoqNMswf6fJKMHrGYIkII9_hozFf_jvqqq9BRoTtI4YBaf70p-vndUucKhGr_5Soh3h3KITWyDDHH-lTkYxhlwCu2WbOp5y0zAspjkhO2-1C4rr-usPhZK8bDy1xxUCKbcB-osL6I7zyIR1zP4QbWiNjugZHzaD1S3tKiDHLATGLDqhKeD6SAxMBly4-fNQDP08GUAEWUPFGp343KPJi2bFLkxDZ4LNDHuprmu00GeLYFNy6SxKtfgPZ5q_g7NMrveVjj164_bjXNWFkW0znasz_z3uqANy45eRJfzct2tmLLdh3HYup560M9Wni_nJdQ52ey48IzQnHloupNg-v9rD0vxXICtHpjEW93R0SPT42f8U4BNs059Zjn9p6B1gepk1tKoNa3GF0Gsfv5l0LVvECF-bGBLwXyI6g9nYlCb7RNbUZwQ2dPg=w1421-h799-no" class="globalCh"/>
</div>


<div id="modal_enter" class="enter">																																	<!-- ╨Ь╨╛╨┤╨░╨╗╤М╨╜╨╡ ╨▓╤Ц╨║╨╜╨╛ ╨┤╨╗╤П ╨░╨▓╤В╨╛╤А╨╕╨╖╨░╤Ж╤Ц╤Ч (╨╖'╤П╨▓╨╗╤П╤Ф╤В╤М╤Б╤П ╨┐╤Ц╤Б╨╗╤П ╨╜╨░╤В╨╕╤Б╨║╨░╨╜╨╜╤П ╨╜╨░ ╨║╨╜╨╛╨┐╨║╤Г "╨Т╤Е╤Ц╨┤") -->
    <div><a href="#close" title="Close" class="close">X</a>
        <form id="contact_form" action="<c:url value='/j_spring_security_check' />" method="post">																												<!-- ╨д╨╛╤А╨╝╨░ ╨░╨▓╤В╨╛╤А╨╕╨╖╨░╤Ж╤Ц╤Ч -->
            <table width="400" border="0">																															<!-- ╨в╨░╨▒╨╗╨╕╤Ж╤П ╨┤╨╗╤П ╤А╨╛╨╖╨╝╤Ц╤Й╨╡╨╜╨╜╤П ╨╡╨╗. ╤Д╨╛╤А╨╝╨╕ -->
                <tr>																																				<!-- ╨а╤П╨┤╨╛╨║ -->
                    <td>
                        <input type="text" id="j_username" name="j_username" placeholder="Please enter your name:" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="password" id="j_password" name="j_password" placeholder="Please enter your password:" value="" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Sign in" id="sub_button"   />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="/authorization" id="authorization_link">Authorization</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>
