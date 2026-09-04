.class public Lcom/metamoji/un/text/model/TextModel;
.super Lcom/metamoji/df/model/Model;
.source "TextModel.java"

# interfaces
.implements Lcom/metamoji/un/text/model/ITextInput;
.implements Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CARET_WIDTH:F = 2.0f

.field public static final MATCH_LINE_TABLE_CREATION_PROCESS_TO_IOS:Z = true

.field public static final MMJNT_MODELPROPVALUE_TEXT_VERSION_2:I = 0x2

.field public static final MMJNT_MODELPROPVALUE_TEXT_VERSION_3:I = 0x3

.field public static final MMJNT_MODELPROPVALUE_TEXT_VERSION_4:I = 0x4

.field public static final MMJNT_MODELPROPVALUE_TEXT_VERSION_LATEST:I = 0x3

.field public static final MMJUN_TEXTMODEL_PROPERTY_NOT_DEL_WHEN_EMPTY:Ljava/lang/String; = "not.del.when.empty"

.field public static final MMJUN_TEXTMODEL_PROPERTY_NO_DROPSHADOW:Ljava/lang/String; = "no.dropshadow"

.field public static final NOT_USE_FONTMETRICS:Z = true

.field public static final RENDER_DEFAULT_ASCENDER_RATIO:F = 0.88f

.field public static final RENDER_DEFAULT_ASCENDER_RATIO_PERCENT:I = 0x58

.field public static final RENDER_DEFAULT_DESCENDER_RATIO:F = 0.12f

.field public static final RENDER_DEFAULT_DESCENDER_RATIO_PERCENT:I = 0xc

.field public static UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String; = "\u2028"

.field public static UNICODE_NEW_LINE_CHAR:C = '\n'

.field public static UNICODE_NEW_LINE_STRING:Ljava/lang/String;

.field public static lineSeparatorCharSet:Lcom/metamoji/cm/CharacterSet;


# instance fields
.field _listPrefixSnapshot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;"
        }
    .end annotation
.end field

.field private _numberedListDataStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/NumberedListData;",
            ">;"
        }
    .end annotation
.end field

.field private _paragraphMarkDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;",
            ">;"
        }
    .end annotation
.end field

.field private _paragraphTable:Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

.field private _referenceCount:I

.field private _searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;"
        }
    .end annotation
.end field

.field private defaultFontHeight:F

.field private defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

.field private defaultTextPaint:Landroid/text/TextPaint;

.field private deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

.field private duringInsertStringAndStrokes:Z

.field private executeUnitWidthSelfAdjustmentBeforeReamkeLineTable:Z

.field private handler:Landroid/os/Handler;

.field private lineSpacing:F

.field private lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

.field private ltMakingCurrentPoint:Landroid/graphics/PointF;

.field private maxLineHeight:F

.field private modified:Z

.field private paddingRect:Lcom/metamoji/cm/EdgeInsets;

.field private previousPosition:Lcom/metamoji/un/text/model/TextPosition;

.field private ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

.field private selectedRange:Lcom/metamoji/un/text/model/TextRange;

.field private stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

.field private timerFireMethodForDelayLTMaintainFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

.field private unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

.field private unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

.field public unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

.field public unitWidthSelfAdjustment:Z

.field private verticalWritingOnRLT:Z

.field private viewRectForLineTableMaking:Landroid/graphics/RectF;


