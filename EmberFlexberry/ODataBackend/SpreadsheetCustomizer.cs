using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using NewPlatform.Flexberry;
using NewPlatform.Flexberry.Reports.ExportToExcel;
using System;
using System.Collections.Specialized;
using System.Linq;

namespace EmberFlexberryDummy
{
    /// <summary>
    /// Класс для обработки документа Excel.
    /// </summary>
    public class SpreadsheetCustomizer : ISpreadsheetCustomizer
    {
        /// <summary>
        /// Обработка документа Excel.
        /// </summary>
        /// <param name="document">Документ Excel.</param>
        public void Process(ref SpreadsheetDocument document, IExportParams parameters = null, NameValueCollection queryParams = null)
        {
            var workbookPart = document.WorkbookPart;
            if (workbookPart != null)
            {
                WorkbookStylesPart styles = workbookPart.WorkbookStylesPart;
                if (styles != null)
                {
                    Stylesheet stylesheet = styles.Stylesheet;
                    if (stylesheet != null)
                    {
                        CellFormats cellformats = stylesheet.CellFormats;
                        Fonts fonts = stylesheet.Fonts;
                        UInt32 fontIndex = fonts.Count;
                        UInt32 formatIndex = cellformats.Count;

                        var worksheetPart = workbookPart.GetPartsOfType<WorksheetPart>().First();
                        if (worksheetPart != null)
                        {
                            var sheetData = worksheetPart.Worksheet.GetFirstChild<SheetData>();
                            if (sheetData != null)
                            {
                                var headerRow = sheetData.GetFirstChild<Row>();
                                if (headerRow != null)
                                {
                                    Cell cell = headerRow.GetFirstChild<Cell>();
                                    CellFormat f = (CellFormat)cellformats.ElementAt((int)cell.StyleIndex.Value);
                                    var font = (Font)fonts.ElementAt((int)f.FontId.Value);
                                    var newfont = (Font)font.Clone();
                                    newfont.Bold = new Bold();
                                    fonts.Append(newfont);
                                    fonts.Count = UInt32Value.FromUInt32((uint)fonts.ChildElements.Count);
                                    CellFormat newformat = (CellFormat)f.Clone();
                                    newformat.FontId = fontIndex;
                                    Fill fill = new Fill();
                                    PatternFill patternFill = new PatternFill() { PatternType = PatternValues.Solid };
                                    patternFill.ForegroundColor = new ForegroundColor() { Rgb = "FFD0D0D0" };
                                    patternFill.BackgroundColor = new BackgroundColor() { Indexed = (UInt32Value)64U };
                                    fill.PatternFill = patternFill;
                                    Fills fills = new Fills();
                                    fills.Append(new Fill() { PatternFill = new PatternFill() });
                                    fills.Append(new Fill() { PatternFill = new PatternFill() { PatternType = PatternValues.Gray125 } });
                                    fills.Append(fill);
                                    stylesheet.Fills = fills;
                                    stylesheet.Fills.Count = UInt32Value.FromUInt32((uint)fills.ChildElements.Count);
                                    newformat.FillId = stylesheet.Fills.Count - 1;
                                    cellformats.Append(newformat);
                                    cellformats.Count = UInt32Value.FromUInt32((uint)cellformats.ChildElements.Count);
                                    stylesheet.Save();
                                    foreach (OpenXmlElement el in headerRow.ChildElements)
                                    {
                                        (el as Cell).StyleIndex = formatIndex;
                                    }
                                }
                            }
                        }
                    }
                }
            }

        }
    }
}