#pragma checksum "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "35798750652bebcdc2f562a9da8ccad52b84a048"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Pacient_Card), @"mvc.1.0.view", @"/Views/Pacient/Card.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\Пользователь\source\repos\SUBD\Views\_ViewImports.cshtml"
using SUBD;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\Пользователь\source\repos\SUBD\Views\_ViewImports.cshtml"
using SUBD.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\Пользователь\source\repos\SUBD\Views\_ViewImports.cshtml"
using SUBD.Services;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "C:\Users\Пользователь\source\repos\SUBD\Views\_ViewImports.cshtml"
using SUBD.ViewModels;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"35798750652bebcdc2f562a9da8ccad52b84a048", @"/Views/Pacient/Card.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"38c97655f6e3d00a741bb35d1d8a3d614007ca13", @"/Views/_ViewImports.cshtml")]
    public class Views_Pacient_Card : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<CardViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Card", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "get", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Pacient", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "AddVaccine", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "AddExam", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ConfirmDiagnose", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "AddDiagnos", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 2 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
  
    ViewData["Title"] = "Карта";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<h4>Карта №");
#nullable restore
#line 7 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
      Write(Model.Id);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h4>\r\n<h5>");
#nullable restore
#line 8 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
Write(Model.Name1);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 8 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
            Write(Model.Name2);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 8 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                         Write(Model.Name3);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n<br />\r\n<h5>Дата выдачи: ");
#nullable restore
#line 10 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
            Write(Model.IssueDate);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h5>\r\n<br />\r\n\r\n<div class=\"row\">\r\n    <div class=\"col-md-4\">\r\n        ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35798750652bebcdc2f562a9da8ccad52b84a0487545", async() => {
                WriteLiteral("\r\n            <div class=\"form-group\">\r\n                <p>\r\n                    <input type=\"hidden\"");
                BeginWriteAttribute("value", " value=\"", 464, "\"", 488, 1);
#nullable restore
#line 18 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
WriteAttributeValue("", 472, Model.PacientId, 472, 16, false);

#line default
#line hidden
#nullable disable
                EndWriteAttribute();
                WriteLiteral(" name=\"id\" />\r\n                    <input type=\"search\" name=\"_str\" placeholder=\"Поиск по карте\">\r\n                    <input type=\"submit\" value=\"Найти\">\r\n                </p>\r\n            </div>\r\n        ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    </div>\r\n</div>\r\n<h5>Аллергии</h5>\r\n");
#nullable restore
#line 27 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
 if (Model.Allergies.Count > 0)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <table class=\"table\">\r\n        <tr>\r\n            <th>Тип</th>\r\n            <th>Дата появления</th>\r\n        </tr>\r\n");
#nullable restore
#line 34 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
         foreach (var allergy in Model.Allergies)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\r\n                <td>");
#nullable restore
#line 37 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(allergy.AllergyName);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 38 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(allergy.Date);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n            </tr>\r\n");
#nullable restore
#line 40 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </table>\r\n    <br />\r\n");
#nullable restore
#line 43 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("<h5>Вакцинации</h5>\r\n");
#nullable restore
#line 45 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
 if (Model.Vaccinations.Count > 0)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <table class=\"table\">\r\n        <tr>\r\n            <th>Тип</th>\r\n            <th>Результат</th>\r\n            <th>Дата</th>\r\n        </tr>\r\n");
#nullable restore
#line 53 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
         foreach (var vaccination in Model.Vaccinations)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\r\n                <td>");
#nullable restore
#line 56 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(vaccination.Type);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 57 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(vaccination.Result);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 58 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(vaccination.Date);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n            </tr>\r\n");
#nullable restore
#line 60 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </table>\r\n");
#nullable restore
#line 62 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
}

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35798750652bebcdc2f562a9da8ccad52b84a04813428", async() => {
                WriteLiteral("Добавить вакцину");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 63 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                                     WriteLiteral(Model.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n<br />\r\n<h5>Посещения врача</h5>\r\n");
#nullable restore
#line 66 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
 if (Model.Examinations.Count > 0)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <table class=\"table\">\r\n        <tr>\r\n            <th>Врач</th>\r\n            <th>Тип</th>\r\n            <th>Результат</th>\r\n            <th>Дата</th>\r\n        </tr>\r\n");
#nullable restore
#line 75 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
         foreach (var exam in Model.Examinations)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\r\n                <td>");
#nullable restore
#line 78 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(exam.Name1);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 78 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                           Write(exam.Name2);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 78 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                       Write(exam.Name3);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 79 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(exam.Type);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 80 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(exam.Result);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 81 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(exam.Date);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n            </tr>\r\n");
#nullable restore
#line 83 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </table>\r\n    <br />\r\n");
#nullable restore
#line 86 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
}

#line default
#line hidden
#nullable disable
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35798750652bebcdc2f562a9da8ccad52b84a04818192", async() => {
                WriteLiteral("Добавить");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_5.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 87 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                                  WriteLiteral(Model.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n<h5>Диагнозы</h5>\r\n");
#nullable restore
#line 89 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
 if (Model.Diagnoses.Count > 0)
{

#line default
#line hidden
#nullable disable
            WriteLiteral("    <table class=\"table\">\r\n        <tr>\r\n            <th>Врач</th>\r\n            <th>Диагноз</th>\r\n            <th>Поставлен</th>\r\n            <th>Статус</th>\r\n            <th>Подтверждено</th>\r\n            <th>Дата подтверждения</th>\r\n        </tr>\r\n");
#nullable restore
#line 100 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
         foreach (var diagnose in Model.Diagnoses)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\r\n                <td>");
#nullable restore
#line 103 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(diagnose.Name1);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 103 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                               Write(diagnose.Name2);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 103 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                               Write(diagnose.Name3);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 104 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(diagnose.Type);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 105 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(diagnose.Date);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                <td>");
#nullable restore
#line 106 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
               Write(diagnose.Status);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n");
#nullable restore
#line 107 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                 if (diagnose.Status == "не подтвержден")
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <td>");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35798750652bebcdc2f562a9da8ccad52b84a04822946", async() => {
                WriteLiteral("Подтвердить");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_6.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 109 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                                                                  WriteLiteral(Model.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            BeginWriteTagHelperAttribute();
#nullable restore
#line 109 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                                                                                             WriteLiteral(diagnose.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["d_id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-d_id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["d_id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("</td>\r\n                    <td></td>\r\n");
#nullable restore
#line 111 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                }
                else
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <td>");
#nullable restore
#line 114 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                   Write(diagnose.CName1);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 114 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                    Write(diagnose.CName2);

#line default
#line hidden
#nullable disable
            WriteLiteral(" ");
#nullable restore
#line 114 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                                     Write(diagnose.CName3);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                    <td>");
#nullable restore
#line 115 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                   Write(diagnose.Date2);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n");
#nullable restore
#line 116 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral("            </tr>\r\n");
#nullable restore
#line 118 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </table>\r\n");
#nullable restore
#line 120 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("<div class=\"btn-group\">\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "35798750652bebcdc2f562a9da8ccad52b84a04827906", async() => {
                WriteLiteral("Добавить диагноз");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_7.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_7);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 122 "C:\Users\Пользователь\source\repos\SUBD\Views\Pacient\Card.cshtml"
                                                         WriteLiteral(Model.Id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n</div>\r\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public AuthorizedUser AuthorizedUser { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<CardViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591