# direct methods
.method static bridge synthetic -$$Nest$fgetlineTable(Lcom/metamoji/un/text/model/TextModel;)Lcom/metamoji/un/text/model/linetable/LineTable;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstringWsArray(Lcom/metamoji/un/text/model/TextModel;)Lcom/metamoji/un/text/model/StringWithStrokesArray;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputselectedRange(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUnitMinSize(Lcom/metamoji/un/text/model/TextModel;)Lcom/metamoji/cm/SizeF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitMinSize()Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAlive(Lcom/metamoji/un/text/model/TextModel;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->isAlive()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtimerFireMethodForDelayLTMaintain(Lcom/metamoji/un/text/model/TextModel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintain(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 130
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    sget-char v2, Lcom/metamoji/un/text/model/TextModel;->UNICODE_NEW_LINE_CHAR:C

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/metamoji/un/text/model/TextModel;->UNICODE_NEW_LINE_STRING:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/metamoji/cm/CharacterSet;

    sget-object v1, Lcom/metamoji/un/text/model/TextModel;->UNICODE_LINE_SEPARATOR_STRING:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CharacterSet;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/un/text/model/TextModel;->lineSeparatorCharSet:Lcom/metamoji/cm/CharacterSet;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/ModelManager;I)V
    .locals 0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/model/Model;-><init>(Lcom/metamoji/df/model/ModelManager;I)V

    .line 199
    new-instance p1, Lcom/metamoji/un/text/model/ColorComponent;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, p2}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    .line 213
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    .line 214
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    const/4 p1, 0x0

    .line 248
    iput p1, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    .line 3168
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->_listPrefixSnapshot:Landroid/util/SparseArray;

    .line 4511
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->handler:Landroid/os/Handler;

    .line 281
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->commonInitialize()Z

    .line 285
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    return-void
.end method

.method private adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F
    .locals 2

    .line 4160
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v0, :cond_0

    .line 4161
    iget v0, p2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 4163
    :cond_0
    iget v0, p2, Landroid/graphics/PointF;->x:F

    .line 4165
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->indentIsSet()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_1

    .line 4169
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result p3

    goto :goto_1

    .line 4171
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndentExcept1stLine()F

    move-result p3

    .line 4173
    :goto_1
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 4176
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 4174
    iget v0, v1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    .line 4176
    :cond_2
    iget v0, v1, Landroid/graphics/RectF;->left:F

    .line 4177
    :goto_2
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    mul-float/2addr p3, v1

    add-float/2addr v0, p3

    .line 4179
    iget-boolean p3, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz p3, :cond_3

    .line 4180
    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->set(FF)V

    return v0

    .line 4182
    :cond_3
    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_4
    return v0
.end method

.method private clearListPrefixSnapshot(I)Z
    .locals 3

    .line 3203
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_listPrefixSnapshot:Landroid/util/SparseArray;

    if-lez p1, :cond_1

    .line 3195
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3197
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_listPrefixSnapshot:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 3199
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_listPrefixSnapshot:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3203
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private clearRenderingDataAfter(ILjava/util/EnumSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;",
            ">;)Z"
        }
    .end annotation

    .line 5869
    sget-object v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->HeadCharOfListing:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5870
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->clearListPrefixSnapshot(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5871
    :goto_0
    sget-object v1, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {p2, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5872
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->clearparagraphMarkOfLineAfter(I)Z

    move-result p1

    and-int/2addr p1, v0

    return p1

    :cond_1
    return v0
.end method

.method private clearparagraphMarkOfLineAfter(I)Z
    .locals 4

    .line 5925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5926
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5927
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 5928
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5931
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 5932
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5933
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private commonInitialize()Z
    .locals 3

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 295
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 303
    const-string v1, ""

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    const/4 v1, 0x0

    .line 304
    iput v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    .line 307
    new-instance v2, Lcom/metamoji/cm/EdgeInsets;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/metamoji/cm/EdgeInsets;-><init>(FFFF)V

    iput-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    .line 311
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    .line 312
    new-instance v0, Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 313
    iput-object p0, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->delegate:Lcom/metamoji/un/text/model/linetable/ILineTableDelegate;

    .line 317
    new-instance v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;-><init>(Lcom/metamoji/un/text/model/linetable/LineTable;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    .line 318
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>()V

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->modified:Z

    .line 334
    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 335
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/metamoji/un/text/model/ColorComponent;->set(FFFF)V

    .line 336
    sget-object v1, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 337
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    .line 339
    iput v0, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    const/4 v0, 0x1

    return v0
.end method

.method private constructColumnTable(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextLine;Ljava/lang/CharSequence;Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p4

    if-eqz p3, :cond_12

    .line 3646
    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/un/text/model/TextLine;->getRunCount()I

    move-result v12

    .line 3648
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3649
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3650
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3651
    iget-object v4, v0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    move-object/from16 v3, p3

    move-object/from16 v2, p5

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getGlyphPosAdvIdx(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v12, :cond_11

    .line 3656
    iget-object v13, v3, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/cm/Range;

    iget v13, v13, Lcom/metamoji/cm/Range;->location:I

    invoke-virtual {v2, v13}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v13

    .line 3659
    invoke-virtual {v13}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 3660
    invoke-virtual {v13}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v13

    goto :goto_1

    .line 3662
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v13

    :goto_1
    float-to-double v13, v13

    const-wide v15, 0x3ff22e8ba2e8ba2fL    # 1.1363636363636365

    mul-double/2addr v13, v15

    double-to-float v13, v13

    .line 3698
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 3699
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 3700
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/util/List;

    .line 3701
    new-instance v11, Lcom/metamoji/cm/Range;

    move/from16 v17, v5

    iget-object v5, v3, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cm/Range;

    invoke-direct {v11, v5}, Lcom/metamoji/cm/Range;-><init>(Lcom/metamoji/cm/Range;)V

    .line 3702
    iget v5, v11, Lcom/metamoji/cm/Range;->location:I

    move/from16 v18, v5

    iget-object v5, v3, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cm/Range;

    iget v3, v5, Lcom/metamoji/cm/Range;->location:I

    sub-int v5, v18, v3

    iput v5, v11, Lcom/metamoji/cm/Range;->location:I

    .line 3703
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, v17

    move/from16 v17, v4

    move v4, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_10

    move-object/from16 v18, v6

    add-int/lit8 v6, v5, 0x1

    if-ge v6, v3, :cond_1

    .line 3718
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v20, v19

    move/from16 v19, v3

    move/from16 v3, v20

    goto :goto_3

    :cond_1
    move/from16 v19, v3

    .line 3722
    iget v3, v11, Lcom/metamoji/cm/Range;->location:I

    move/from16 v20, v3

    iget v3, v11, Lcom/metamoji/cm/Range;->length:I

    add-int v3, v20, v3

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    sub-int v3, v3, v20

    :goto_3
    move/from16 v20, v6

    const/4 v6, 0x1

    if-ne v6, v3, :cond_5

    .line 3729
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v6

    move-object/from16 v21, v7

    .line 3732
    iget-boolean v7, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v7, :cond_2

    .line 3733
    iget-object v7, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    move-object/from16 v22, v8

    iget v8, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v23, v10

    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 3734
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    add-float v10, v10, v24

    .line 3733
    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :cond_2
    move-object/from16 v22, v8

    move-object/from16 v23, v10

    .line 3737
    iget-object v7, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->x:F

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    iget v10, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 3741
    :goto_4
    iget-boolean v7, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v7, :cond_3

    .line 3742
    iget-object v7, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v7, v13, v5}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_5

    .line 3744
    :cond_3
    iget-object v7, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v7, v5, v13}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 3761
    :goto_5
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v5

    invoke-interface {v9, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3763
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnCount()I

    move-result v5

    const/4 v7, 0x2

    if-lt v5, v7, :cond_f

    .line 3766
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnCount()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v8}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v5

    .line 3768
    iget-boolean v7, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v7, :cond_4

    .line 3769
    iget-object v6, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget-object v5, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto/16 :goto_c

    :cond_4
    const/4 v7, 0x0

    .line 3771
    iget-object v6, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget-object v5, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v6, v7, v5}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto/16 :goto_c

    :cond_5
    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    .line 3779
    iget-boolean v7, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v7, :cond_6

    .line 3780
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    .line 3781
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    add-float v10, v10, v24

    invoke-direct {v7, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_6

    .line 3784
    :cond_6
    new-instance v7, Landroid/graphics/PointF;

    iget v8, v1, Landroid/graphics/PointF;->x:F

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    iget v10, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v7, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_6
    const/4 v8, 0x2

    if-ne v8, v3, :cond_9

    .line 3787
    invoke-static {v9, v4}, Lcom/metamoji/cm/StringUtils;->isSurrogateAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-nez v8, :cond_7

    add-int/lit8 v8, v4, 0x1

    invoke-static {v9, v8}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3790
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v6

    .line 3793
    iget-object v8, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    invoke-virtual {v8, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3795
    iget-boolean v7, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v7, :cond_8

    .line 3796
    iget-object v7, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v7, v13, v5}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_7

    .line 3798
    :cond_8
    iget-object v7, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v7, v5, v13}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 3802
    :goto_7
    iput v3, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    goto/16 :goto_c

    .line 3808
    :cond_9
    new-instance v8, Lcom/metamoji/cm/Range;

    invoke-direct {v8, v4, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-static {v9, v8}, Lcom/metamoji/cm/StringUtils;->substring(Ljava/lang/CharSequence;Lcom/metamoji/cm/Range;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/cm/StringUtils;->lengthUCS4(Ljava/lang/CharSequence;)I

    move-result v8

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v3, :cond_f

    .line 3811
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v24

    move/from16 v25, v6

    invoke-virtual/range {v24 .. v24}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v6

    move/from16 v24, v4

    .line 3814
    iget-object v4, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    invoke-virtual {v4, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3816
    iget-boolean v4, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v4, :cond_a

    .line 3817
    iget-object v4, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Float;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move/from16 v27, v10

    int-to-float v10, v8

    div-float v10, v26, v10

    invoke-virtual {v4, v13, v10}, Lcom/metamoji/cm/SizeF;->set(FF)V

    move/from16 v26, v5

    goto :goto_9

    :cond_a
    move/from16 v27, v10

    .line 3819
    iget-object v4, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    move/from16 v26, v5

    int-to-float v5, v8

    div-float/2addr v10, v5

    invoke-virtual {v4, v10, v13}, Lcom/metamoji/cm/SizeF;->set(FF)V

    :goto_9
    if-nez v27, :cond_b

    .line 3836
    iput v8, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->combineColumnInfoNum:I

    .line 3838
    :cond_b
    iget-boolean v4, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v4, :cond_c

    .line 3839
    iget v4, v7, Landroid/graphics/PointF;->y:F

    iget-object v5, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v4, v5

    iput v4, v7, Landroid/graphics/PointF;->y:F

    goto :goto_a

    .line 3841
    :cond_c
    iget v4, v7, Landroid/graphics/PointF;->x:F

    iget-object v5, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v4, v5

    iput v4, v7, Landroid/graphics/PointF;->x:F

    :goto_a
    add-int/lit8 v10, v27, 0x1

    if-ge v10, v3, :cond_e

    add-int v4, v24, v27

    .line 3845
    invoke-static {v9, v4}, Lcom/metamoji/cm/StringUtils;->isSurrogateAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-nez v5, :cond_d

    add-int/lit8 v4, v4, 0x1

    invoke-static {v9, v4}, Lcom/metamoji/cm/StringUtils;->isFollowigCodeAtIndex(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const/4 v4, 0x2

    .line 3846
    iput v4, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    goto :goto_b

    :cond_e
    const/4 v4, 0x2

    move/from16 v10, v27

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v24

    move/from16 v6, v25

    move/from16 v5, v26

    goto/16 :goto_8

    :cond_f
    :goto_c
    move/from16 v24, v4

    add-int v4, v24, v3

    move-object/from16 v6, v18

    move/from16 v3, v19

    move/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    goto/16 :goto_2

    :cond_10
    move/from16 v24, v4

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v3, p3

    move/from16 v5, v24

    goto/16 :goto_0

    :cond_11
    return-void

    :cond_12
    move-object/from16 v2, p5

    const/4 v3, 0x0

    .line 3860
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    .line 3861
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v2

    .line 3862
    iget-object v3, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3864
    iget-boolean v1, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v1, :cond_13

    .line 3865
    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return-void

    :cond_13
    const/4 v7, 0x0

    .line 3867
    iget-object v1, v2, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    invoke-virtual {v1, v7, v2}, Lcom/metamoji/cm/SizeF;->set(FF)V

    return-void
.end method

.method private createExpressionOfParagraph(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)V
    .locals 9

    .line 3050
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3055
    :cond_0
    sget-object v1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;->NumberedList:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListKind()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$ListKind;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_8

    .line 3056
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/NumberedListData;

    if-nez v1, :cond_1

    .line 3058
    new-instance v1, Lcom/metamoji/un/text/model/NumberedListData;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/NumberedListData;-><init>()V

    .line 3059
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v2

    iput v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    .line 3060
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3062
    :cond_1
    iget v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 3064
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/NumberedListData;->incrementOrder()V

    goto/16 :goto_1

    .line 3065
    :cond_2
    iget v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v4

    if-le v2, v4, :cond_7

    .line 3068
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3069
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/NumberedListData;

    if-nez v1, :cond_4

    goto :goto_0

    .line 3072
    :cond_4
    iget v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v4

    if-gt v2, v4, :cond_3

    :goto_0
    if-nez v1, :cond_5

    .line 3075
    new-instance v1, Lcom/metamoji/un/text/model/NumberedListData;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/NumberedListData;-><init>()V

    .line 3076
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v2

    iput v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    .line 3077
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3080
    :cond_5
    iget v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 3082
    new-instance v1, Lcom/metamoji/un/text/model/NumberedListData;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/NumberedListData;-><init>()V

    .line 3083
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v2

    iput v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    .line 3084
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3086
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/NumberedListData;->incrementOrder()V

    goto :goto_1

    .line 3089
    :cond_7
    iget v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 3091
    new-instance v1, Lcom/metamoji/un/text/model/NumberedListData;

    invoke-direct {v1}, Lcom/metamoji/un/text/model/NumberedListData;-><init>()V

    .line 3092
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getListLevel()I

    move-result v2

    iput v2, v1, Lcom/metamoji/un/text/model/NumberedListData;->levelForThisList:I

    .line 3093
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 3097
    :cond_9
    :goto_1
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->createListPrefixString(Lcom/metamoji/un/text/model/NumberedListData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3101
    new-array v1, v3, [Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {p1, v1, v4, v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphRange(Ljava/util/List;ZLcom/metamoji/un/text/model/StringWithStrokesArray;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v1

    .line 3104
    const-class v2, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 3105
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v1

    .line 3107
    new-instance v5, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    if-eqz v1, :cond_a

    .line 3111
    sget-object v6, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->BackgroundColor:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v7, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Underline:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    sget-object v8, Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;->Strikeout:Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;

    invoke-static {v6, v7, v8}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 3114
    new-instance v6, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v6, v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    invoke-virtual {v5, v6, v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->overwriteOtherAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 3118
    :cond_a
    new-instance v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    new-array v2, v3, [Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 3119
    new-instance v2, Lcom/metamoji/un/text/model/TextLine;

    iget-boolean v3, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    invoke-direct {v2, v3}, Lcom/metamoji/un/text/model/TextLine;-><init>(Z)V

    .line 3120
    iget-object v3, v2, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    new-instance v5, Lcom/metamoji/cm/Range;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v4, v0}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3121
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, v4, v4}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendLineRef(Lcom/metamoji/un/text/model/TextLine;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3123
    iget-object p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-direct {p0, v1, p1}, Lcom/metamoji/un/text/model/TextModel;->setListPrefixSnapshot(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;I)V

    :cond_b
    :goto_2
    return-void
.end method

.method private createParagraphMarkRenderingData(ILjava/util/EnumSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;",
            ">;)V"
        }
    .end annotation

    .line 3133
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 3138
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->clearRenderingDataAfter(ILjava/util/EnumSet;)Z

    .line 3141
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    invoke-direct {v1, p1, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->GetParagraphIndexFromLineLocation(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;)I

    move-result p1

    .line 3142
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ge p1, v0, :cond_6

    .line 3145
    sget-object v3, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->HeadCharOfListing:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {p2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3146
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/metamoji/un/text/model/TextModel;->createExpressionOfParagraph(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)V

    .line 3148
    :cond_1
    sget-object v3, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-virtual {p2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3150
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 3155
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ne p1, v4, :cond_3

    .line 3156
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v4

    if-eq v4, v2, :cond_4

    .line 3157
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    sget-object v4, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-interface {v2, v4, v3}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->hasTag(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3159
    sget-object v2, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;->Voice:Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    iget-object v4, v3, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v4, v4, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-virtual {p0, v2, v4}, Lcom/metamoji/un/text/model/TextModel;->setParagraphMarkOfLine(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;I)V

    :cond_4
    move-object v2, v3

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method private createTextLine(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)Lcom/metamoji/un/text/model/TextLine;
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 3892
    new-instance v2, Lcom/metamoji/un/text/model/TextLine;

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/metamoji/un/text/model/TextLine;-><init>(Z)V

    const/4 v3, 0x0

    move/from16 v5, p2

    move-object v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v5

    :goto_0
    const/4 v9, 0x1

    if-gt v3, v1, :cond_6

    .line 3901
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v10

    .line 3902
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isEmojiAt(I)Z

    move-result v11

    move-object/from16 v12, p0

    .line 3904
    iget-boolean v13, v12, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v13, :cond_0

    .line 3905
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 3906
    invoke-static {v13}, Lcom/metamoji/un/text/VertCharInfo;->getVertCharInfo(C)Lcom/metamoji/un/text/VertCharInfo;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 3907
    invoke-virtual {v13}, Lcom/metamoji/un/text/VertCharInfo;->isRotateChar()Z

    move-result v13

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 3955
    :goto_1
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isUrl(I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3956
    new-instance v14, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {v14, v10}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 3957
    new-instance v10, Lcom/metamoji/un/text/model/ColorComponent;

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v10, v15, v4, v4, v15}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(FFFF)V

    invoke-virtual {v14, v10}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 3958
    invoke-virtual {v14, v9}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUnderline(Z)V

    move-object v10, v14

    :cond_1
    if-nez v6, :cond_2

    :goto_2
    move-object v6, v10

    move v7, v11

    move v8, v13

    goto :goto_3

    .line 3968
    :cond_2
    invoke-virtual {v6, v10}, Lcom/metamoji/un/text/model/attr/StringAttributes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v7, v11, :cond_3

    if-eq v8, v13, :cond_4

    .line 3980
    :cond_3
    iget-object v4, v2, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    new-instance v6, Lcom/metamoji/cm/Range;

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v5

    add-int/2addr v7, v9

    invoke-direct {v6, v5, v7}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/2addr v3, v9

    goto :goto_0

    :cond_6
    move-object/from16 v12, p0

    .line 4001
    iget-object v0, v2, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    new-instance v3, Lcom/metamoji/cm/Range;

    sub-int/2addr v1, v5

    add-int/2addr v1, v9

    invoke-direct {v3, v5, v1}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private createTextPaint(Ljava/lang/String;F)Landroid/text/TextPaint;
    .locals 2

    .line 411
    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0xc1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 412
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 413
    invoke-static {p1}, Lcom/metamoji/un/text/FontUtils;->getRenderingFontInfo(Ljava/lang/String;)Lcom/metamoji/un/text/FontInfo;

    move-result-object p1

    const/4 p2, 0x0

    .line 414
    invoke-static {p1, p2}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Lcom/metamoji/un/text/FontInfo;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 417
    :cond_0
    const-string p1, "\"liga\"=0"

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    return-object v0
.end method

.method private deleteBackwardCore()V
    .locals 1

    const/4 v0, 0x1

    .line 1253
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore(Z)V

    return-void
.end method

.method private deleteBackwardCore(Z)V
    .locals 3

    .line 1258
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isSelectedAll()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1259
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeAllStringWss()V

    .line 1260
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>()V

    goto :goto_1

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    if-eqz p1, :cond_1

    .line 1265
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1266
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    goto :goto_0

    .line 1269
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1270
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    goto :goto_0

    .line 1273
    :cond_2
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1275
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->deleteCharactersInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1277
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 1280
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/TextRange;->setEmpty(Z)V

    .line 1282
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1283
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextRange;->setStart(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1286
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->hideSelectionModifierCursorController()V

    .line 1289
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v0, p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void
.end method

.method private get2ndLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 3

    .line 4214
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 4217
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFitColumnWidth(Ljava/lang/CharSequence;Landroid/graphics/PointF;FLcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;IZ)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v10, p5

    .line 3339
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v10

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    invoke-direct {v0, v3, v10, v4}, Lcom/metamoji/un/text/model/TextModel;->createTextLine(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v4

    .line 3370
    iget-object v5, v4, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    .line 3371
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3372
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3373
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3374
    iget-object v5, v0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getGlyphPosAdvIdx(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3381
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v13, -0x1

    if-eq v13, v5, :cond_0

    .line 3386
    invoke-interface {v1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3387
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v5, v10

    sub-int/2addr v5, v11

    invoke-direct {v0, v3, v10, v5}, Lcom/metamoji/un/text/model/TextModel;->createTextLine(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 3391
    :goto_0
    iget-boolean v14, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v14, :cond_1

    .line 3392
    iget v14, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 3394
    :cond_1
    iget v14, v2, Landroid/graphics/PointF;->x:F

    :goto_1
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v5, v4

    .line 3395
    :goto_2
    iget-object v15, v0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v3, v5, v15, v6}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getImageWidth(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F

    move-result v3

    add-float/2addr v14, v3

    cmpg-float v3, v14, p3

    if-gtz v3, :cond_3

    .line 3398
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    move v6, v11

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_1d

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v6, v12, :cond_16

    .line 3419
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v16, v11

    .line 3420
    iget-object v11, v4, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/cm/Range;

    .line 3421
    iget v13, v11, Lcom/metamoji/cm/Range;->location:I

    iget v11, v11, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v13, v11

    sub-int/2addr v13, v10

    .line 3422
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 3423
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v4, v18

    check-cast v4, Ljava/util/List;

    .line 3424
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 p4, v5

    move-object/from16 v5, v18

    check-cast v5, Ljava/util/List;

    move/from16 v18, v6

    .line 3428
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v1, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    move/from16 v20, v3

    .line 3430
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->lineBreakCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/metamoji/cm/StringUtils;->rangeOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)Lcom/metamoji/cm/Range;

    move-result-object v3

    move-object/from16 v21, v6

    .line 3431
    iget v6, v3, Lcom/metamoji/cm/Range;->location:I

    move-object/from16 v22, v3

    const/4 v3, -0x1

    if-eq v3, v6, :cond_10

    move/from16 v14, p4

    move-object/from16 v17, v7

    move-object/from16 v7, v21

    move-object/from16 v6, v22

    move-object/from16 v21, v8

    .line 3435
    :goto_5
    iget v8, v6, Lcom/metamoji/cm/Range;->location:I

    if-eq v3, v8, :cond_f

    .line 3437
    iget v8, v6, Lcom/metamoji/cm/Range;->location:I

    if-eqz v8, :cond_4

    .line 3440
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    move/from16 p4, v8

    iget v8, v6, Lcom/metamoji/cm/Range;->location:I

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3442
    iget v3, v6, Lcom/metamoji/cm/Range;->location:I

    add-int/lit8 v8, v3, -0x1

    goto :goto_6

    :cond_4
    move/from16 p4, v8

    :cond_5
    move/from16 v8, p4

    :goto_6
    add-int/lit8 v3, v15, -0x1

    move/from16 p4, v3

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v15, :cond_8

    .line 3454
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    move/from16 v24, v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int v10, v20, v24

    if-ne v8, v10, :cond_6

    goto :goto_8

    .line 3459
    :cond_6
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v10, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, p5

    move/from16 v8, v24

    goto :goto_7

    :cond_8
    move/from16 v3, p4

    .line 3465
    :goto_8
    iget-boolean v8, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v8, :cond_9

    .line 3466
    iget v8, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_9

    .line 3468
    :cond_9
    iget v8, v2, Landroid/graphics/PointF;->x:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_9
    add-float/2addr v8, v3

    cmpg-float v3, v8, p3

    if-gtz v3, :cond_c

    .line 3507
    iget v3, v6, Lcom/metamoji/cm/Range;->location:I

    add-int v3, v20, v3

    if-lt v3, v13, :cond_b

    :cond_a
    move v5, v14

    move/from16 v3, v20

    const/4 v14, 0x0

    goto/16 :goto_e

    .line 3514
    :cond_b
    iget v3, v6, Lcom/metamoji/cm/Range;->location:I

    iget v6, v6, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v3, v6

    add-int v6, v20, v3

    .line 3532
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v7, v3, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3533
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->lineBreakCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/metamoji/cm/StringUtils;->rangeOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)Lcom/metamoji/cm/Range;

    move-result-object v3

    move/from16 v10, p5

    move/from16 v14, v20

    move/from16 v20, v6

    move-object v6, v3

    const/4 v3, -0x1

    goto/16 :goto_5

    :cond_c
    if-eqz p6, :cond_f

    if-nez v20, :cond_f

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v15, :cond_a

    .line 3484
    iget-boolean v6, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v6, :cond_d

    .line 3485
    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_b

    .line 3487
    :cond_d
    iget v6, v2, Landroid/graphics/PointF;->x:F

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_b
    add-float/2addr v6, v7

    cmpl-float v6, v6, p3

    if-lez v6, :cond_e

    .line 3491
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v14, v16

    move/from16 v5, v20

    goto/16 :goto_e

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    move v5, v14

    move/from16 v14, v16

    move/from16 v3, v20

    goto :goto_e

    :cond_10
    move-object/from16 v17, v7

    move-object/from16 v21, v8

    if-eqz p6, :cond_17

    move/from16 v6, p4

    move/from16 v3, v20

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v15, :cond_13

    .line 3544
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3545
    iget-boolean v8, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v8, :cond_11

    .line 3546
    iget v8, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_d

    .line 3548
    :cond_11
    iget v8, v2, Landroid/graphics/PointF;->x:F

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v8, v10

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    :goto_d
    add-float/2addr v8, v10

    cmpl-float v8, v8, p3

    if-lez v8, :cond_12

    move v5, v3

    move v3, v6

    move/from16 v14, v16

    goto :goto_e

    :cond_12
    add-int/lit8 v7, v7, 0x1

    move/from16 v25, v6

    move v6, v3

    move/from16 v3, v25

    goto :goto_c

    :cond_13
    move v5, v6

    :goto_e
    if-eqz v14, :cond_14

    goto :goto_f

    :cond_14
    if-eq v3, v13, :cond_15

    move v5, v3

    move v3, v13

    :cond_15
    add-int/lit8 v6, v18, 0x1

    move/from16 v10, p5

    move/from16 v11, v16

    move-object/from16 v7, v17

    move-object/from16 v4, v19

    move-object/from16 v8, v21

    const/4 v13, -0x1

    goto/16 :goto_4

    :cond_16
    move/from16 v20, v3

    move/from16 p4, v5

    move/from16 v16, v11

    :cond_17
    move/from16 v5, p4

    move/from16 v3, v20

    :goto_f
    if-eqz p6, :cond_18

    move/from16 v2, v16

    if-ne v2, v3, :cond_18

    if-eqz v14, :cond_1a

    :cond_18
    if-eqz v3, :cond_19

    .line 3579
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->kinsokuAtEndCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_10

    .line 3584
    :cond_19
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v4, v3, 0x1

    if-lt v2, v4, :cond_1a

    .line 3585
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->kinsokuAtBeginCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    :goto_10
    move v3, v5

    :cond_1a
    if-eqz p6, :cond_1d

    if-nez v3, :cond_1d

    const/4 v2, 0x0

    .line 3596
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1b

    .line 3597
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 3598
    :cond_1b
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_1c

    .line 3599
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 3601
    :cond_1c
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    return v1

    :cond_1d
    return v3
.end method

.method private getFontMetrics(Lcom/metamoji/un/text/model/attr/StringAttributes;)Landroid/graphics/Paint$FontMetrics;
    .locals 2

    .line 429
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 430
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->updateMeasureState(Landroid/graphics/Paint;Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    .line 431
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    return-object p1
.end method

.method private getMaxAttributeFontSize(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-gt p2, p3, :cond_2

    .line 3619
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v1

    .line 3620
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3621
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 3622
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v0

    goto :goto_1

    .line 3624
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    .line 3625
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v0

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private getRightLimitXPosition(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)F
    .locals 2

    .line 4196
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 4199
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 4197
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 4199
    :cond_0
    iget v0, v1, Landroid/graphics/RectF;->right:F

    .line 4200
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->indentIsSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4202
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getRightIndent()F

    move-result p1

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    :cond_1
    return v0
.end method

.method private getStrokesFontSize(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F
    .locals 1

    .line 4926
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4927
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getFontSize()F

    move-result p1

    return p1

    .line 4929
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result p1

    return p1
.end method

.method private getUnitHeightThatFitsOnVerticalWriting()F
    .locals 7

    .line 4783
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4785
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v3

    .line 4786
    iget-object v4, v3, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    .line 4787
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4789
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getRightIndent()F

    move-result v6

    .line 4790
    iget-boolean v3, v3, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    if-eqz v3, :cond_0

    .line 4791
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result v3

    goto :goto_1

    .line 4793
    :cond_0
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndentExcept1stLine()F

    move-result v3

    :goto_1
    add-float/2addr v6, v3

    .line 4794
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v3

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    .line 4796
    :cond_1
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4799
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v0, v0, Lcom/metamoji/cm/EdgeInsets;->top:F

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v2, v2, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 4802
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitMinMinWidth()F

    move-result v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method private getUnitMinMinWidth()F
    .locals 3

    .line 4659
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v0

    .line 4660
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->left:F

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v2, v2, Lcom/metamoji/cm/EdgeInsets;->right:F

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v2, "\uff37"

    .line 4661
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v1, v0

    return v1
.end method

.method private getUnitMinSize()Lcom/metamoji/cm/SizeF;
    .locals 9

    .line 4671
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    .line 4673
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4676
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidthThatFitsOnVerticalWriting()F

    move-result v0

    .line 4677
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeightThatFitsOnVerticalWriting()F

    move-result v1

    .line 4678
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v2

    .line 4683
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    .line 4685
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v2, v2, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    mul-float/2addr v2, v1

    .line 4688
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v3, v3, Lcom/metamoji/cm/EdgeInsets;->left:F

    .line 4689
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v3, v3, Lcom/metamoji/cm/EdgeInsets;->right:F

    .line 4694
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v3

    .line 4695
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gtz v4, :cond_1

    .line 4699
    iget-object v3, v3, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v3

    .line 4700
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 4702
    iget v4, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    goto :goto_1

    :cond_1
    move v7, v5

    move v1, v6

    :goto_0
    if-ge v7, v4, :cond_2

    .line 4709
    invoke-virtual {v3, v7}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfColumnAt(I)Landroid/graphics/RectF;

    move-result-object v8

    .line 4710
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    :cond_3
    :goto_1
    add-float/2addr v3, v2

    .line 4719
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v1

    :goto_2
    if-ge v5, v1, :cond_6

    .line 4721
    invoke-virtual {v0, v5}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 4722
    iget-object v4, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->width:F

    .line 4723
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 4725
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getRightIndent()F

    move-result v8

    .line 4726
    iget-boolean v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    if-eqz v2, :cond_4

    .line 4727
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result v2

    goto :goto_3

    .line 4729
    :cond_4
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndentExcept1stLine()F

    move-result v2

    :goto_3
    add-float/2addr v8, v2

    .line 4730
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v2

    mul-float/2addr v8, v2

    add-float/2addr v4, v8

    .line 4732
    :cond_5
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4735
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v0, v0, Lcom/metamoji/cm/EdgeInsets;->left:F

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->right:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v6, v0

    .line 4738
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitMinMinWidth()F

    move-result v0

    cmpg-float v1, v6, v0

    if-gez v1, :cond_7

    move v6, v0

    .line 4743
    :cond_7
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0, v6, v3}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method private getUnitWidthThatFitsOnVerticalWriting()F
    .locals 7

    .line 4748
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v0

    .line 4751
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->right:F

    mul-float/2addr v1, v0

    .line 4752
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getViewRectForLineTableMaking()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    .line 4757
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 4758
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 4762
    iget-object v1, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;

    move-result-object v1

    .line 4763
    iget v1, v1, Landroid/graphics/RectF;->left:F

    .line 4765
    iget v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    goto :goto_1

    :cond_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 4772
    invoke-virtual {v1, v5}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getRectOfColumnAt(I)Landroid/graphics/RectF;

    move-result-object v6

    .line 4773
    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 4776
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v3, v3, Lcom/metamoji/cm/EdgeInsets;->left:F

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    sub-float/2addr v2, v1

    return v2
.end method

.method private insertTextInternal(Ljava/lang/CharSequence;Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1147
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    if-nez p2, :cond_0

    .line 1152
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternalCore(Ljava/lang/CharSequence;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_0

    .line 1155
    :cond_0
    new-instance p2, Lcom/metamoji/un/text/model/TextModel$2;

    invoke-direct {p2, p0}, Lcom/metamoji/un/text/model/TextModel$2;-><init>(Lcom/metamoji/un/text/model/TextModel;)V

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->processNormalizedLine(Ljava/lang/CharSequence;Lcom/metamoji/cm/IAction1;)V

    .line 1161
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1165
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1169
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1172
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1173
    invoke-virtual {p0, p1, p1}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    const/4 p1, 0x1

    .line 1175
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 1169
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1170
    throw p1

    :cond_1
    return-void
.end method

.method private insertTextInternal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1140
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternal(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private isAlive()Z
    .locals 1

    .line 4508
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVisibleHotSpots()Z
    .locals 1

    .line 5697
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->isVisibleHotSpots()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeLineTableWithStrokes(Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;I)Lcom/metamoji/un/text/model/linetable/LineInfo;
    .locals 9

    .line 2930
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v0

    .line 2931
    invoke-virtual {p2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStrokeAttributes()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    .line 2932
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2933
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 2934
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 2935
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesBounds(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Landroid/graphics/RectF;

    move-result-object v4

    .line 2938
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->getCutOffHeight(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result v2

    .line 2949
    iget-boolean v3, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2952
    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_0

    .line 2950
    iget v3, v5, Landroid/graphics/PointF;->y:F

    iget v5, v4, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 2952
    :cond_0
    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v5, v4, Landroid/graphics/RectF;->right:F

    :goto_1
    add-float/2addr v3, v5

    .line 2953
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/metamoji/un/text/model/TextModel;->getRightLimitXPosition(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 2956
    iget-boolean v3, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    invoke-direct {p0, p1, p3, v1, v3}, Lcom/metamoji/un/text/model/TextModel;->procedureForNextLine(Lcom/metamoji/un/text/model/linetable/LineInfo;IIZ)I

    .line 2957
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 2961
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v3

    .line 2962
    iget-boolean v5, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v5, :cond_2

    .line 2963
    iget-object v5, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget v8, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 2964
    iget-object v3, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 2966
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 2969
    :cond_2
    iget-object v5, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 2970
    iget-object v3, v3, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v3, v5, v2}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 2972
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 2978
    :goto_2
    iget v3, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    .line 2979
    iput v2, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2989
    :cond_4
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p2, p3, v0}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    iput-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    return-object p1
.end method

.method private numberedListDataInitialize(I)V
    .locals 0

    return-void
.end method

.method private positionBackwardFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 0

    neg-int p2, p2

    .line 1520
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method private positionForwardFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 0

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method private positionNextLineFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    .line 1531
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    .line 1532
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    add-int/2addr v1, p2

    .line 1533
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result p2

    if-ge v1, p2, :cond_1

    .line 1534
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, p1, p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p1

    .line 1535
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 1537
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 1538
    iget-object p2, p2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1, p2, v0}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 1541
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 1542
    iget-object p2, p2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;FF)V

    .line 1544
    :goto_0
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-static {p1}, Lcom/metamoji/cm/RectUtils;->getOrigin(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getTextPositionOfPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    return-object p2

    .line 1546
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method private positionOneLinePrevFrom(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4587
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 4589
    new-instance p1, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p1, v0, v0}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    return-object p1

    .line 4591
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 4592
    iget-object p1, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    return-object p1
.end method

.method private positionPreviousLineFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    .line 1555
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    .line 1556
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    sub-int/2addr v1, p2

    if-ltz v1, :cond_1

    .line 1558
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, p1, p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p1

    .line 1559
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {p2, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p2

    if-eqz v0, :cond_0

    .line 1561
    iget v0, p1, Landroid/graphics/RectF;->top:F

    .line 1562
    iget-object p2, p2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p1, p2, v0}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 1565
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    .line 1566
    iget-object p2, p2, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;FF)V

    .line 1568
    :goto_0
    new-instance p2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-static {p1}, Lcom/metamoji/cm/RectUtils;->getOrigin(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getTextPositionOfPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    return-object p2

    .line 1570
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method private postProcessOneLineProcessed(Lcom/metamoji/un/text/model/linetable/LineInfo;)V
    .locals 9

    .line 4063
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 4065
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result v0

    .line 4066
    iget-boolean v3, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    if-nez v3, :cond_0

    .line 4067
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndentExcept1stLine()F

    move-result v0

    .line 4068
    :cond_0
    iget-boolean v3, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 4073
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    if-eqz v3, :cond_1

    .line 4069
    iget v3, v4, Landroid/graphics/RectF;->top:F

    .line 4070
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    goto :goto_0

    .line 4073
    :cond_1
    iget v3, v4, Landroid/graphics/RectF;->left:F

    .line 4074
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 4077
    :goto_0
    sget-object v5, Lcom/metamoji/un/text/model/TextModel$8;->$SwitchMap$com$metamoji$un$text$model$paragstyle$ParagraphStyle$Align:[I

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getAlign()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    move v0, v2

    move v4, v0

    goto :goto_4

    .line 4087
    :cond_2
    iget-boolean v5, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v5, :cond_3

    .line 4088
    iget-object v5, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_1

    .line 4090
    :cond_3
    iget-object v5, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    :goto_1
    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    .line 4091
    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v5

    goto :goto_3

    .line 4080
    :cond_4
    iget-boolean v5, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v5, :cond_5

    .line 4081
    iget-object v5, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_2

    .line 4083
    :cond_5
    iget-object v5, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v5, v5, Lcom/metamoji/cm/SizeF;->width:F

    :goto_2
    sub-float/2addr v4, v5

    .line 4084
    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v5

    :goto_3
    mul-float/2addr v0, v5

    sub-float v0, v4, v0

    goto :goto_4

    :cond_6
    move v0, v2

    move v3, v0

    move v4, v3

    :goto_4
    cmpl-float v5, v2, v4

    if-eqz v5, :cond_8

    .line 4100
    iget-boolean v5, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v5, :cond_7

    .line 4101
    iget-object v5, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    add-float/2addr v3, v4

    iput v3, v5, Landroid/graphics/PointF;->y:F

    goto :goto_5

    .line 4103
    :cond_7
    iget-object v5, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    add-float/2addr v3, v4

    iput v3, v5, Landroid/graphics/PointF;->x:F

    .line 4108
    :cond_8
    :goto_5
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_c

    .line 4111
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnInfo(I)Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v5

    .line 4112
    iget-boolean v6, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v6, :cond_a

    .line 4114
    iget-object v6, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v6, v7

    iget-object v7, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v6, v7

    .line 4115
    iget-object v7, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v8, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 4116
    iget-object v6, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-object v7, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v8, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v8, v8, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v1

    add-float/2addr v6, v7

    .line 4118
    :cond_9
    iget-object v7, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v5, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v0

    invoke-virtual {v7, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_8

    .line 4123
    :cond_a
    iget-object v6, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v6, v6, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v7, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_b

    .line 4124
    iget-object v6, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v6, v6, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v7, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v6, v7

    const v7, 0x3f6147ae    # 0.88f

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    goto :goto_7

    :cond_b
    move v6, v2

    .line 4126
    :goto_7
    iget-object v7, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v5, v5, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v0

    invoke-virtual {v7, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    return-void
.end method

.method private procedureForNextLine(Lcom/metamoji/un/text/model/linetable/LineInfo;IIZ)I
    .locals 6

    .line 3223
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v0, :cond_0

    .line 3224
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v1, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_0

    .line 3228
    :cond_0
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 3241
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 3242
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 3243
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iget v4, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 3244
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 3250
    :cond_1
    iget-object v0, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iget v4, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 3251
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 3256
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->addLineInfoToLast()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 3257
    iput-boolean p4, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 3263
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-nez v3, :cond_3

    .line 3265
    iget-object v3, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 3266
    iget v4, p1, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    goto :goto_3

    :cond_3
    const/4 v4, -0x1

    .line 3268
    :goto_3
    iput-object v3, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 3269
    iput v4, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    .line 3271
    iget-boolean v3, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 3280
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_4

    .line 3272
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 3275
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v3, p4}, Lcom/metamoji/un/text/model/TextModel;->adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F

    move-result p4

    iput p4, v3, Landroid/graphics/PointF;->y:F

    .line 3277
    iget-object p4, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v3, p4, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iget v5, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, p4, Landroid/graphics/PointF;->x:F

    goto :goto_4

    .line 3280
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v4, Landroid/graphics/PointF;->x:F

    .line 3283
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v3, p4}, Lcom/metamoji/un/text/model/TextModel;->adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F

    move-result p4

    iput p4, v3, Landroid/graphics/PointF;->x:F

    .line 3284
    iget-object p4, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v3, p4, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    iget v5, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    mul-float/2addr v5, v4

    div-float/2addr v5, v1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p4, Landroid/graphics/PointF;->y:F

    .line 3286
    :goto_4
    iget-object p4, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {p4, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3287
    iget-boolean p4, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    const/4 v1, 0x0

    if-eqz p4, :cond_5

    .line 3288
    iget-object p4, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v3

    invoke-virtual {p4, v3, v1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_5

    .line 3290
    :cond_5
    iget-object p4, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v3

    invoke-virtual {p4, v1, v3}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 3292
    :goto_5
    new-instance p4, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p4, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 3293
    invoke-virtual {p0, p4}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 3296
    iget v3, p4, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v3, :cond_6

    iget v3, p4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-lez v3, :cond_6

    .line 3297
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget p4, p4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {v2, p4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_8

    .line 3298
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 3300
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {v2, p4}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object p4

    .line 3301
    invoke-virtual {p4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3302
    iget-boolean v2, p0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v2, :cond_7

    .line 3303
    iget-object v2, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p4

    invoke-virtual {v2, p4, v1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_6

    .line 3305
    :cond_7
    iget-object v2, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p4}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result p4

    invoke-virtual {v2, v1, p4}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 3310
    :cond_8
    :goto_6
    new-instance p4, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {p4, p2, p3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    iput-object p4, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    .line 3311
    iput v1, p0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 3315
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->postProcessOneLineProcessed(Lcom/metamoji/un/text/model/linetable/LineInfo;)V

    const/4 p1, 0x0

    return p1
.end method

.method private processNormalizedLine(Ljava/lang/CharSequence;Lcom/metamoji/cm/IAction1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/metamoji/cm/IAction1<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 928
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 930
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v1

    new-instance v2, Lcom/metamoji/cm/Range;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-direct {v2, v0, v3}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;Lcom/metamoji/cm/Range;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 934
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 936
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 938
    :goto_1
    const-string v2, "[\\x00-\\x1f\\x80-\\x9f]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 939
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 940
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ltz v1, :cond_2

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    .line 944
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_2
    move v0, v1

    goto :goto_0

    .line 951
    :cond_2
    invoke-interface {p2, v0}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;",
            "Lcom/metamoji/cm/Range;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;",
            "Lcom/metamoji/cm/IAction1<",
            "Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;",
            ">;)V"
        }
    .end annotation

    .line 5512
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5516
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5517
    iget v1, p2, Lcom/metamoji/cm/Range;->location:I

    :goto_0
    iget v2, p2, Lcom/metamoji/cm/Range;->location:I

    iget v3, p2, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 5518
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5519
    iget v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    if-ltz v3, :cond_0

    .line 5520
    iget v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5524
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2, v1, p3}, Lcom/metamoji/un/text/model/undo/TextUndoDataCreator;->createOverwriteParagraphStyles(Lcom/metamoji/un/text/model/StringWithStrokesArray;Ljava/util/List;Ljava/util/EnumSet;)Ljava/util/Map;

    move-result-object p2

    .line 5525
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->addUndoData(Ljava/util/Map;)V

    .line 5527
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5528
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 5529
    new-instance v1, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    if-eqz p1, :cond_2

    .line 5531
    invoke-virtual {v1, p1, p3}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->overwriteOtherStyles(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 5533
    invoke-interface {p4, v1}, Lcom/metamoji/cm/IAction1;->perform(Ljava/lang/Object;)V

    .line 5534
    :cond_3
    :goto_2
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 p1, 0x1

    .line 5538
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5542
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5543
    throw p1
.end method

.method private reduceInkInStrokes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    .line 5666
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemInkSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemInkSettings;

    .line 5667
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 5668
    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    .line 5669
    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getCountOfPoints()I

    move-result v3

    .line 5670
    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPenInfo()Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5672
    invoke-interface {v4}, Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;->getInkID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5674
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 5676
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->reduceQuantity(ILjava/lang/String;)F

    .line 5682
    :cond_2
    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->clearPenInfo()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private remakeEachLineTable(Lcom/metamoji/un/text/model/TextPosition;Landroid/graphics/RectF;Ljava/util/List;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextPosition;",
            "Landroid/graphics/RectF;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)",
            "Lcom/metamoji/un/text/model/TextPosition;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2262
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2263
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->setViewRectForLineTableMaking(Landroid/graphics/RectF;)V

    .line 2264
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2265
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iput-boolean v1, v2, Lcom/metamoji/un/text/model/linetable/LineTable;->verticalWriting:Z

    .line 2266
    iget-boolean v1, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2270
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_0

    .line 2267
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 2270
    :cond_0
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    invoke-static {v1}, Lcom/metamoji/cm/RectUtils;->getOrigin(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :goto_0
    const/4 v7, 0x0

    .line 2272
    iput-object v7, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    .line 2274
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->_numberedListDataStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2300
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v1

    .line 2301
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    new-instance v3, Lcom/metamoji/cm/Range;

    const/4 v8, 0x0

    invoke-direct {v3, v8, v1}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->removeLineInRange(Lcom/metamoji/cm/Range;)V

    .line 2322
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->addLineInfoToLast()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 2323
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2324
    iget-boolean v2, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 2325
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v3

    invoke-virtual {v2, v3, v9}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_1

    .line 2327
    :cond_1
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v3

    invoke-virtual {v2, v9, v3}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 2329
    :goto_1
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v2, v8, v8}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    iput-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v10, 0x1

    .line 2332
    iput-boolean v10, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    .line 2335
    iput v9, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 2338
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    move v11, v2

    :goto_2
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_34

    .line 2340
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2, v11}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v4

    move-object/from16 v14, p3

    .line 2341
    invoke-static {v14, v11}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->extractHotSpots(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setHotSpotRanges(Ljava/util/List;)V

    .line 2343
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->clearLineRefArray()V

    .line 2344
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    if-nez v2, :cond_4

    .line 2347
    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextModel;->get2ndLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2349
    iget-boolean v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->endOfParagraph:Z

    if-eqz v3, :cond_2

    goto :goto_3

    .line 2354
    :cond_2
    iget-object v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    iput-object v3, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2355
    iget v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    iput v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    goto :goto_4

    .line 2350
    :cond_3
    :goto_3
    iput-object v4, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2351
    iput v11, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    .line 2361
    :cond_4
    :goto_4
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    if-ne v2, v11, :cond_7

    .line 2363
    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextModel;->get2ndLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2364
    iget-boolean v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->endOfParagraph:Z

    goto :goto_5

    :cond_5
    move v2, v10

    .line 2365
    :goto_5
    iput-boolean v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    .line 2366
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2369
    iget-object v5, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_6

    .line 2367
    invoke-direct {v0, v1, v5, v2}, Lcom/metamoji/un/text/model/TextModel;->adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->y:F

    goto :goto_6

    .line 2369
    :cond_6
    invoke-direct {v0, v1, v5, v2}, Lcom/metamoji/un/text/model/TextModel;->adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F

    move-result v2

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 2372
    :cond_7
    :goto_6
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v2

    if-nez v2, :cond_33

    .line 2376
    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2378
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_20

    .line 2390
    :cond_8
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v16, v7

    move v5, v8

    .line 2411
    :goto_7
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2414
    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_9

    .line 2412
    iget v3, v6, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_c

    goto :goto_8

    .line 2414
    :cond_9
    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->viewRectForLineTableMaking:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_c

    .line 2417
    :goto_8
    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextModel;->get2ndLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 2420
    iget-boolean v3, v3, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    goto :goto_9

    :cond_a
    move v3, v10

    .line 2421
    :goto_9
    iget-boolean v6, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2424
    iget-object v12, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v6, :cond_b

    .line 2422
    invoke-direct {v0, v1, v12, v3}, Lcom/metamoji/un/text/model/TextModel;->adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F

    move-result v3

    iput v3, v12, Landroid/graphics/PointF;->y:F

    goto :goto_a

    .line 2424
    :cond_b
    invoke-direct {v0, v1, v12, v3}, Lcom/metamoji/un/text/model/TextModel;->adjustForLeftIndent(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Z)F

    move-result v3

    iput v3, v12, Landroid/graphics/PointF;->x:F

    goto :goto_a

    :cond_c
    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2431
    :goto_a
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v13, v12, :cond_d

    .line 2436
    invoke-interface {v2, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_b

    :cond_d
    move v3, v8

    .line 2453
    :goto_b
    iget-boolean v6, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2456
    iget-object v7, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v6, :cond_e

    .line 2454
    iget v6, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_f

    goto :goto_c

    .line 2456
    :cond_e
    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_f

    :goto_c
    move v6, v10

    goto :goto_d

    :cond_f
    move v6, v8

    :goto_d
    move-object v7, v1

    move-object v1, v2

    .line 2458
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    .line 2460
    invoke-virtual {v7}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/metamoji/un/text/model/TextModel;->getRightLimitXPosition(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)F

    move-result v9

    move/from16 v25, v9

    move v9, v3

    move/from16 v3, v25

    .line 2458
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/text/model/TextModel;->getFitColumnWidth(Ljava/lang/CharSequence;Landroid/graphics/PointF;FLcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;IZ)I

    move-result v2

    move-object v6, v1

    .line 2465
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_10

    .line 2466
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v1

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v2, v2, 0x1

    :cond_10
    move v1, v2

    .line 2472
    invoke-interface {v6, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2484
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v3

    if-lez v1, :cond_1f

    if-eq v13, v3, :cond_12

    add-int v3, v5, v1

    add-int/lit8 v3, v3, -0x2

    if-le v1, v10, :cond_11

    .line 2504
    invoke-direct {v0, v4, v5, v3}, Lcom/metamoji/un/text/model/TextModel;->createTextLine(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v3

    move/from16 v19, v8

    goto :goto_f

    :cond_11
    move/from16 v19, v10

    goto :goto_e

    :cond_12
    move/from16 v19, v8

    :goto_e
    const/4 v3, 0x0

    :goto_f
    if-nez v19, :cond_18

    add-int v16, v5, v1

    add-int/lit8 v13, v16, -0x1

    .line 2519
    invoke-direct {v0, v4, v5, v13}, Lcom/metamoji/un/text/model/TextModel;->createTextLine(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v10

    const/4 v8, 0x0

    .line 2522
    invoke-static {v15, v8, v8}, Lcom/metamoji/cm/RectUtils;->setOrigin(Landroid/graphics/RectF;FF)V

    .line 2545
    iget-object v8, v0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    if-nez v3, :cond_15

    .line 2525
    iget-object v3, v0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v4, v10, v8, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getImageSize(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    invoke-static {v15, v3}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;Lcom/metamoji/cm/SizeF;)V

    .line 2526
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v3, :cond_13

    .line 2528
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-static {v15, v3, v8}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;FF)V

    .line 2531
    :cond_13
    new-instance v3, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v3, v11, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v4, v10, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendLineRef(Lcom/metamoji/un/text/model/TextLine;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2534
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v3, :cond_14

    .line 2535
    invoke-direct {v0, v4, v5, v13}, Lcom/metamoji/un/text/model/TextModel;->getMaxAttributeFontSize(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)F

    move-result v3

    invoke-static {v15, v3}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    goto :goto_10

    .line 2537
    :cond_14
    invoke-direct {v0, v4, v5, v13}, Lcom/metamoji/un/text/model/TextModel;->getMaxAttributeFontSize(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)F

    move-result v3

    invoke-static {v15, v3}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    goto :goto_10

    .line 2545
    :cond_15
    iget-object v13, v0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v4, v3, v8, v13}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getImageSize(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)Lcom/metamoji/cm/SizeF;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;Lcom/metamoji/cm/SizeF;)V

    .line 2546
    iget-boolean v8, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v8, :cond_16

    .line 2548
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-static {v15, v8, v13}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;FF)V

    .line 2551
    :cond_16
    new-instance v8, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v8, v11, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v4, v3, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendLineRef(Lcom/metamoji/un/text/model/TextLine;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2555
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v3, :cond_17

    add-int/lit8 v3, v16, -0x2

    .line 2556
    invoke-direct {v0, v4, v5, v3}, Lcom/metamoji/un/text/model/TextModel;->getMaxAttributeFontSize(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)F

    move-result v3

    invoke-static {v15, v3}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    goto :goto_10

    :cond_17
    add-int/lit8 v3, v16, -0x2

    .line 2558
    invoke-direct {v0, v4, v5, v3}, Lcom/metamoji/un/text/model/TextModel;->getMaxAttributeFontSize(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)F

    move-result v3

    invoke-static {v15, v3}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    :goto_10
    move-object v3, v10

    const/4 v10, 0x0

    goto :goto_12

    .line 2574
    :cond_18
    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringAttributesAtIndex(I)Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    .line 2575
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontHeight()F

    move-result v8

    .line 2576
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->isUseFontSize()Z

    move-result v10

    if-eqz v10, :cond_19

    .line 2577
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontSize()F

    move-result v8

    .line 2578
    :cond_19
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v3, :cond_1a

    const/4 v10, 0x0

    .line 2579
    invoke-virtual {v15, v10, v10, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_11

    :cond_1a
    const/4 v10, 0x0

    .line 2581
    invoke-virtual {v15, v10, v10, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2582
    :goto_11
    iget v3, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1b

    .line 2583
    iput v8, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 2589
    :cond_1b
    new-instance v3, Lcom/metamoji/un/text/model/TextLine;

    iget-boolean v8, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    invoke-direct {v3, v8}, Lcom/metamoji/un/text/model/TextLine;-><init>(Z)V

    new-instance v8, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v8, v11, v5}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v4, v3, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendLineRef(Lcom/metamoji/un/text/model/TextLine;Lcom/metamoji/un/text/model/TextPosition;)V

    move-object/from16 v3, v16

    :goto_12
    add-int v8, v5, v1

    move-object v5, v4

    move-object v4, v2

    .line 2594
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    move-object/from16 v25, v7

    move v7, v1

    move-object/from16 v1, v25

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/text/model/TextModel;->constructColumnTable(Lcom/metamoji/un/text/model/linetable/LineInfo;Landroid/graphics/PointF;Lcom/metamoji/un/text/model/TextLine;Ljava/lang/CharSequence;Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V

    move-object v4, v5

    .line 2599
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v6, v7, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2602
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2608
    iget-object v5, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v3, :cond_1c

    .line 2604
    iget v3, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v3, v6

    iput v3, v5, Landroid/graphics/PointF;->y:F

    goto :goto_13

    .line 2608
    :cond_1c
    iget v3, v5, Landroid/graphics/PointF;->x:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v3, v6

    iput v3, v5, Landroid/graphics/PointF;->x:F

    .line 2615
    :goto_13
    iget-boolean v3, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v3, :cond_1d

    .line 2616
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v3

    goto :goto_14

    .line 2618
    :cond_1d
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 2619
    :goto_14
    iget v5, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_1e

    .line 2620
    iput v3, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    :cond_1e
    move v5, v8

    const/16 v16, 0x0

    goto :goto_15

    :cond_1f
    move-object v10, v7

    move v7, v1

    move-object v1, v10

    const/4 v10, 0x0

    move-object v2, v6

    :goto_15
    if-eqz v7, :cond_24

    .line 2628
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_24

    if-ltz v12, :cond_20

    add-int/lit8 v3, v12, 0x1

    if-ne v3, v7, :cond_20

    goto :goto_17

    .line 2794
    :cond_20
    iget-boolean v2, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2800
    iget v3, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    if-eqz v2, :cond_22

    float-to-double v2, v3

    cmpg-double v2, v2, v17

    if-gez v2, :cond_21

    .line 2796
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    iput v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 2797
    :cond_21
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_16

    :cond_22
    float-to-double v2, v3

    cmpg-double v2, v2, v17

    if-gez v2, :cond_23

    .line 2801
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iput v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 2802
    :cond_23
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v5, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/cm/SizeF;->set(FF)V

    :goto_16
    const/4 v13, 0x0

    goto/16 :goto_1f

    .line 2632
    :cond_24
    :goto_17
    iget-object v3, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    if-eqz v3, :cond_25

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget v3, v3, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v6, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v3

    goto :goto_18

    :cond_25
    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_26

    .line 2635
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRefCount()I

    move-result v6

    if-lez v6, :cond_26

    add-int/lit8 v6, v6, -0x1

    .line 2637
    invoke-virtual {v3, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRefTextPosition(I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v6

    .line 2638
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getMaxIndex()I

    move-result v8

    .line 2639
    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int v6, v8, v6

    goto :goto_19

    :cond_26
    const/4 v6, 0x0

    :goto_19
    if-nez v7, :cond_2c

    .line 2645
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_2c

    .line 2646
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->kinsokuAtBeginCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v8

    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    if-nez v5, :cond_2c

    iget-object v8, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    if-eqz v8, :cond_2c

    const/4 v8, 0x1

    if-le v6, v8, :cond_2c

    .line 2651
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 2654
    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v8, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v8, v8, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    const/4 v13, 0x0

    invoke-direct {v0, v1, v6, v8, v13}, Lcom/metamoji/un/text/model/TextModel;->procedureForNextLine(Lcom/metamoji/un/text/model/linetable/LineInfo;IIZ)I

    .line 2659
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v1

    .line 2660
    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 2661
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributes()Ljava/util/List;

    move-result-object v3

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 2662
    invoke-virtual {v0, v1, v3}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesBounds(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Landroid/graphics/RectF;

    move-result-object v6

    .line 2665
    invoke-virtual {v0, v1, v3}, Lcom/metamoji/un/text/model/TextModel;->getCutOffHeight(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result v1

    .line 2673
    iget-object v3, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v3

    .line 2675
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v8

    .line 2676
    iget-boolean v10, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    if-eqz v10, :cond_27

    .line 2677
    iget-object v10, v8, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v13, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v22, v2

    iget v2, v6, Landroid/graphics/RectF;->left:F

    add-float v2, v22, v2

    invoke-virtual {v10, v13, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 2678
    iget-object v2, v8, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v2, v1, v8}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 2680
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v8, v2, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v6

    iput v8, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1a

    :cond_27
    move-object/from16 v21, v2

    .line 2683
    iget-object v2, v8, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v13, v6, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v13

    iget-object v13, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v10, v13}, Landroid/graphics/PointF;->set(FF)V

    .line 2684
    iget-object v2, v8, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v2, v8, v1}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 2686
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v8, v2, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v6

    iput v8, v2, Landroid/graphics/PointF;->x:F

    .line 2695
    :goto_1a
    iget v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_28

    .line 2696
    iput v1, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    :cond_28
    move-object v1, v3

    move/from16 v23, v12

    :goto_1b
    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_29
    move-object/from16 v21, v2

    .line 2714
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRefCount()I

    move-result v2

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRefTextPosition(I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 2715
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getMaxIndex()I

    move-result v6

    .line 2716
    new-instance v8, Lcom/metamoji/cm/Range;

    iget v10, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    sub-int/2addr v6, v2

    invoke-direct {v8, v10, v6}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 2717
    iget v2, v8, Lcom/metamoji/cm/Range;->length:I

    if-eqz v2, :cond_2d

    .line 2719
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v6, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v6, v6, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    const/4 v13, 0x0

    invoke-direct {v0, v1, v2, v6, v13}, Lcom/metamoji/un/text/model/TextModel;->procedureForNextLine(Lcom/metamoji/un/text/model/linetable/LineInfo;IIZ)I

    .line 2725
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    .line 2726
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v1

    .line 2727
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->removeLastColumnInfo()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v1

    .line 2730
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 2731
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->addColumnInfoToLast()Lcom/metamoji/un/text/model/linetable/ColumnInfo;

    move-result-object v6

    .line 2732
    iget-object v8, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->origin:Landroid/graphics/PointF;

    iget-object v10, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    invoke-virtual {v8, v10}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2733
    iget-object v8, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget-object v10, v1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v8, v10}, Lcom/metamoji/cm/SizeF;->set(Lcom/metamoji/cm/SizeF;)V

    .line 2744
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRefCount()I

    move-result v8

    const/16 v20, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLineRef(I)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v8

    .line 2745
    iget-object v10, v8, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    iget-object v13, v8, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/cm/Range;

    .line 2747
    new-instance v13, Lcom/metamoji/un/text/model/TextLine;

    move-object/from16 v22, v2

    iget-boolean v2, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    invoke-direct {v13, v2}, Lcom/metamoji/un/text/model/TextLine;-><init>(Z)V

    .line 2748
    iget v1, v1, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->unitNum:I

    .line 2749
    iget-object v2, v13, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    move/from16 v23, v12

    new-instance v12, Lcom/metamoji/cm/Range;

    iget v14, v10, Lcom/metamoji/cm/Range;->location:I

    move/from16 v24, v14

    iget v14, v10, Lcom/metamoji/cm/Range;->length:I

    add-int v14, v24, v14

    sub-int/2addr v14, v1

    invoke-direct {v12, v14, v1}, Lcom/metamoji/cm/Range;-><init>(II)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2750
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    iget-object v12, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    iget v12, v12, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget v14, v10, Lcom/metamoji/cm/Range;->location:I

    move/from16 v24, v1

    iget v1, v10, Lcom/metamoji/cm/Range;->length:I

    add-int/2addr v14, v1

    sub-int v14, v14, v24

    invoke-direct {v2, v12, v14}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    invoke-virtual {v3, v13, v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->appendLineRef(Lcom/metamoji/un/text/model/TextLine;Lcom/metamoji/un/text/model/TextPosition;)V

    .line 2752
    iget v1, v10, Lcom/metamoji/cm/Range;->length:I

    sub-int v1, v1, v24

    iput v1, v10, Lcom/metamoji/cm/Range;->length:I

    .line 2753
    iget v1, v10, Lcom/metamoji/cm/Range;->length:I

    if-nez v1, :cond_2a

    .line 2755
    iget-object v1, v8, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    iget-object v2, v8, Lcom/metamoji/un/text/model/TextLine;->runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2758
    :cond_2a
    iget-boolean v1, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2761
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    if-eqz v1, :cond_2b

    .line 2759
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1c

    .line 2761
    :cond_2b
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v6, Lcom/metamoji/un/text/model/linetable/ColumnInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->x:F

    :goto_1c
    move-object/from16 v1, v22

    goto/16 :goto_1b

    :cond_2c
    move-object/from16 v21, v2

    :cond_2d
    move/from16 v23, v12

    const/4 v2, 0x0

    :goto_1d
    if-nez v2, :cond_2f

    if-ltz v23, :cond_2e

    add-int/lit8 v12, v23, 0x1

    if-ne v12, v7, :cond_2e

    const/4 v2, 0x1

    goto :goto_1e

    :cond_2e
    const/4 v2, 0x0

    .line 2769
    :goto_1e
    invoke-direct {v0, v1, v11, v5, v2}, Lcom/metamoji/un/text/model/TextModel;->procedureForNextLine(Lcom/metamoji/un/text/model/linetable/LineInfo;IIZ)I

    .line 2776
    :cond_2f
    iget-object v1, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    if-ltz v23, :cond_31

    add-int/lit8 v12, v23, 0x1

    if-ne v12, v7, :cond_31

    .line 2781
    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextModel;->get2ndLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    const/4 v8, 0x1

    .line 2782
    iput-boolean v8, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->endIsNewLineChar:Z

    .line 2784
    sget-object v3, Lcom/metamoji/un/text/model/TextModel;->lineSeparatorCharSet:Lcom/metamoji/cm/CharacterSet;

    invoke-virtual {v3, v9}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v3

    if-nez v3, :cond_30

    .line 2785
    iput-boolean v8, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->endOfParagraph:Z

    .line 2786
    :cond_30
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    add-int/lit8 v3, v11, 0x1

    const/4 v13, 0x0

    invoke-direct {v2, v3, v13}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    iput-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->position:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v2, 0x0

    .line 2787
    iput-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    const/4 v2, -0x1

    .line 2788
    iput v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    .line 2811
    :goto_1f
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    const/16 v20, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v11, v3}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    iput-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_21

    :cond_31
    const/4 v13, 0x0

    move-object/from16 v14, p3

    move v8, v13

    move-object/from16 v2, v21

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_7

    :cond_32
    :goto_20
    move v13, v8

    goto :goto_21

    :cond_33
    move v13, v8

    .line 2816
    invoke-direct {v0, v1, v4, v11}, Lcom/metamoji/un/text/model/TextModel;->makeLineTableWithStrokes(Lcom/metamoji/un/text/model/linetable/LineInfo;Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v1

    :goto_21
    add-int/lit8 v11, v11, 0x1

    move v8, v13

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_34
    const-wide v17, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 2822
    iget-boolean v2, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    .line 2828
    iget v3, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    if-eqz v2, :cond_36

    float-to-double v2, v3

    cmpg-double v2, v2, v17

    if-gez v2, :cond_35

    .line 2824
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    iput v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 2825
    :cond_35
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    iget-object v4, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/cm/SizeF;->set(FF)V

    goto :goto_22

    :cond_36
    float-to-double v2, v3

    cmpg-double v2, v2, v17

    if-gez v2, :cond_37

    .line 2829
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    iput v2, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    .line 2830
    :cond_37
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget-object v3, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 2840
    :goto_22
    iget-boolean v2, v0, Lcom/metamoji/un/text/model/TextModel;->verticalWritingOnRLT:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_38

    .line 2841
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 2842
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iget v6, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 2843
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto :goto_23

    .line 2846
    :cond_38
    iget-object v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v5, v0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iget v6, v0, Lcom/metamoji/un/text/model/TextModel;->maxLineHeight:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 2847
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->ltMakingCurrentPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 2855
    :goto_23
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v2

    if-nez v2, :cond_39

    .line 2857
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_39

    .line 2859
    iget-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v2

    .line 2860
    iget-object v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    iput-object v3, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2861
    iget v3, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    iput v3, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    .line 2862
    iget-boolean v2, v2, Lcom/metamoji/un/text/model/linetable/LineInfo;->endOfParagraph:Z

    iput-boolean v2, v1, Lcom/metamoji/un/text/model/linetable/LineInfo;->paragraphTop:Z

    .line 2868
    :cond_39
    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/TextModel;->postProcessOneLineProcessed(Lcom/metamoji/un/text/model/linetable/LineInfo;)V

    .line 2895
    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextModel;->validateSelectedRange()V

    const/4 v2, 0x0

    .line 2910
    iput-object v2, v0, Lcom/metamoji/un/text/model/TextModel;->previousPosition:Lcom/metamoji/un/text/model/TextPosition;

    .line 2914
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/text/model/TextModel;->positionOneLinePrevFrom(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    return-object v1
.end method

.method private serializeTextUnitStyle(Lcom/metamoji/cm/DataArchiver;)I
    .locals 6

    .line 444
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 451
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeString(Ljava/lang/String;)I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->isUseColor()Z

    move-result v1

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 455
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    add-int/2addr v0, v1

    .line 457
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->top:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 458
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->left:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 460
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v1, v1, Lcom/metamoji/cm/EdgeInsets;->right:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 462
    iget v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 465
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/RuledLineStyle;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    iget-boolean v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toInt16(Z)S

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    move-result v1

    add-int/2addr v0, v1

    .line 480
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 482
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 484
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 490
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v1

    .line 493
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readString()Ljava/lang/String;

    move-result-object v2

    .line 494
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    .line 503
    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    .line 505
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v2

    invoke-static {v2}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v2

    .line 506
    new-instance v3, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {v3, p1}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(Lcom/metamoji/cm/DataArchiver;)V

    .line 510
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 508
    invoke-virtual {v4, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {v4, v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setUseColor(Z)V

    .line 513
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/EdgeInsets;->top:F

    .line 514
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/EdgeInsets;->left:F

    .line 515
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    .line 516
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/EdgeInsets;->right:F

    .line 518
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    .line 520
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/model/RuledLineStyle;->valueOf(I)Lcom/metamoji/un/text/model/RuledLineStyle;

    move-result-object v2

    .line 521
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eq v3, v2, :cond_2

    .line 522
    iput-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 525
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;->valueOf(I)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 527
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v2

    invoke-static {v2}, Lcom/metamoji/cm/TypeUtils;->toBool(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    .line 529
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    add-int/2addr v1, v0

    .line 532
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v5
.end method

.method private setHotSpotLocations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/hotspot/HotSpotLocation;",
            ">;)V"
        }
    .end annotation

    .line 5693
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v0, :cond_0

    .line 5694
    invoke-interface {v0, p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setHotSpotLocations(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private setListPrefixSnapshot(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;I)V
    .locals 1

    .line 3178
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_listPrefixSnapshot:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static setUnitNoDropShadowToModel(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5954
    :cond_0
    const-string v0, "no.dropshadow"

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setUnitNotDelWhenEmptyToModel(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5966
    :cond_0
    const-string v0, "not.del.when.empty"

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method private timerFireMethodForDelayLTMaintain(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 4607
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

    .line 4608
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 4609
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    .line 4610
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    .line 4613
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-boolean v0, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    if-eqz v0, :cond_0

    .line 4615
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    .line 4616
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/text/model/TextModel;->remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    :cond_0
    return-void
.end method

.method private updateDefaultTextPaint()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 353
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 354
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    .line 352
    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->createTextPaint(Ljava/lang/String;F)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    .line 355
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private validateSelectedRange()V
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1743
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyModel(Lcom/metamoji/un/text/model/TextModel;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 5709
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5714
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v0, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    .line 5715
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    .line 5717
    iget-object v1, p1, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    .line 5718
    iget v1, p1, Lcom/metamoji/un/text/model/TextModel;->defaultFontHeight:F

    iput v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultFontHeight:F

    .line 5719
    new-instance v1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 5720
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->updateDefaultTextPaint()V

    .line 5721
    iget-object v1, p1, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 5722
    new-instance v1, Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v3, p1, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-direct {v1, v3}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(Lcom/metamoji/un/text/model/ColorComponent;)V

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    .line 5723
    iget-object v1, p1, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->getIntValue()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/un/text/model/UnitBorderStyle;->valueOf(I)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 5724
    iget-boolean v1, p1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    iput-boolean v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    .line 5725
    iget v1, p1, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iput v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    .line 5727
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_1

    .line 5728
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    .line 5729
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->setVerticalWriting(Z)V

    .line 5733
    :cond_1
    const-string v1, "no.dropshadow"

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/TextModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5734
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getUnitNoDropShadow()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->setUnitNoDropShadow(Z)V

    .line 5737
    :cond_2
    const-string v1, "not.del.when.empty"

    invoke-virtual {p1, v1}, Lcom/metamoji/un/text/model/TextModel;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5739
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextModel;->getUnitNotDelWhenEmpty()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->setUnitNotDelWhenEmpty(Z)V

    .line 5743
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeAllStringWss()V

    .line 5745
    iget-object v1, p1, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    .line 5747
    iget-object v5, p1, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5749
    iget-object v6, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    new-instance v7, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v7, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5754
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iput-object v0, p1, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    .line 5757
    invoke-virtual {p0, v3}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 5759
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5763
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5764
    throw p1
.end method

.method public applyParagraphAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V
    .locals 2

    .line 843
    new-instance v0, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>()V

    .line 844
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAlign(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$Align;)V

    .line 846
    sget-object p1, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->Align:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/un/text/model/TextModel;->putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public applyTextStyle(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 856
    invoke-virtual {p0, p1, v0, p2}, Lcom/metamoji/un/text/model/TextModel;->putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V

    return-void
.end method

.method public beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 1585
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->readyContent()Z

    .line 1586
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->beginningOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    return-object v0
.end method

.method public caretRectInWholeViewForPosition(Lcom/metamoji/un/text/model/TextPosition;)Landroid/graphics/RectF;
    .locals 2

    .line 1826
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getRectOfTextPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/ITextInput;)Landroid/graphics/RectF;

    move-result-object p1

    .line 1836
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 1837
    invoke-static {p1, v1}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    return-object p1

    .line 1839
    :cond_0
    invoke-static {p1, v1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    return-object p1
.end method

.method public characterRangeAtPosition(Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;
    .locals 6

    .line 1645
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1646
    iget v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1647
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1649
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasString()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->hasStrokes()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 1651
    new-instance p1, Lcom/metamoji/un/text/model/TextRange;

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {p1, v0}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    return-object p1

    .line 1653
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 1654
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1655
    iput v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1657
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 1658
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1659
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    goto/16 :goto_5

    .line 1664
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->whitespaceCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1665
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v1, :cond_5

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_5
    move v3, v1

    :goto_0
    if-nez v3, :cond_6

    goto :goto_1

    .line 1678
    :cond_6
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1686
    :cond_7
    :goto_1
    iput v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1688
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_b

    .line 1691
    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 1693
    :cond_8
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->lineBreakCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v4

    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    .line 1696
    :cond_9
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v4

    invoke-virtual {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->characterAtIndex(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1701
    :cond_b
    :goto_3
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-ne v3, v1, :cond_e

    .line 1702
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLength()I

    move-result v3

    if-ge v1, v3, :cond_d

    add-int/lit8 v3, v1, 0x1

    .line 1705
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_c
    move v1, v3

    goto :goto_4

    .line 1708
    :cond_d
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-lez v3, :cond_e

    .line 1709
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1711
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isFollowigCodeAtIndex(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1712
    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1716
    :cond_e
    :goto_4
    new-instance v2, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 1717
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1730
    :goto_5
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;

    move-result-object v1

    invoke-static {v0, p1, v2, p0, v1}, Lcom/metamoji/un/text/model/TextSelectUtil;->expandSelectRangeTextKind(Lcom/metamoji/un/text/model/StringWithStrokesArray;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/linetable/LineTable;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    return-object p1
.end method

.method public clearParagraphMarkOfLine(I)Z
    .locals 2

    .line 5910
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5911
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearParagraphTable()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphTable:Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    return-void
.end method

.method public closestPositionToPoint(Landroid/graphics/PointF;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getTextPositionOfPosition(Landroid/graphics/PointF;Lcom/metamoji/un/text/model/ITextInput;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public cut()V
    .locals 2

    .line 5574
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "cut"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    .line 5576
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore()V

    .line 5577
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v0, 0x1

    .line 5579
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 5581
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void
.end method

.method public deleteBackward()V
    .locals 2

    .line 1049
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextPosition;->isFirstPosition()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1051
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "deleteBackward"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 1058
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore()V

    .line 1061
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    const/4 v0, 0x1

    .line 1068
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 1069
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void

    :catchall_0
    move-exception v0

    .line 1065
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1066
    throw v0
.end method

.method public deleteForward()V
    .locals 3

    .line 1074
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1076
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v2, "deleteForward"

    invoke-interface {v0, v2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    const/4 v0, 0x0

    .line 1087
    :try_start_0
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore(Z)V

    .line 1090
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1097
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 1098
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void

    :catchall_0
    move-exception v0

    .line 1094
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1095
    throw v0
.end method

.method public deleteSurroundingText(II)V
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    neg-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1105
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1107
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v2, "deleteSurrounding"

    invoke-interface {v0, v2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    .line 1111
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    .line 1112
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 1116
    :try_start_0
    invoke-direct {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore(Z)V

    .line 1119
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    const/4 p1, 0x1

    .line 1126
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 1127
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void

    :catchall_0
    move-exception p1

    .line 1123
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1124
    throw p1
.end method

.method public demoteParagraphListLevel()V
    .locals 3

    .line 5551
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/model/TextModel$6;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/model/TextModel$6;-><init>(Lcom/metamoji/un/text/model/TextModel;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public endOfDocument()Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 1599
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->readyContent()Z

    .line 1600
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    return-object v0
.end method

.method public expandOrReduceFontSizeCore(FLjava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 5319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5321
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5323
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/TextRange;

    .line 5324
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    new-instance v3, Lcom/metamoji/un/text/model/TextModel$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel$5;-><init>(Lcom/metamoji/un/text/model/TextModel;FLjava/util/List;)V

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->forEachStringWsInRange(Lcom/metamoji/un/text/model/TextRange;Lcom/metamoji/cm/IAction3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5364
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5365
    throw p1
.end method

.method public formatSubstring(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1, p2, p0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;ZLcom/metamoji/un/text/model/TextModel;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public freeUpMemory()V
    .locals 1

    .line 680
    iget v0, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    if-nez v0, :cond_0

    .line 681
    invoke-super {p0}, Lcom/metamoji/df/model/Model;->freeUpMemory()V

    :cond_0
    return-void
.end method

.method public getAttributeForInsertTextOrStroke()Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 1

    const/4 v0, 0x1

    .line 1298
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->getAttributeForInsertTextOrStroke(Z)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeForInsertTextOrStroke(Z)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 5

    .line 1302
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    .line 1326
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    const/4 v2, -0x1

    if-nez v0, :cond_4

    .line 1305
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, v3

    .line 1307
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v4

    if-nez v1, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 1311
    :cond_1
    invoke-virtual {v4, v1}, Lcom/metamoji/un/text/model/attr/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v4, 0x1

    .line 1317
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->endOfDocument()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1322
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v4

    if-eq v2, v4, :cond_0

    :goto_1
    move-object v3, v1

    goto :goto_2

    .line 1326
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1327
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v3

    :goto_2
    if-eqz p1, :cond_5

    .line 1330
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz p1, :cond_5

    .line 1331
    invoke-interface {p1, v3}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->overrideAttributesByStyleBar(Lcom/metamoji/un/text/model/attr/Attributes;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v3

    .line 1335
    :cond_5
    instance-of p1, v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz p1, :cond_6

    .line 1336
    new-instance p1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    check-cast v3, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {p1, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    const/4 v0, 0x0

    .line 1337
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setSpellErrorMark(Z)V

    return-object p1

    :cond_6
    return-object v3
.end method

.method public getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 1

    if-nez p1, :cond_0

    .line 5181
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    .line 5183
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAttributes(Lcom/metamoji/un/text/model/TextRange;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public getAttributesInRange(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)",
            "Lcom/metamoji/un/text/model/attr/Attributes;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5198
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    .line 5200
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAttributes(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object p1

    return-object p1
.end method

.method public getCutOffHeight(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F
    .locals 1

    .line 4975
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesZoomRatioPercent(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result p2

    .line 4976
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBaseLine()F

    move-result v0

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getTopLine()F

    move-result p1

    sub-float/2addr v0, p1

    const p1, 0x3f6147ae    # 0.88f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public getDefaultFontBaseline()F
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getDefaultFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    return v0
.end method

.method public getDefaultFontHeight()F
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v0

    return v0
.end method

.method public getDefaultFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    return-object v0
.end method

.method public getDefaultTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getDefaultUnitFontColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    return-object v0
.end method

.method public getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v0, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    return-object v0
.end method

.method public getLineSpacing()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    return v0
.end method

.method public getLineTable()Lcom/metamoji/un/text/model/linetable/LineTable;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    return-object v0
.end method

.method public getListPrefixSnapshot(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 1

    .line 3183
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_listPrefixSnapshot:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    return-object p1
.end method

.method public getModified()Z
    .locals 1

    .line 867
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->modified:Z

    return v0
.end method

.method public getPaddingRect()Lcom/metamoji/cm/EdgeInsets;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    return-object v0
.end method

.method public getParagraphMarkOfLine(I)Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;
    .locals 1

    .line 5895
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParagraphStyleAtLine(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;
    .locals 1

    .line 5377
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5379
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphTable:Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    return-object v0
.end method

.method public getRectIncludingParagraph(Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;)Landroid/graphics/RectF;
    .locals 3

    .line 5845
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->startLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget v1, v1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    .line 5846
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->endLine:Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;

    iget p1, p1, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo$LineLocation;->lineNo:I

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineInfoAtIndex(I)Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object p1

    .line 5848
    sget-object v1, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    .line 5849
    sget-object v2, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 5851
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getLineRect()Landroid/graphics/RectF;

    move-result-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 5853
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getLineRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 5855
    :cond_1
    invoke-static {v1, v2}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getRenderingStrokesBounds(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Landroid/graphics/RectF;
    .locals 1

    .line 4965
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 4966
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesZoomRatioPercent(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result p1

    .line 4967
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->getZoomedBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getRenderingStrokesZoomRatioPercent(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F
    .locals 1

    .line 4949
    invoke-direct {p0, p2}, Lcom/metamoji/un/text/model/TextModel;->getStrokesFontSize(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)F

    move-result p2

    .line 4950
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getBaseLine()F

    move-result v0

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;->getTopLine()F

    move-result p1

    sub-float/2addr v0, p1

    div-float/2addr p2, v0

    const/high16 p1, 0x42b00000    # 88.0f

    mul-float/2addr p2, p1

    return p2
.end method

.method public getRotatedTL()Landroid/graphics/PointF;
    .locals 8

    .line 5046
    const-string/jumbo v0, "x"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 5047
    const-string/jumbo v3, "y"

    invoke-virtual {p0, v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 5048
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5049
    const-string/jumbo v5, "rotation"

    invoke-virtual {p0, v5, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    cmpl-double v1, v1, v5

    if-nez v1, :cond_0

    return-object v4

    .line 5054
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v3, v2

    invoke-direct {v1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5056
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 5057
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 5058
    new-instance v3, Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    add-float/2addr v6, v2

    iget v0, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public getRotatedTR()Landroid/graphics/PointF;
    .locals 8

    .line 5093
    const-string/jumbo v0, "x"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    .line 5094
    const-string/jumbo v3, "y"

    invoke-virtual {p0, v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 5095
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v5

    add-float/2addr v5, v0

    invoke-direct {v4, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5096
    const-string/jumbo v5, "rotation"

    invoke-virtual {p0, v5, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    cmpl-double v1, v1, v5

    if-nez v1, :cond_0

    return-object v4

    .line 5101
    :cond_0
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v2

    div-float/2addr v2, v7

    add-float/2addr v3, v2

    invoke-direct {v1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 5103
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 5104
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 5105
    new-instance v3, Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    iget v2, v4, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    mul-float/2addr v2, v0

    add-float/2addr v6, v2

    iget v0, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public getRuledLineStyle()Lcom/metamoji/un/text/model/RuledLineStyle;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    return-object v0
.end method

.method public getSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_searchResults:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    return-object v0
.end method

.method public getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;
    .locals 1

    .line 979
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->readyContent()Z

    .line 980
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    return-object v0
.end method

.method public getStrokeStyleInRange(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStylePropertyFlag;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5215
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    .line 5217
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getStrokeStyle(Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    return-object p1
.end method

.method public getStrokesBeforeCaret()Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;
    .locals 3

    .line 5770
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    .line 5773
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    if-eqz v0, :cond_0

    .line 5771
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    goto :goto_0

    .line 5773
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    :goto_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 5774
    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    .line 5775
    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5776
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v2

    .line 5777
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object v0

    .line 5776
    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5778
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 5779
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 5780
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v2

    if-lez v2, :cond_1

    .line 5781
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrokesFontMetrics(Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 4934
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->isUseFontSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4935
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;->getFontSize()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->createTextPaint(Ljava/lang/String;F)Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    return-object p1

    .line 4938
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTotalLineHeight()F
    .locals 3

    .line 4646
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4648
    iget-object v1, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v0, v0, Lcom/metamoji/un/text/model/linetable/LineInfo;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v0, v0, Lcom/metamoji/cm/EdgeInsets;->top:F

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v2, v2, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 4649
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getUnitBackgroundColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    return-object v0
.end method

.method public getUnitBorderStyle()Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    return-object v0
.end method

.method public getUnitBorderStyleForRendering()Lcom/metamoji/un/text/model/UnitBorderStyle;
    .locals 2

    .line 5037
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    .line 5040
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v0, :cond_0

    .line 5038
    invoke-interface {v0, v1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->transcribeUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)Lcom/metamoji/un/text/model/UnitBorderStyle;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->getUnitFilterColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnitHeight()F
    .locals 3

    .line 5028
    const-string v0, "height"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getUnitNoDropShadow()Z
    .locals 2

    .line 5974
    const-string v0, "no.dropshadow"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUnitNotDelWhenEmpty()Z
    .locals 2

    .line 5991
    const-string v0, "not.del.when.empty"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUnitStyles()Lcom/metamoji/un/text/model/UnitStyles;
    .locals 3

    .line 700
    new-instance v0, Lcom/metamoji/un/text/model/UnitStyles;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/UnitStyles;-><init>()V

    .line 703
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    .line 704
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    .line 707
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    .line 710
    new-instance v1, Lcom/metamoji/cm/EdgeInsets;

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-direct {v1, v2}, Lcom/metamoji/cm/EdgeInsets;-><init>(Lcom/metamoji/cm/EdgeInsets;)V

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    .line 713
    iget v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    .line 716
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 719
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 722
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/ColorComponent;->getUIColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    .line 725
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    :cond_0
    return-object v0
.end method

.method public getUnitWidth()F
    .locals 3

    .line 5020
    const-string/jumbo v0, "width"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getVerticalWriting()Z
    .locals 2

    .line 5002
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5003
    const-string/jumbo v0, "verticalWriting"

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getZoomedBounds(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 2

    .line 4987
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/high16 p1, 0x42c80000    # 100.0f

    cmpl-float v1, p2, p1

    if-eqz v1, :cond_0

    div-float/2addr p2, p1

    .line 4990
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 4991
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4992
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v0
.end method

.method protected importAdditionalContent(Lcom/metamoji/df/model/Model;Lcom/metamoji/df/model/ModelManagerImportContext;)V
    .locals 3

    .line 646
    check-cast p1, Lcom/metamoji/un/text/model/TextModel;

    .line 648
    iget-object p2, p1, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getTextArray()Ljava/util/List;

    move-result-object p2

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 650
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 651
    new-instance v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v2, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 653
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/un/text/model/TextModel;->setStringWsArrayObject(Ljava/util/List;Z)V

    .line 655
    iget-object p2, p1, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    .line 659
    new-instance p2, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    iget-object v0, p1, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {p2, v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    iput-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    .line 661
    new-instance p2, Lcom/metamoji/cm/EdgeInsets;

    iget-object v0, p1, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-direct {p2, v0}, Lcom/metamoji/cm/EdgeInsets;-><init>(Lcom/metamoji/cm/EdgeInsets;)V

    iput-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    .line 662
    iget p2, p1, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    iput p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    .line 663
    iget-object p2, p1, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 664
    iget-object p2, p1, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 665
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v0, p1, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p2, v0}, Lcom/metamoji/un/text/model/ColorComponent;->set(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 666
    iget-boolean p1, p1, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    return-void
.end method

.method public insertCombiningAccent(I)V
    .locals 2

    .line 1034
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "insertText"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1037
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%c"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternal(Ljava/lang/String;)V

    .line 1039
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1040
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    const/4 p1, 0x0

    .line 1042
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1043
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void
.end method

.method public insertStrokes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1856
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "insertStrokes"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1857
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1860
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 1865
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getAttributeForInsertTextOrStroke()Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1866
    new-instance v3, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v3, v1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 1867
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1869
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore()V

    .line 1873
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    .line 1878
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1879
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_2

    .line 1881
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 1888
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStrokes(Ljava/util/List;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 1891
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->reduceInkInStrokes(Ljava/util/List;)V

    .line 1900
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1907
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1908
    invoke-virtual {p0, v2, v2}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1910
    iput-boolean v1, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1911
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    .line 1913
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 1904
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1905
    throw p1

    :cond_4
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1025
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "insertText"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1026
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1027
    invoke-direct {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternal(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1028
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1029
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    :cond_0
    return-void
.end method

.method public insertText(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 1923
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->insertText(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1926
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/TextModel;->insertStrokes(Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 1928
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "insertTextWithStrokes"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1929
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 1936
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 1941
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getAttributeForInsertTextOrStroke()Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v1

    .line 1942
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1944
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore()V

    .line 1946
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 1949
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v3, v2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1952
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->whitespaceAndNewlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 1957
    instance-of v6, v1, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz v6, :cond_3

    .line 1958
    new-instance v6, Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-object v7, v1

    check-cast v7, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v6, v7}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    goto :goto_0

    .line 1960
    :cond_3
    new-instance v6, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {v6, v1}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1962
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1963
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v4

    :goto_1
    if-ge v9, v7, :cond_5

    .line 1965
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    move-object v8, v5

    :cond_5
    if-eqz v1, :cond_6

    .line 1975
    new-instance v6, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    invoke-direct {v6, v1}, Lcom/metamoji/un/text/model/attr/StrokeAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1977
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1978
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v4

    :goto_2
    if-ge v9, v1, :cond_7

    .line 1980
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move-object v7, v5

    .line 1984
    :cond_7
    new-instance v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v1, p1, v8, p2, v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1985
    invoke-virtual {v1, v5}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 1986
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1989
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1996
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1997
    invoke-virtual {p0, p1, p1}, Lcom/metamoji/un/text/model/TextModel;->textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V

    .line 1999
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 2000
    iput-boolean v4, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 2001
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    .line 2004
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isCheckSpellingWhenTyping()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ltz v3, :cond_8

    .line 2005
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p1, v2, v5}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1993
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1994
    throw p1

    :cond_8
    return-void
.end method

.method public insertTextInternalCore(Ljava/lang/CharSequence;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternalCore(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public insertTextInternalCore(Ljava/lang/CharSequence;Ljava/util/List;)Lcom/metamoji/un/text/model/TextPosition;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            ">;)",
            "Lcom/metamoji/un/text/model/TextPosition;"
        }
    .end annotation

    .line 1186
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1188
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1189
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v0, v2}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%c"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getAttributeForInsertTextOrStroke()Lcom/metamoji/un/text/model/attr/Attributes;

    move-result-object v0

    .line 1198
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1201
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore()V

    .line 1203
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 1206
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {v3, v2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 1210
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1211
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1

    .line 1215
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->whitespaceAndNewlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v3

    if-nez p2, :cond_5

    if-eqz v0, :cond_5

    .line 1222
    instance-of p2, v0, Lcom/metamoji/un/text/model/attr/StringAttributes;

    if-eqz p2, :cond_3

    .line 1223
    new-instance p2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    check-cast v0, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {p2, v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    goto :goto_0

    .line 1225
    :cond_3
    new-instance p2, Lcom/metamoji/un/text/model/attr/StringAttributes;

    invoke-direct {p2, v0}, Lcom/metamoji/un/text/model/attr/StringAttributes;-><init>(Lcom/metamoji/un/text/model/attr/Attributes;)V

    .line 1227
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1228
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_4

    .line 1231
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object p2, v4

    .line 1235
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertString(Ljava/lang/CharSequence;Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 1238
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->isCheckSpellingWhenTyping()Z

    move-result p2

    if-eqz p2, :cond_6

    if-ltz v3, :cond_6

    .line 1240
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    const/4 v0, 0x0

    invoke-interface {p2, v2, v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->checkSpellingAt(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/cm/IAction1;)V

    :cond_6
    return-object p1
.end method

.method public isContentEmpty()Z
    .locals 4

    .line 5799
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v0

    .line 5800
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    .line 5801
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v1

    if-ne v3, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v2
.end method

.method protected loadAdditionalContent([BI)V
    .locals 4

    const/4 v0, 0x3

    .line 586
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVersion()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    .line 587
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    .line 588
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVersion()I

    move-result v1

    if-ne v0, v1, :cond_2

    move v2, v3

    :cond_2
    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    .line 591
    new-instance v0, Lcom/metamoji/cm/DataArchiver;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-direct {v0, p1, p2, v1}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 595
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->serializeTextUnitStyle(Lcom/metamoji/cm/DataArchiver;)I

    .line 596
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 601
    :try_start_0
    new-instance p1, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;

    invoke-direct {p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    .line 603
    :try_start_1
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 606
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getTextArray()Ljava/util/List;

    move-result-object v1

    const-class v2, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {v1, v0, v2}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 617
    invoke-virtual {p1, v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->decodeStrokeStyles(Lcom/metamoji/cm/DataArchiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :try_start_2
    sget-object p1, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 625
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 620
    :try_start_3
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexDecodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 621
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 625
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 626
    throw p1

    :cond_4
    return-void
.end method

.method public longestLineWidth()F
    .locals 12

    .line 4231
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 4235
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getTextArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    :goto_0
    move v5, v2

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 4237
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4239
    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getTotalLeftIndent()F

    move-result v8

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->getRightIndent()F

    move-result v5

    add-float/2addr v8, v5

    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v5

    mul-float/2addr v8, v5

    add-float/2addr v3, v8

    :cond_1
    move v5, v7

    .line 4242
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v8

    if-nez v8, :cond_7

    .line 4245
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 4247
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    .line 4264
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/metamoji/cm/StringUtils;->indexOfCharacterSet(Ljava/lang/CharSequence;Lcom/metamoji/cm/CharacterSet;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v10, v9, :cond_4

    .line 4280
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-interface {v8, v7, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 4285
    :cond_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_5

    add-int/lit8 v8, v8, -0x1

    .line 4288
    invoke-direct {p0, v6, v7, v8}, Lcom/metamoji/un/text/model/TextModel;->createTextLine(Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;II)Lcom/metamoji/un/text/model/TextLine;

    move-result-object v7

    .line 4289
    iget-object v8, p0, Lcom/metamoji/un/text/model/TextModel;->defaultTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v6, v7, v8, v11}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getImageWidth(Lcom/metamoji/un/text/model/TextLine;Landroid/text/TextPaint;Lcom/metamoji/un/text/model/attr/StringAttributes;)F

    move-result v6

    add-float/2addr v3, v6

    :cond_5
    if-eq v10, v9, :cond_0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_6

    move v4, v3

    :cond_6
    move v3, v1

    goto :goto_0

    .line 4332
    :cond_7
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v8

    .line 4333
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokeAttributes()Ljava/util/List;

    move-result-object v6

    .line 4334
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 4335
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;

    .line 4336
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/text/model/attr/StrokeAttributes;

    .line 4337
    invoke-virtual {p0, v9, v10}, Lcom/metamoji/un/text/model/TextModel;->getRenderingStrokesBounds(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;Lcom/metamoji/un/text/model/attr/StrokeAttributes;)Landroid/graphics/RectF;

    move-result-object v9

    .line 4340
    iget v9, v9, Landroid/graphics/RectF;->right:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-float/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    cmpl-float v0, v3, v4

    if-lez v0, :cond_9

    goto :goto_3

    :cond_9
    move v3, v4

    .line 4349
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return v3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 4350
    throw v0
.end method

.method public makeFontSetting(Ljava/lang/String;F)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontName(Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setFontSize(F)V

    .line 377
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->updateDefaultTextPaint()V

    .line 380
    iput p2, p0, Lcom/metamoji/un/text/model/TextModel;->defaultFontHeight:F

    return-void
.end method

.method public makeParagraphTable(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 4

    .line 2052
    new-instance v0, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphTableCreator;

    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-direct {v0, v1}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphTableCreator;-><init>(Lcom/metamoji/un/text/IUnTextUnitDelegate;)V

    .line 2053
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphTable:Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2054
    new-array v1, v3, [Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphTableCreator;->createParagraphTable(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphTable:Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    return-void

    .line 2056
    :cond_0
    new-array v1, v3, [Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphTable:Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphTableCreator;->createParagraphTable(Ljava/util/List;Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/paragtable/ParagraphTable;)Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    return-void
.end method

.method public makeStringWithStrokesIfLast(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 3

    .line 5476
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_2

    .line 5479
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->count()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 5484
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5487
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5489
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;->cloneMutableExceptPersonalInfo()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object v1

    .line 5492
    :cond_0
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    if-eqz v1, :cond_1

    .line 5494
    invoke-virtual {v0, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 5495
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 5497
    new-instance v1, Lcom/metamoji/un/text/model/TextPosition;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/metamoji/un/text/model/TextPosition;-><init>(II)V

    .line 5500
    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public maxFontSize(Ljava/util/List;)[F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;)[F"
        }
    .end annotation

    .line 5308
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->maxFontSize(Ljava/util/List;)[F

    move-result-object p1

    return-object p1
.end method

.method public needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 4519
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V
    .locals 4

    .line 4530
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 4532
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v0

    if-ltz v0, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    .line 4533
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 4536
    new-instance v0, Lcom/metamoji/un/text/model/TextPosition;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextPosition;-><init>(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    .line 4539
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    .line 4542
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 4543
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4544
    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 4545
    iput-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

    .line 4547
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 4548
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4555
    :cond_6
    new-instance p1, Lcom/metamoji/un/text/model/TextModel$4;

    invoke-direct {p1, p0, p2}, Lcom/metamoji/un/text/model/TextModel$4;-><init>(Lcom/metamoji/un/text/model/TextModel;Z)V

    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_7

    .line 4566
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 4568
    :cond_7
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result p1

    const-wide/16 v2, 0xa

    if-eqz p1, :cond_8

    .line 4569
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v2, v3, v1}, Lcom/metamoji/cm/CmTaskManager;->requestRunOnBackground(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 4573
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->timerFireMethodForDelayLTMaintainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 4482
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4487
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->executeUnitWidthSelfAdjustmentBeforeReamkeLineTable:Z

    .line 4488
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)I
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Z)I

    move-result p1

    return p1
.end method

.method public offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Z)I
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->offsetFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;Z)I

    move-result p1

    return p1
.end method

.method public paste(Ljava/lang/CharSequence;)V
    .locals 2

    .line 5628
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "paste"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5629
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 5634
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->insertTextInternal(Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x0

    .line 5636
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 5637
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void
.end method

.method public paste(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;)V"
        }
    .end annotation

    .line 5586
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "paste"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5587
    iput-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 5589
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5594
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5595
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->deleteBackwardCore()V

    .line 5599
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->removeSpellErrorLocations(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5602
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 5603
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    :cond_1
    invoke-virtual {v4, v3, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->insertStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    .line 5604
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 5607
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/TextRange;->setEnd(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5608
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/model/TextRange;->setStart(Lcom/metamoji/un/text/model/TextPosition;)V

    .line 5613
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5617
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5620
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    const/4 p1, 0x0

    .line 5622
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    .line 5623
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void

    :catchall_0
    move-exception p1

    .line 5617
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5618
    throw p1
.end method

.method public positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    .line 1427
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;
    .locals 1

    .line 1439
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;IZ)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    return-object p1
.end method

.method public positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextLayoutDirection;I)Lcom/metamoji/un/text/model/TextPosition;
    .locals 2

    .line 1448
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    if-eqz p3, :cond_8

    .line 1452
    sget-object v1, Lcom/metamoji/un/text/model/TextModel$8;->$SwitchMap$com$metamoji$un$text$model$TextLayoutDirection:[I

    invoke-virtual {p2}, Lcom/metamoji/un/text/model/TextLayoutDirection;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1487
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionForwardFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    .line 1490
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionNextLineFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 1479
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionBackwardFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    .line 1482
    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionPreviousLineFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1467
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionNextLineFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    .line 1470
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionBackwardFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1471
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 1455
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionPreviousLineFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    goto :goto_1

    .line 1458
    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/metamoji/un/text/model/TextModel;->positionForwardFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p2

    .line 1459
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/TextPosition;->compareTo(Lcom/metamoji/un/text/model/TextPosition;)I

    :goto_0
    move-object p1, p2

    :cond_8
    :goto_1
    const/4 p2, 0x0

    .line 1500
    iput-boolean p2, p1, Lcom/metamoji/un/text/model/TextPosition;->lineEndPosition:Z

    return-object p1
.end method

.method public processUndoTask(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 4862
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 4867
    :try_start_0
    new-instance v0, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;-><init>(Lcom/metamoji/un/text/model/TextModel;Z)V

    .line 4868
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4871
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 4875
    const-string v1, "name"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4876
    const-string v2, "resizeUnit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4877
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 4881
    :goto_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/metamoji/un/text/model/undo/TextUndoDataExecutor;->processUndoData(Ljava/util/Map;)V

    .line 4882
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4890
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->lock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 4891
    :cond_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4896
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 4897
    throw p1
.end method

.method public promoteParagraphListLevel()V
    .locals 3

    .line 5563
    sget-object v0, Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;->ListLevel:Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/model/TextModel$7;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/model/TextModel$7;-><init>(Lcom/metamoji/un/text/model/TextModel;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V

    return-void
.end method

.method public putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle$OverwriteFlag;",
            ">;",
            "Lcom/metamoji/cm/IAction1<",
            "Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;",
            ">;)V"
        }
    .end annotation

    .line 5391
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "putParagraphStyle"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    .line 5392
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5396
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineCount()I

    move-result v0

    .line 5399
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 5400
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->makeStringWithStrokesIfLast(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 5403
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v1

    .line 5405
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5406
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 5408
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    move-result-object v3

    .line 5412
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 5413
    new-instance v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v4}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    .line 5414
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphStyleAtLine(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 5416
    new-instance v6, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-direct {v6, v5}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    invoke-virtual {v4, v6}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 5418
    :cond_2
    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v5, v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 5420
    iput-object v4, v3, Lcom/metamoji/un/text/model/linetable/LineInfo;->stringWsReferingParagraphStyle:Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 5421
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/metamoji/un/text/model/linetable/LineInfo;->swsaIndexReferingParagraphStyle:I

    .line 5440
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLastLineInfo()Lcom/metamoji/un/text/model/linetable/LineInfo;

    add-int/lit8 v4, v2, 0x2

    if-ne v4, v0, :cond_4

    .line 5442
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/linetable/LineInfo;->getColumnTable()Lcom/metamoji/un/text/model/linetable/ColumnTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/linetable/ColumnTable;->getColumnCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 5444
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 5445
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5446
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>()V

    .line 5448
    new-instance v3, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->getParagraphStyleAtLine(I)Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;-><init>(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;)V

    .line 5450
    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->setParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;)V

    .line 5451
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v3, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 5456
    :cond_4
    new-instance v0, Lcom/metamoji/cm/Range;

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/Range;-><init>(II)V

    .line 5457
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/metamoji/un/text/model/TextModel;->putParagraphStyle(Lcom/metamoji/un/text/model/paragstyle/ParagraphStyle;Lcom/metamoji/cm/Range;Ljava/util/EnumSet;Lcom/metamoji/cm/IAction1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5462
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5464
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void

    :catchall_0
    move-exception p1

    .line 5462
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5463
    throw p1
.end method

.method public putStringAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Lcom/metamoji/un/text/model/TextRange;Ljava/util/EnumSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Lcom/metamoji/un/text/model/TextRange;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v2, p3

    .line 5232
    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    return-void
.end method

.method public putTextAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")V"
        }
    .end annotation

    .line 5264
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object v0

    const-string v1, "putStringAttributes"

    invoke-interface {v0, v1}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->startEditTextTask(Ljava/lang/String;)V

    .line 5266
    invoke-virtual/range {p0 .. p6}, Lcom/metamoji/un/text/model/TextModel;->putTextAttributesCore(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    move-object p1, p0

    const/4 p2, 0x1

    .line 5268
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 5269
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getEditTextUndoManager()Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/un/text/model/undo/ITextUndoManager;->endEditTextTask()V

    return-void
.end method

.method public putTextAttributesCore(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/attr/StringAttributes;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/attr/Attributes$PropertyFlag;",
            ">;",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")V"
        }
    .end annotation

    if-nez p6, :cond_0

    .line 5274
    iget-object p6, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    :cond_0
    move-object v6, p6

    .line 5276
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p6

    invoke-interface {p6}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5280
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->putAttributes(Lcom/metamoji/un/text/model/attr/StringAttributes;Ljava/util/EnumSet;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Lcom/metamoji/mazecclient/stroke/IStrokePenInfo;Ljava/util/EnumSet;Lcom/metamoji/un/text/model/TextRange;)V

    .line 5284
    invoke-virtual {v6}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5288
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5289
    throw p1
.end method

.method public rangesFontSizeDesignated()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;"
        }
    .end annotation

    .line 5298
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->rangesFontSizeDesignated()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public reconstructLineTable()V
    .locals 2

    .line 4913
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    .line 4914
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 v0, 0x0

    .line 4915
    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->deleyedLineTableMakingFromPosition:Lcom/metamoji/un/text/model/TextPosition;

    return-void
.end method

.method public releaseRefernceCount()V
    .locals 1

    .line 264
    iget v0, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 265
    iput v0, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    :cond_0
    return-void
.end method

.method public remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 1

    const/4 v0, 0x0

    .line 2066
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V

    return-void
.end method

.method public remakeLineTable(Lcom/metamoji/un/text/model/TextPosition;Z)V
    .locals 11

    .line 2074
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getVerticalWriting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v1

    goto :goto_0

    .line 2078
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v1

    .line 2080
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 2087
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/metamoji/un/text/model/linetable/LineTable;->needsReconstruct:Z

    .line 2088
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 2092
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/linetable/LineTable;->getLineIndex(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    move v2, v3

    .line 2093
    :goto_1
    invoke-direct {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->numberedListDataInitialize(I)V

    .line 2096
    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-static {v4}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->collectHotSpots(Lcom/metamoji/un/text/model/StringWithStrokesArray;)Ljava/util/List;

    move-result-object v4

    .line 2097
    invoke-direct {p0, v4}, Lcom/metamoji/un/text/model/TextModel;->setHotSpotLocations(Ljava/util/List;)V

    .line 2100
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->isVisibleHotSpots()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    .line 2105
    :cond_2
    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v5, :cond_3

    .line 2106
    invoke-interface {v5}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->remakeLineTableBefore()V

    .line 2108
    :cond_3
    iget-object v5, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v5}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v5

    .line 2110
    iget-boolean v6, p0, Lcom/metamoji/un/text/model/TextModel;->executeUnitWidthSelfAdjustmentBeforeReamkeLineTable:Z

    if-eqz v6, :cond_7

    .line 2111
    iput-boolean v3, p0, Lcom/metamoji/un/text/model/TextModel;->executeUnitWidthSelfAdjustmentBeforeReamkeLineTable:Z

    .line 2112
    iget-boolean v6, p0, Lcom/metamoji/un/text/model/TextModel;->unitWidthSelfAdjustment:Z

    if-eqz v6, :cond_7

    if-eqz v0, :cond_5

    .line 2114
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->longestLineWidth()F

    move-result v6

    .line 2115
    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->top:F

    iget-object v8, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v8, v8, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 2116
    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v7, :cond_4

    .line 2117
    invoke-interface {v7, v6}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->adjustWidthInsidePaper(F)F

    move-result v6

    :cond_4
    cmpg-float v7, v1, v6

    if-gez v7, :cond_7

    goto :goto_2

    .line 2124
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->longestLineWidth()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    .line 2125
    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->left:F

    iget-object v8, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v8, v8, Lcom/metamoji/cm/EdgeInsets;->right:F

    add-float/2addr v7, v8

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    .line 2126
    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v7, :cond_6

    .line 2127
    invoke-interface {v7, v6}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->adjustWidthInsidePaper(F)F

    move-result v6

    :cond_6
    cmpg-float v7, v1, v6

    if-gez v7, :cond_7

    :goto_2
    move v1, v6

    .line 2135
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitMinMinWidth()F

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpg-float v7, v1, v6

    if-gez v7, :cond_8

    move v1, v6

    .line 2143
    :cond_8
    iget-object v6, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    if-eqz v0, :cond_9

    .line 2141
    :try_start_2
    iget v6, v6, Lcom/metamoji/cm/EdgeInsets;->top:F

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    goto :goto_3

    .line 2143
    :cond_9
    iget v6, v6, Lcom/metamoji/cm/EdgeInsets;->left:F

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->right:F

    :goto_3
    add-float/2addr v6, v7

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    .line 2145
    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->left:F

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v8, v8, Lcom/metamoji/cm/EdgeInsets;->top:F

    mul-float/2addr v8, v5

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v0, :cond_a

    .line 2149
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v8, v8, Lcom/metamoji/cm/EdgeInsets;->left:F

    iget-object v10, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v10, v10, Lcom/metamoji/cm/EdgeInsets;->right:F

    add-float/2addr v8, v10

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    .line 2150
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2149
    invoke-static {v6, v7, v1}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;FF)V

    goto :goto_4

    .line 2152
    :cond_a
    invoke-static {v1, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2153
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v8, v8, Lcom/metamoji/cm/EdgeInsets;->top:F

    iget-object v9, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v9, v9, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    add-float/2addr v8, v9

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    .line 2152
    invoke-static {v6, v1, v7}, Lcom/metamoji/cm/RectUtils;->setSize(Landroid/graphics/RectF;FF)V

    .line 2154
    :goto_4
    invoke-direct {p0, p1, v6, v4}, Lcom/metamoji/un/text/model/TextModel;->remakeEachLineTable(Lcom/metamoji/un/text/model/TextPosition;Landroid/graphics/RectF;Ljava/util/List;)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    .line 2157
    invoke-direct {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitMinSize()Lcom/metamoji/cm/SizeF;

    move-result-object v1

    if-eqz v0, :cond_b

    .line 2161
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v6, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v6, v6, Lcom/metamoji/cm/EdgeInsets;->top:F

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    .line 2162
    iget v5, v1, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_c

    .line 2163
    iput v0, v1, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_5

    .line 2166
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v6, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v6, v6, Lcom/metamoji/cm/EdgeInsets;->left:F

    iget-object v7, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    iget v7, v7, Lcom/metamoji/cm/EdgeInsets;->right:F

    add-float/2addr v6, v7

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    .line 2167
    iget v5, v1, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_c

    .line 2168
    iput v0, v1, Lcom/metamoji/cm/SizeF;->width:F

    .line 2171
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v0, :cond_d

    .line 2172
    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->remakeLineTableAfter()V

    :cond_d
    if-eqz v4, :cond_e

    .line 2177
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    invoke-static {v4, v0, p0}, Lcom/metamoji/un/text/hotspot/HotSpotUtil;->setViewRectsIn(Ljava/util/List;Lcom/metamoji/un/text/model/linetable/LineTable;Lcom/metamoji/un/text/model/ITextInput;)V

    .line 2181
    :cond_e
    const-class v0, Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/metamoji/un/text/model/TextModel;->createParagraphMarkRenderingData(ILjava/util/EnumSet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2183
    :try_start_3
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iput-boolean v3, v0, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2188
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 2198
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz p2, :cond_f

    .line 2193
    invoke-interface {v0, v1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->checkUnitMinSizeOnInit(Lcom/metamoji/cm/SizeF;)V

    return-void

    :cond_f
    if-eqz v0, :cond_11

    .line 2198
    iget-boolean p2, p0, Lcom/metamoji/un/text/model/TextModel;->duringInsertStringAndStrokes:Z

    if-nez p2, :cond_11

    .line 2199
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 2200
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p2, v1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->checkUnitMinSize(Lcom/metamoji/cm/SizeF;)V

    .line 2201
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->didEndMakingLineTable()V

    .line 2202
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p2, p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setNeedsDisplayFrom(Lcom/metamoji/un/text/model/TextPosition;)V

    return-void

    .line 2207
    :cond_10
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/un/text/model/TextModel$3;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/text/model/TextModel$3;-><init>(Lcom/metamoji/un/text/model/TextModel;Lcom/metamoji/un/text/model/TextPosition;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_11
    return-void

    .line 2183
    :goto_6
    :try_start_4
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->lineTable:Lcom/metamoji/un/text/model/linetable/LineTable;

    iput-boolean v3, p2, Lcom/metamoji/un/text/model/linetable/LineTable;->isRemaking:Z

    .line 2184
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 2188
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 2189
    throw p1
.end method

.method public retainRefernceCount()V
    .locals 1

    .line 255
    iget v0, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/un/text/model/TextModel;->_referenceCount:I

    return-void
.end method

.method protected saveAdditionalContent(Lcom/metamoji/df/model/ByteData;)V
    .locals 5

    .line 547
    new-instance v0, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {v0}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 551
    invoke-direct {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->serializeTextUnitStyle(Lcom/metamoji/cm/DataArchiver;)I

    .line 552
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 558
    :try_start_0
    new-instance v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;

    invoke-direct {v1}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 560
    :try_start_1
    sget-object v3, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 562
    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getTextArray()Ljava/util/List;

    move-result-object v3

    const-class v4, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-static {v3, v0, v4}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 563
    invoke-virtual {v1, v0}, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->encodeStrokeStyles(Lcom/metamoji/cm/DataArchiver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    :try_start_2
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 571
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 575
    invoke-virtual {v0}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/model/ByteData;->appendBytes([B)V

    return-void

    :catchall_0
    move-exception p1

    .line 566
    :try_start_3
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleIndexEncodeContext;->tsInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 567
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 571
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 572
    throw p1
.end method

.method public selectedParagraphInfos(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5819
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 5821
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5822
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getParagraphTable()Lcom/metamoji/un/text/model/paragtable/ParagraphTable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5825
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5826
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    .line 5827
    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 5829
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result v2

    .line 5830
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->getParagraphIndexFromTextPosition(Lcom/metamoji/un/text/model/TextPosition;)I

    move-result p1

    :goto_0
    if-gt v2, p1, :cond_2

    .line 5832
    invoke-virtual {v1, v2}, Lcom/metamoji/un/text/model/paragtable/ParagraphTable;->paragraphInfoAt(I)Lcom/metamoji/un/text/model/paragtable/ParagraphInfo;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/text/model/paragtable/TaggedParagraphInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setEditTextUndoManager(Lcom/metamoji/un/text/model/undo/ITextUndoManager;)V
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iput-object p1, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    return-void
.end method

.method public setModified(Z)V
    .locals 1

    .line 875
    iput-boolean p1, p0, Lcom/metamoji/un/text/model/TextModel;->modified:Z

    if-eqz p1, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->rememberContentModified()V

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz p1, :cond_1

    .line 881
    iget-boolean v0, p0, Lcom/metamoji/un/text/model/TextModel;->modified:Z

    invoke-interface {p1, v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->changedTextModelModified(Z)V

    :cond_1
    return-void
.end method

.method public setParagraphMarkOfLine(Lcom/metamoji/un/text/model/MMJEdTrdParagraphMark;I)V
    .locals 1

    .line 5884
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->_paragraphMarkDic:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRotatedTL(Landroid/graphics/PointF;)V
    .locals 7

    .line 5068
    const-string/jumbo v0, "rotation"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-nez v0, :cond_0

    .line 5070
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 5071
    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 5074
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v0

    .line 5075
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitHeight()F

    move-result v1

    .line 5077
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 5078
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 5081
    iget v4, p1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    mul-float v6, v0, v2

    add-float/2addr v4, v6

    div-float/2addr v1, v5

    mul-float v5, v1, v3

    sub-float/2addr v4, v5

    sub-float/2addr v4, v0

    .line 5084
    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    add-float/2addr p1, v0

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    sub-float/2addr p1, v1

    move v0, v4

    .line 5086
    :goto_0
    const-string/jumbo v1, "x"

    float-to-double v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 5087
    const-string/jumbo v0, "y"

    float-to-double v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setRotatedTR(Landroid/graphics/PointF;)V
    .locals 7

    .line 5115
    const-string/jumbo v0, "rotation"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    .line 5116
    const-string/jumbo v3, "y"

    const-string/jumbo v4, "x"

    if-nez v0, :cond_0

    .line 5117
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getUnitWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 5118
    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 5122
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getRotatedTR()Landroid/graphics/PointF;

    move-result-object v0

    .line 5123
    invoke-virtual {p0, v4, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 5124
    invoke-virtual {p0, v3, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 5125
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v6

    add-float/2addr v2, v5

    .line 5126
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    move v0, v2

    :goto_0
    float-to-double v0, v0

    .line 5128
    invoke-virtual {p0, v4, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    float-to-double v0, p1

    .line 5129
    invoke-virtual {p0, v3, v0, v1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setSearchResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/TextRange;",
            ">;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->_searchResults:Ljava/util/List;

    return-void
.end method

.method public setSelectedTextRange(Lcom/metamoji/un/text/model/TextRange;)V
    .locals 1

    .line 1405
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p1}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextRange;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->selectedRange:Lcom/metamoji/un/text/model/TextRange;

    .line 1406
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1407
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->hideSelectionModifierCursorController()V

    :cond_0
    return-void
.end method

.method public setStringWsArrayObject(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 991
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->setStringWsArrayObject(Ljava/util/List;Z)V

    return-void
.end method

.method public setStringWsArrayObject(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            ">;Z)V"
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget-object v0, v0, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    .line 1001
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    .line 1002
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeAllStringWss()V

    .line 1003
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iput-object v0, v1, Lcom/metamoji/un/text/model/StringWithStrokesArray;->editTextUndoManager:Lcom/metamoji/un/text/model/undo/ITextUndoManager;

    .line 1004
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 1005
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1007
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    :cond_1
    const/4 p1, 0x0

    .line 1008
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 1013
    throw p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->removeAllStringWss()V

    .line 910
    new-instance v0, Lcom/metamoji/un/text/model/TextModel$1;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/model/TextModel$1;-><init>(Lcom/metamoji/un/text/model/TextModel;)V

    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->processNormalizedLine(Ljava/lang/CharSequence;Lcom/metamoji/cm/IAction1;)V

    const/4 p1, 0x0

    .line 916
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTable(Lcom/metamoji/un/text/model/TextPosition;)V

    const/4 p1, 0x1

    .line 917
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 922
    throw p1
.end method

.method public setUnitNoDropShadow(Z)V
    .locals 1

    .line 5983
    const-string v0, "no.dropshadow"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUnitNotDelWhenEmpty(Z)V
    .locals 1

    .line 5996
    const-string v0, "not.del.when.empty"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;)V
    .locals 1

    const/4 v0, 0x0

    .line 738
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;Z)V

    return-void
.end method

.method public setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZ)V

    return-void
.end method

.method public setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/un/text/model/TextModel;->setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZLcom/metamoji/cm/mutable/MutableBoolean;)V

    return-void
.end method

.method public setUnitStyles(Lcom/metamoji/un/text/model/UnitStyles;ZZLcom/metamoji/cm/mutable/MutableBoolean;)V
    .locals 5

    .line 752
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_4

    .line 754
    :cond_1
    :goto_1
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontFamilyName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 755
    :goto_2
    iget-object v2, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/metamoji/un/text/model/UnitStyles;->fontSize:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->getFontSize()F

    move-result v2

    .line 757
    :goto_3
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    move v0, v1

    goto :goto_0

    .line 763
    :goto_4
    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 765
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitBackgroundColor:Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/ColorComponent;->set(I)V

    move v0, v1

    .line 770
    :cond_4
    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    if-eqz v3, :cond_5

    .line 772
    new-instance v0, Lcom/metamoji/cm/EdgeInsets;

    iget-object v2, p1, Lcom/metamoji/un/text/model/UnitStyles;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    invoke-direct {v0, v2}, Lcom/metamoji/cm/EdgeInsets;-><init>(Lcom/metamoji/cm/EdgeInsets;)V

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->paddingRect:Lcom/metamoji/cm/EdgeInsets;

    move v0, v1

    move v2, v0

    .line 778
    :cond_5
    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    if-eqz v3, :cond_6

    .line 780
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->lineHeight:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/metamoji/un/text/model/TextModel;->lineSpacing:F

    move v0, v1

    move v2, v0

    .line 786
    :cond_6
    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-eqz v3, :cond_7

    .line 788
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    move v0, v1

    .line 793
    :cond_7
    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    if-eqz v3, :cond_8

    .line 795
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    move v0, v1

    .line 800
    :cond_8
    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 802
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->defaultStringAttributes:Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    new-instance v3, Lcom/metamoji/un/text/model/ColorComponent;

    iget-object v4, p1, Lcom/metamoji/un/text/model/UnitStyles;->charColor:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    move v0, v1

    .line 807
    :cond_9
    sget-boolean v3, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    if-eqz v3, :cond_a

    .line 808
    iget-object v0, p1, Lcom/metamoji/un/text/model/UnitStyles;->verticalWriting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/model/TextModel;->setVerticalWriting(Z)V

    move v0, v1

    move v2, v0

    :cond_a
    if-eqz v0, :cond_b

    .line 814
    invoke-virtual {p0, v1}, Lcom/metamoji/un/text/model/TextModel;->setModified(Z)V

    .line 815
    iget-object v1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v1, :cond_b

    .line 816
    invoke-interface {v1, p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->changedUnitStyle(Lcom/metamoji/un/text/model/UnitStyles;)V

    :cond_b
    if-eqz v2, :cond_c

    if-nez p2, :cond_c

    const/4 p2, 0x0

    .line 820
    invoke-virtual {p0, p2}, Lcom/metamoji/un/text/model/TextModel;->needsRemakeLineTableWithUnitSizeSelfAdjustmentFromPosition(Lcom/metamoji/un/text/model/TextPosition;)V

    goto :goto_5

    .line 821
    :cond_c
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz p2, :cond_d

    .line 822
    invoke-interface {p2}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->setNeedsDisplay()V

    .line 825
    :cond_d
    :goto_5
    iget-object p2, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz p2, :cond_e

    iget-object p1, p1, Lcom/metamoji/un/text/model/UnitStyles;->bgColor:Ljava/lang/Integer;

    if-eqz p1, :cond_e

    .line 826
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->applyBackgroundColorToMazec()V

    :cond_e
    if-eqz p3, :cond_f

    if-eqz v0, :cond_f

    .line 829
    iget-object p1, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    invoke-interface {p1}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->shareSendTextUnitData()V

    :cond_f
    if-eqz p4, :cond_10

    .line 833
    invoke-virtual {p4, v2}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    :cond_10
    return-void
.end method

.method public setVerticalWriting(Z)V
    .locals 1

    .line 5008
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v0, :cond_0

    .line 5009
    const-string/jumbo v0, "verticalWriting"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 5011
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/TextModel;->setVersion(I)V

    :cond_0
    return-void
.end method

.method public strokesInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 2021
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2022
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getAsStringWsArrayWithRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/List;

    move-result-object p1

    .line 2023
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2024
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2025
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    .line 2026
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->isRenderStrokes()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2028
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStrokes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2031
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getStringLengthUCS4()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    .line 2033
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method public textInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 1355
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->textInRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public textInRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 1370
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->substringWithRange(Lcom/metamoji/un/text/model/TextRange;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public textKindInRange(Lcom/metamoji/un/text/model/TextRange;)Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/TextRange;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/un/text/model/TextKind;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 5142
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getSelectedTextRange()Lcom/metamoji/un/text/model/TextRange;

    move-result-object p1

    .line 5144
    :cond_0
    const-class v0, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5145
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModelManager;->lock()V

    .line 5149
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 5150
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getEnd()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    .line 5152
    const-class p1, Lcom/metamoji/un/text/model/TextKind;

    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5167
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 5156
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/TextRange;->getStart()Lcom/metamoji/un/text/model/TextPosition;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    :goto_0
    if-gt p1, v1, :cond_4

    .line 5157
    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2, p1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 5158
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->isRenderStrokes()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5159
    sget-object v2, Lcom/metamoji/un/text/model/TextKind;->Stroke:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5161
    :cond_3
    sget-object v2, Lcom/metamoji/un/text/model/TextKind;->String:Lcom/metamoji/un/text/model/TextKind;

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5167
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/metamoji/un/text/model/TextModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->unlock()V

    .line 5168
    throw p1
.end method

.method public textRangeFromPosition(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)Lcom/metamoji/un/text/model/TextRange;
    .locals 1

    .line 1418
    new-instance v0, Lcom/metamoji/un/text/model/TextRange;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/un/text/model/TextRange;-><init>(Lcom/metamoji/un/text/model/TextPosition;Lcom/metamoji/un/text/model/TextPosition;)V

    return-object v0
.end method

.method public updateCursorControlerPositions()V
    .locals 1

    .line 5645
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->unitControllerDelegate:Lcom/metamoji/un/text/IUnTextUnitDelegate;

    if-eqz v0, :cond_0

    .line 5646
    invoke-interface {v0}, Lcom/metamoji/un/text/IUnTextUnitDelegate;->updateCursorControlerPositions()V

    :cond_0
    return-void
.end method

.method public validatePosition(Lcom/metamoji/un/text/model/TextPosition;)V
    .locals 5

    .line 1754
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1756
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1757
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_0

    .line 1759
    :cond_0
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 1762
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 1763
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->stringEndWithNewLineChar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1764
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_0

    .line 1767
    :cond_1
    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1768
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v0

    iput v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_0

    .line 1771
    :cond_2
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v2, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 1773
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1774
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 1776
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    goto :goto_0

    .line 1778
    :cond_3
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1781
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->textsAtIndex(I)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1784
    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v2

    .line 1785
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-ne v3, v2, :cond_5

    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v4, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    invoke-virtual {v4}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_6

    :cond_5
    iget v3, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    if-ne v3, v2, :cond_7

    .line 1787
    invoke-static {}, Lcom/metamoji/cm/CharacterSet;->newlineCharacterSet()Lcom/metamoji/cm/CharacterSet;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->characterAtIndex(I)C

    move-result v2

    invoke-virtual {v3, v2}, Lcom/metamoji/cm/CharacterSet;->characterIsMember(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iget-object v3, p0, Lcom/metamoji/un/text/model/TextModel;->stringWsArray:Lcom/metamoji/un/text/model/StringWithStrokesArray;

    .line 1788
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7

    .line 1794
    :cond_6
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1795
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    return-void

    .line 1797
    :cond_7
    iget v2, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/stringws/ImmutableStringWithStrokes;->getLength()I

    move-result v0

    if-le v2, v0, :cond_8

    .line 1800
    iget v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1801
    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    .line 1802
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/text/model/TextModel;->positionFromPosition(Lcom/metamoji/un/text/model/TextPosition;I)Lcom/metamoji/un/text/model/TextPosition;

    move-result-object v0

    .line 1803
    iget v1, v0, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    iput v1, p1, Lcom/metamoji/un/text/model/TextPosition;->swsaOffset:I

    .line 1804
    iget v0, v0, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    iput v0, p1, Lcom/metamoji/un/text/model/TextPosition;->textOffset:I

    :cond_8
    return-void
.end method
