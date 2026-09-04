.class public Lcom/metamoji/tle/TextLineExtractorManager;
.super Ljava/lang/Object;
.source "TextLineExtractorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;,
        Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;,
        Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;,
        Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;,
        Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;,
        Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;,
        Lcom/metamoji/tle/TextLineExtractorManager$LineResult;,
        Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;,
        Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;,
        Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;,
        Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;
    }
.end annotation


# static fields
.field private static final ExtractStrokeCount_Def:I = 0xc8

.field private static final ExtractStrokeCount_High:I = 0x0

.field private static final ExtractStrokeCount_Low:I = 0x3c

.field private static final MAZEC_BASELINE_HEIGHT:F = 108.0f

.field private static final MAZEC_LEFTFRAMEMARGIN:F = 4.0f

.field private static final MAZEC_LEFTMARGIN:F = 12.0f

.field private static final MULTICOMBINERATIO_DEF:F = 0.8f

.field private static final REFLECTANGLE_LARGE:F = 45.0f

.field private static final REFLECTANGLE_NORMAL:F = 15.0f

.field private static final REFLECTANGLE_SMALL:F = 5.0f

.field private static _excludeStrokeCount:I = -0x1

.field private static _instance:Lcom/metamoji/tle/TextLineExtractorManager; = null

.field private static _multiBoundCombineRatio:F = -1.0f

.field private static _recognitionInText:Z = false

.field private static _useTextLineExtract:I = -0x1


# instance fields
.field private _analysResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/tle/TextLineExtractorManager$LineResult;",
            ">;"
        }
    .end annotation
.end field

.field private _analysStrokeInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;",
            ">;"
        }
    .end annotation
.end field

.field _analysStrokeMaxSize:Lcom/metamoji/cm/SizeF;

.field _analysStrokesOutBounds:Landroid/graphics/RectF;

.field private _boundSortType:Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

.field private _convertStrokeParagraphInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private _createdModelCount:I

.field private _divideCharFontRatio:F

.field private _extractor:Lcom/metamoji/tle/TextLineExtractor;

.field private _ignoreSmallBlock:Z

.field private _isConfirm:Z

.field private _isRecognizeText:Z

.field private _isUnnecessaryFigure:Z

.field _lineSpacingCoef:F

.field private _processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

.field private _reflectStrokeStyle:Z

.field private _registeredStrokeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtStrokeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _rotationReflectType:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

.field _totalAnalysStrokeHeight:F

.field _totalAnalysStrokeWidth:F


# direct methods
.method static bridge synthetic -$$Nest$fget_boundSortType(Lcom/metamoji/tle/TextLineExtractorManager;)Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_boundSortType:Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smanalyzeTextLineExtract(Ljava/util/List;ZZZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/tle/TextLineExtractorManager;->analyzeTextLineExtract(Ljava/util/List;ZZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    .line 726
    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    .line 727
    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    .line 728
    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    .line 729
    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    .line 730
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokesOutBounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 731
    iput v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeWidth:F

    .line 732
    iput v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeHeight:F

    .line 733
    new-instance v2, Lcom/metamoji/cm/SizeF;

    invoke-direct {v2}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeMaxSize:Lcom/metamoji/cm/SizeF;

    .line 734
    iput v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_lineSpacingCoef:F

    const/16 v1, 0x3c

    .line 735
    sput v1, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    .line 737
    iget-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 739
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 740
    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/tle/TextLineExtractorManager;->loadSettings()V

    return-void
.end method

.method private addMostOldAuthorInfoFromStrokeIds(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3401
    invoke-direct {p0, p2}, Lcom/metamoji/tle/TextLineExtractorManager;->getMostOldAuthorInfo(Ljava/util/List;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3403
    invoke-virtual {p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->getParagraphStyle()Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3405
    invoke-virtual {p1, p2}, Lcom/metamoji/un/text/model/paragstyle/MutableParagraphStyle;->setAuthorInfo(Lcom/metamoji/nt/NtAuthorInfo;)V

    :cond_0
    return-void
.end method

.method private addStroke(Lcom/metamoji/nt/NtStrokeInfo;Z)V
    .locals 9

    .line 1044
    iget-object v0, p1, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    .line 1045
    invoke-virtual {v0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1052
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextLineExtractStrokeCount()I

    move-result p2

    if-lez p2, :cond_1

    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextLineExtractStrokeCount()I

    move-result p2

    if-lt v1, p2, :cond_1

    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    if-nez p2, :cond_2

    .line 1058
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    .line 1060
    :cond_2
    iget-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    if-nez p2, :cond_3

    .line 1061
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    .line 1069
    :cond_3
    new-instance p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2}, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 1070
    iput-object p1, p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    const/high16 v2, -0x31000000

    const/high16 v3, 0x4f000000

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    move v3, v2

    move v4, v5

    :goto_1
    if-ge v6, v1, :cond_4

    .line 1077
    invoke-virtual {v0, v6}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v7

    .line 1085
    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1086
    iget v8, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1087
    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v8}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1088
    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1092
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    sub-float v1, v2, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    add-float v2, v4, v6

    :goto_2
    sub-float v1, v3, v5

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    goto :goto_3

    :cond_6
    add-float v3, v5, v6

    .line 1093
    :goto_3
    invoke-direct {v0, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    .line 1095
    iget v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeWidth:F

    iget-object v1, p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeWidth:F

    .line 1096
    iget v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeHeight:F

    iget-object v1, p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeHeight:F

    .line 1097
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeMaxSize:Lcom/metamoji/cm/SizeF;

    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v2, p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 1098
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeMaxSize:Lcom/metamoji/cm/SizeF;

    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    iget-object v2, p2, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 1100
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    iget-object p1, p1, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addStrokes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtStrokeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1032
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtStrokeInfo;

    const/4 v1, 0x1

    .line 1033
    invoke-direct {p0, v0, v1}, Lcom/metamoji/tle/TextLineExtractorManager;->addStroke(Lcom/metamoji/nt/NtStrokeInfo;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static analyzeTextLineExtract(Ljava/util/List;ZZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtStrokeInfo;",
            ">;ZZZZ)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    .line 551
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 564
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 570
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getInstance()Lcom/metamoji/tle/TextLineExtractorManager;

    move-result-object v3

    .line 571
    iput-boolean p3, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_isConfirm:Z

    .line 572
    iput-boolean p2, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_isRecognizeText:Z

    .line 573
    iput-boolean p4, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_isUnnecessaryFigure:Z

    .line 574
    sget-object p2, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Start:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iput-object p2, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 599
    invoke-direct {v3}, Lcom/metamoji/tle/TextLineExtractorManager;->beginLineExtractor()V

    .line 602
    invoke-direct {v3, p0}, Lcom/metamoji/tle/TextLineExtractorManager;->addStrokes(Ljava/util/List;)V

    .line 605
    invoke-direct {v3, v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager;->getLineResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 610
    :cond_1
    invoke-direct {v3, p0}, Lcom/metamoji/tle/TextLineExtractorManager;->getLineResultOfNoTextNoClassify(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 611
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/nt/NtStrokeInfo;

    .line 612
    invoke-direct {v3, p3, p2}, Lcom/metamoji/tle/TextLineExtractorManager;->addStroke(Lcom/metamoji/nt/NtStrokeInfo;Z)V

    goto :goto_0

    :cond_2
    move-object p0, p1

    .line 650
    :goto_1
    invoke-direct {v3, p0}, Lcom/metamoji/tle/TextLineExtractorManager;->setAnalysResult(Ljava/util/List;)V

    .line 653
    iget-boolean p0, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_isConfirm:Z

    if-nez p0, :cond_3

    .line 654
    invoke-direct {v3}, Lcom/metamoji/tle/TextLineExtractorManager;->createTextUnitSeed()Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 666
    :goto_2
    sget-object p1, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object p3, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne p1, p3, :cond_4

    .line 673
    invoke-direct {v3}, Lcom/metamoji/tle/TextLineExtractorManager;->terminateExtractor()V

    return-void

    .line 677
    :cond_4
    iget-boolean p1, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_isConfirm:Z

    if-eqz p1, :cond_5

    goto :goto_3

    .line 693
    :cond_5
    sget-object p1, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Start:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object p3, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne p1, p3, :cond_6

    if-eqz p0, :cond_6

    iget-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->textUnitModels:Ljava/util/List;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->textUnitModels:Ljava/util/List;

    .line 696
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 697
    iget-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->textUnitModels:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->removeStrokeIds:Ljava/util/List;

    invoke-direct {v3, p1, p3}, Lcom/metamoji/tle/TextLineExtractorManager;->insertTextUnit(Ljava/util/List;Ljava/util/List;)V

    .line 704
    sget-object p1, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Complete:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iput-object p1, v3, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    .line 708
    :cond_6
    invoke-direct {v3}, Lcom/metamoji/tle/TextLineExtractorManager;->terminateExtractor()V

    if-eqz p0, :cond_7

    .line 710
    iget-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->textUnitModels:Ljava/util/List;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->textUnitModels:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_8

    .line 711
    :cond_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_ConvertText_Error_NoConvert:I

    invoke-static {p0, p2}, Lcom/metamoji/cm/CmUtils;->modalConfirmDialog(II)V

    :cond_8
    :goto_3
    return-void
.end method

.method private beginLineExtractor()V
    .locals 3

    .line 906
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokesOutBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 907
    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeWidth:F

    .line 908
    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeHeight:F

    .line 909
    new-instance v1, Lcom/metamoji/cm/SizeF;

    invoke-direct {v1}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeMaxSize:Lcom/metamoji/cm/SizeF;

    .line 912
    invoke-direct {p0}, Lcom/metamoji/tle/TextLineExtractorManager;->isRun()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 956
    :cond_0
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getDictionaryFilePaths()[Ljava/lang/String;

    move-result-object v1

    .line 959
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractor;->getInstance()Lcom/metamoji/tle/TextLineExtractor;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    .line 967
    invoke-virtual {v2, v1}, Lcom/metamoji/tle/TextLineExtractor;->attachDictionary([Ljava/lang/String;)Lcom/metamoji/tle/ProcessingStatus;

    .line 971
    iget-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    iget v2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_lineSpacingCoef:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40800000    # 4.0f

    :goto_0
    invoke-virtual {v1, v2}, Lcom/metamoji/tle/TextLineExtractor;->setLineCoef(F)V

    return-void
.end method

.method public static clearTextLineExtractorSettingsCache()V
    .locals 1

    const/4 v0, -0x1

    .line 751
    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    .line 753
    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 755
    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    .line 757
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager;->_instance:Lcom/metamoji/tle/TextLineExtractorManager;

    if-eqz v0, :cond_0

    .line 758
    invoke-direct {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->loadSettings()V

    :cond_0
    return-void
.end method

.method private correctHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Landroid/graphics/RectF;FFLjava/util/List;)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            "Landroid/graphics/RectF;",
            "FF",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;"
        }
    .end annotation

    .line 2975
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    neg-float p2, p2

    .line 2977
    new-instance p5, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    invoke-direct {p5, p3, p4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    const/4 p3, 0x0

    .line 2978
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 2979
    invoke-virtual {p1, p3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object p4

    .line 2980
    invoke-interface {p4}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 2981
    invoke-interface {p4}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p4

    .line 2983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2984
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 2985
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, p2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2986
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2988
    :cond_0
    invoke-static {v1, p4}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->createStroke(Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    move-result-object p4

    .line 2989
    invoke-virtual {p5, p4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p5
.end method

.method private createHandwriteStrokes(Ljava/util/List;Ljava/util/List;IIFF)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/PointArray;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;IIFF)",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;"
        }
    .end annotation

    .line 2899
    new-instance v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    invoke-direct {v0, p5, p6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    move p5, p3

    :goto_0
    add-int p6, p3, p4

    if-ge p5, p6, :cond_0

    .line 2901
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/metamoji/cm/PointArray;

    .line 2902
    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 2903
    invoke-virtual {p6}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p6

    invoke-static {p6, v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->createStroke(Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    move-result-object p6

    .line 2904
    invoke-virtual {v0, p6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createStringWs(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;",
            ">;)",
            "Lcom/metamoji/un/text/model/stringws/StringWithStrokes;"
        }
    .end annotation

    .line 3140
    new-instance v0, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3, v1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 3143
    new-instance p1, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;

    invoke-direct {p1}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;-><init>()V

    .line 3144
    new-instance p3, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p3, p2}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/metamoji/un/text/model/attr/MutableStringAttributes;->setColor(Lcom/metamoji/un/text/model/ColorComponent;)V

    .line 3145
    invoke-virtual {v0, p1}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;->fillAttributesForString(Lcom/metamoji/un/text/model/attr/StringAttributes;)V

    :cond_0
    return-object v0
.end method

.method private createTextModel(Ljava/util/List;)Lcom/metamoji/un/text/model/TextModel;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;",
            ">;)",
            "Lcom/metamoji/un/text/model/TextModel;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2391
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    const/4 v9, 0x0

    move-object/from16 v1, p1

    .line 2400
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;

    .line 2401
    iget-object v10, v2, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->frameRect:Landroid/graphics/RectF;

    .line 2404
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;

    .line 2405
    iget-object v4, v4, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->frameRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    add-float/2addr v3, v4

    goto :goto_0

    :cond_1
    int-to-float v2, v7

    div-float/2addr v3, v2

    .line 2415
    const-string v2, "W"

    const-string v4, ""

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v2, v4, v12}, Lcom/metamoji/un/text/sprite/TextSprite;->getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v3, v12

    const v4, 0x3f91745d

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    .line 2421
    invoke-static {v3}, Lcom/metamoji/tle/TextLineExtractUtil;->toUseableFontSize(F)F

    move-result v13

    .line 2428
    iget-boolean v2, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_isRecognizeText:Z

    if-eqz v2, :cond_2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v13

    .line 2430
    invoke-static {v2}, Lcom/metamoji/tle/TextLineExtractUtil;->toUseableFontSize(F)F

    move-result v2

    move v14, v2

    goto :goto_1

    :cond_2
    move v14, v13

    :goto_1
    cmpl-float v2, v11, v13

    if-eqz v2, :cond_3

    const/high16 v2, 0x42d80000    # 108.0f

    div-float/2addr v2, v13

    move/from16 v16, v2

    goto :goto_2

    :cond_3
    const/high16 v16, 0x3f800000    # 1.0f

    .line 2442
    :goto_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 2443
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 2446
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    .line 2447
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->getTextUnitSettings()Lcom/metamoji/un/text/IUnTextSettings;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/text/UnTextUnit;->createNewTextModel(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/un/text/IUnTextSettings;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/text/model/TextModel;

    .line 2448
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultStringAttributes()Lcom/metamoji/un/text/model/attr/StringAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/text/model/attr/StringAttributes;->getFontName()Ljava/lang/String;

    move-result-object v3

    .line 2450
    invoke-virtual {v2, v3, v14}, Lcom/metamoji/un/text/model/TextModel;->makeFontSetting(Ljava/lang/String;F)V

    .line 2453
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getDefaultUnitFontColor()Lcom/metamoji/un/text/model/ColorComponent;

    move-result-object v4

    .line 2456
    sget-boolean v5, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    if-eqz v5, :cond_4

    .line 2457
    invoke-virtual {v2, v9}, Lcom/metamoji/un/text/model/TextModel;->setVerticalWriting(Z)V

    .line 2465
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/un/text/model/TextModel;->getStringWsArrayObject()Lcom/metamoji/un/text/model/StringWithStrokesArray;

    move-result-object v5

    const/high16 v6, -0x1000000

    move/from16 v17, v11

    const v11, 0x3e4ccccd    # 0.2f

    .line 2467
    invoke-static {v6, v11, v8}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    .line 2469
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2472
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/high16 v19, -0x40800000    # -1.0f

    const-wide/16 v20, 0x0

    move/from16 v6, v17

    move/from16 v1, v19

    move-wide/from16 v22, v20

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v8, v24

    check-cast v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;

    move/from16 v24, v12

    .line 2473
    iget-object v12, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->frameRect:Landroid/graphics/RectF;

    const/high16 v25, 0x3f800000    # 1.0f

    .line 2475
    iget-object v15, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->connectType:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    move-object/from16 v27, v10

    .line 2478
    iget-wide v9, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->rotation:D

    add-double v22, v22, v9

    .line 2481
    sget-object v9, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Bottom:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    if-ne v9, v15, :cond_5

    .line 2483
    new-instance v6, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    const-string v9, "\n"

    invoke-direct {v6, v9}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    move/from16 v9, v17

    goto :goto_4

    :cond_5
    move v9, v6

    .line 2487
    :goto_4
    iget v6, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v13

    move v10, v1

    .line 2490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2491
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    move-object v15, v2

    .line 2493
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2496
    new-instance v28, Landroid/graphics/RectF;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v29, v3

    .line 2503
    iget-object v3, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementArray:Ljava/util/List;

    .line 2504
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v30, -0x31000000

    const/high16 v31, 0x4f000000

    move-object/from16 p1, v3

    move/from16 v32, v6

    move/from16 v3, v30

    move/from16 v6, v31

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    move v4, v3

    move v5, v6

    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    move/from16 v34, v9

    move-object/from16 v9, v33

    check-cast v9, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;

    move/from16 v33, v10

    .line 2505
    iget-object v10, v9, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->pointArray:Lcom/metamoji/cm/PointArray;

    .line 2506
    iget-object v9, v9, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->pointsStyle:Lcom/metamoji/nt/share/NtPenStyle;

    move-object/from16 v35, v10

    .line 2508
    new-instance v10, Lcom/metamoji/cm/PointArray;

    invoke-direct {v10}, Lcom/metamoji/cm/PointArray;-><init>()V

    .line 2509
    invoke-virtual/range {v35 .. v35}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    move/from16 v37, v13

    move-object/from16 v13, v36

    check-cast v13, Landroid/graphics/PointF;

    move-object/from16 v36, v15

    .line 2510
    new-instance v15, Landroid/graphics/PointF;

    move/from16 v38, v7

    iget v7, v13, Landroid/graphics/PointF;->x:F

    move/from16 v39, v7

    iget v7, v12, Landroid/graphics/RectF;->left:F

    sub-float v7, v39, v7

    mul-float v7, v7, v16

    move-object/from16 v39, v12

    iget v12, v13, Landroid/graphics/PointF;->y:F

    sub-float v12, v12, v32

    mul-float v12, v12, v16

    invoke-direct {v15, v7, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2513
    invoke-virtual {v10, v15}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 2515
    iget v7, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2516
    iget v7, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2517
    iget v7, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2518
    iget v7, v13, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 v15, v36

    move/from16 v13, v37

    move/from16 v7, v38

    move-object/from16 v12, v39

    goto :goto_6

    :cond_6
    move/from16 v38, v7

    move-object/from16 v39, v12

    move/from16 v37, v13

    move-object/from16 v36, v15

    .line 2522
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2523
    invoke-direct {v0, v9, v14}, Lcom/metamoji/tle/TextLineExtractorManager;->getStrokeStyle(Lcom/metamoji/nt/share/NtPenStyle;F)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v33

    move/from16 v9, v34

    move/from16 v7, v38

    goto/16 :goto_5

    :cond_7
    move/from16 v38, v7

    move/from16 v34, v9

    move/from16 v33, v10

    move-object/from16 v39, v12

    move/from16 v37, v13

    move-object/from16 v36, v15

    .line 2526
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2529
    iget-object v7, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementStrokeIds:Ljava/util/List;

    const/4 v3, 0x0

    .line 2534
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/high16 v5, -0x3d280000    # -108.0f

    const/4 v6, 0x0

    move-object/from16 v9, v29

    move-object/from16 v12, v30

    move-object/from16 v13, v31

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/tle/TextLineExtractorManager;->createHandwriteStrokes(Ljava/util/List;Ljava/util/List;IIFF)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    move-result-object v3

    move-object/from16 v29, v2

    move v4, v6

    move-object v6, v1

    const/4 v1, 0x0

    .line 2544
    invoke-virtual {v3, v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->divide2CharacterStrokes(Z)Ljava/util/List;

    move-result-object v2

    .line 2569
    iget-boolean v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_isRecognizeText:Z

    if-eqz v1, :cond_24

    .line 2584
    iget v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_divideCharFontRatio:F

    cmpl-float v1, v1, v17

    const/high16 v30, -0x40000000    # -2.0f

    if-lez v1, :cond_a

    .line 2585
    invoke-direct {v0, v2}, Lcom/metamoji/tle/TextLineExtractorManager;->getStrokeMaxWidth(Ljava/util/List;)F

    move-result v1

    cmpl-float v3, v1, v17

    if-ltz v3, :cond_9

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v37

    .line 2589
    iget v3, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_divideCharFontRatio:F

    sub-float v3, v25, v3

    const v31, 0x3f666666    # 0.9f

    mul-float v3, v3, v31

    const v31, 0x3dcccccd    # 0.1f

    add-float v3, v3, v31

    const/high16 v31, 0x41200000    # 10.0f

    cmpg-float v31, v14, v31

    if-gez v31, :cond_8

    float-to-double v4, v1

    move-object/from16 v32, v2

    float-to-double v1, v3

    const-wide v35, 0x3fe3333333333333L    # 0.6

    mul-double v1, v1, v35

    mul-double/2addr v4, v1

    double-to-float v1, v4

    goto :goto_7

    :cond_8
    move-object/from16 v32, v2

    mul-float/2addr v1, v3

    goto :goto_7

    :cond_9
    move-object/from16 v32, v2

    :goto_7
    move/from16 v33, v1

    goto :goto_8

    :cond_a
    move-object/from16 v32, v2

    move/from16 v33, v30

    .line 2602
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2604
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v2

    .line 2605
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move-object v3, v7

    move/from16 v41, v19

    move/from16 v40, v34

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 2606
    invoke-direct {v0, v5}, Lcom/metamoji/tle/TextLineExtractorManager;->isPointsCountZero(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v42

    if-eqz v42, :cond_b

    .line 2612
    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v43

    goto :goto_a

    :cond_b
    invoke-direct {v0, v5}, Lcom/metamoji/tle/TextLineExtractorManager;->getStrokesOutBounds(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Landroid/graphics/RectF;

    move-result-object v43

    :goto_a
    move-object/from16 v44, v43

    if-eqz v42, :cond_c

    const/16 v43, 0x0

    goto :goto_b

    :cond_c
    move-object/from16 v43, v5

    :goto_b
    const/16 v45, 0x1

    if-nez v42, :cond_12

    .line 2618
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_d

    move-object/from16 v46, v1

    move-object v1, v5

    const/4 v5, 0x0

    move/from16 p1, v7

    move v7, v2

    move-object/from16 v2, v28

    move/from16 v28, p1

    move-object/from16 v48, v3

    move-object/from16 v49, v4

    move-object/from16 p1, v6

    move-object/from16 v6, v32

    move-object/from16 v47, v46

    const/high16 v3, -0x3d280000    # -108.0f

    const/4 v4, 0x0

    .line 2619
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/tle/TextLineExtractorManager;->correctHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Landroid/graphics/RectF;FFLjava/util/List;)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    move-result-object v43

    move-object v5, v1

    move-object v1, v2

    goto :goto_c

    :cond_d
    move-object/from16 v47, v1

    move-object/from16 v48, v3

    move-object/from16 v49, v4

    move-object/from16 p1, v6

    move-object/from16 v1, v28

    move-object/from16 v6, v32

    const/high16 v3, -0x3d280000    # -108.0f

    const/4 v4, 0x0

    move/from16 v28, v7

    move v7, v2

    :goto_c
    move-object/from16 v2, v43

    const/4 v3, 0x0

    const/16 v32, 0x0

    .line 2624
    :goto_d
    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 2625
    invoke-virtual {v2, v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v4

    .line 2628
    invoke-interface {v4}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v4

    if-eqz v4, :cond_10

    if-nez v32, :cond_10

    .line 2634
    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v32

    if-gtz v32, :cond_e

    .line 2635
    invoke-direct {v0, v4}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextColorFromStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/lang/Integer;

    move-result-object v49

    if-eqz v49, :cond_e

    .line 2637
    new-instance v4, Lcom/metamoji/un/text/model/ColorComponent;

    move/from16 v46, v3

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v3}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    .line 2639
    invoke-virtual {v4, v12}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v49, 0x0

    goto :goto_e

    :cond_e
    move/from16 v46, v3

    :cond_f
    :goto_e
    move/from16 v32, v45

    goto :goto_f

    :cond_10
    move/from16 v46, v3

    :goto_f
    add-int/lit8 v3, v46, 0x1

    goto :goto_d

    :cond_11
    move-object/from16 v3, v47

    .line 2649
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2658
    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 2661
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v32, v1

    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2662
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v1

    move/from16 v46, v1

    .line 2663
    iget v1, v4, Landroid/graphics/RectF;->left:F

    sub-float v1, v1, v24

    iput v1, v4, Landroid/graphics/RectF;->left:F

    add-float v1, v46, v24

    .line 2664
    invoke-static {v4, v1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 2665
    invoke-virtual {v2, v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    goto :goto_10

    :cond_12
    move-object/from16 v48, v3

    move-object/from16 v49, v4

    move-object/from16 p1, v6

    move-object/from16 v6, v32

    move-object v3, v1

    move-object/from16 v32, v28

    move/from16 v28, v7

    move v7, v2

    :goto_10
    move-object/from16 v1, v49

    if-eqz v42, :cond_13

    cmpl-float v2, v30, v33

    if-nez v2, :cond_17

    :cond_13
    add-int/lit8 v2, v36, 0x1

    if-ge v2, v7, :cond_17

    .line 2673
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 2674
    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v4

    if-lez v4, :cond_17

    const/4 v4, 0x0

    .line 2675
    invoke-virtual {v2, v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2677
    invoke-direct {v0, v2}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextColorFromStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 2679
    new-instance v4, Lcom/metamoji/un/text/model/ColorComponent;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v4, v0}, Lcom/metamoji/un/text/model/ColorComponent;-><init>(I)V

    .line 2681
    invoke-virtual {v4, v12}, Lcom/metamoji/un/text/model/ColorComponent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x0

    :cond_14
    if-nez v1, :cond_15

    if-nez v2, :cond_18

    :cond_15
    if-nez v2, :cond_16

    if-nez v1, :cond_18

    :cond_16
    if-eqz v1, :cond_17

    if-eqz v2, :cond_17

    .line 2688
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    const/16 v45, 0x0

    :cond_18
    :goto_11
    if-nez v45, :cond_1a

    if-eqz v42, :cond_19

    cmpl-float v0, v30, v33

    if-nez v0, :cond_1a

    .line 2696
    :cond_19
    invoke-virtual/range {v44 .. v44}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    if-nez v45, :cond_1e

    if-eqz v42, :cond_1b

    cmpl-float v0, v30, v33

    if-nez v0, :cond_1e

    :cond_1b
    cmpl-float v0, v19, v41

    if-eqz v0, :cond_1c

    cmpl-float v0, v33, v17

    if-ltz v0, :cond_1c

    move-object/from16 v0, v44

    .line 2700
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float v2, v2, v41

    cmpl-float v2, v2, v33

    if-lez v2, :cond_1d

    goto :goto_12

    :cond_1c
    move-object/from16 v0, v44

    .line 2732
    :cond_1d
    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v2

    add-int v2, v28, v2

    move-object/from16 v26, v6

    move-object/from16 v44, v11

    move-object/from16 v31, v12

    move-object/from16 v42, v15

    const/4 v4, 0x0

    const/high16 v5, -0x3d280000    # -108.0f

    const/16 v43, 0x0

    move-object v12, v0

    move v6, v2

    move-object/from16 v2, v29

    move-object/from16 v0, p0

    move/from16 v29, v7

    move-object v7, v3

    move-object v3, v1

    move-object/from16 v1, p1

    goto :goto_14

    :cond_1e
    move-object/from16 v0, v44

    :goto_12
    if-nez v42, :cond_1f

    .line 2703
    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v2

    add-int v2, v28, v2

    move v4, v2

    goto :goto_13

    :cond_1f
    move/from16 v4, v28

    :goto_13
    move-object/from16 v26, v6

    move-object/from16 v44, v11

    move-object/from16 v31, v12

    move-object/from16 v42, v15

    move-object/from16 v2, v29

    const/high16 v5, -0x3d280000    # -108.0f

    const/4 v6, 0x0

    const/16 v43, 0x0

    move-object v12, v0

    move-object v15, v1

    move/from16 v29, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v3

    move/from16 v3, v34

    .line 2706
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/tle/TextLineExtractorManager;->recognizeStrokes(Ljava/util/List;Ljava/util/List;IIFF)Ljava/lang/String;

    move-result-object v11

    move/from16 v28, v4

    move v4, v6

    .line 2712
    invoke-direct {v0, v11, v15, v7}, Lcom/metamoji/tle/TextLineExtractorManager;->createStringWs(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v6

    .line 2713
    invoke-virtual {v13, v6}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    move-object/from16 v7, v48

    .line 2716
    invoke-direct {v0, v6, v7}, Lcom/metamoji/tle/TextLineExtractorManager;->addMostOldAuthorInfoFromStrokeIds(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/util/List;)V

    .line 2721
    invoke-static {v11, v9, v14}, Lcom/metamoji/un/text/sprite/TextSprite;->getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v6

    .line 2722
    iget v6, v6, Lcom/metamoji/cm/SizeF;->width:F

    add-float v40, v40, v6

    add-int v34, v3, v28

    .line 2726
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    move/from16 v6, v43

    const/4 v3, 0x0

    const/16 v48, 0x0

    .line 2735
    :goto_14
    iget v11, v12, Landroid/graphics/RectF;->right:F

    move-object v15, v3

    move/from16 v41, v11

    move-object/from16 v3, v48

    goto :goto_15

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v26, v6

    move-object/from16 v44, v11

    move-object/from16 v31, v12

    move-object/from16 v42, v15

    move-object/from16 v2, v29

    move-object/from16 v11, v48

    const/4 v4, 0x0

    const/high16 v5, -0x3d280000    # -108.0f

    const/16 v43, 0x0

    move-object v15, v1

    move/from16 v29, v7

    move-object/from16 v1, p1

    move-object v7, v3

    move/from16 v3, v34

    move/from16 v34, v3

    move-object v3, v11

    move/from16 v6, v28

    :goto_15
    add-int/lit8 v36, v36, 0x1

    move v4, v6

    move-object v6, v1

    move-object v1, v7

    move v7, v4

    move/from16 v4, v29

    move-object/from16 v29, v2

    move v2, v4

    move-object v4, v15

    move-object/from16 v12, v31

    move-object/from16 v28, v32

    move-object/from16 v15, v42

    move-object/from16 v11, v44

    move-object/from16 v32, v26

    goto/16 :goto_9

    :cond_21
    move-object/from16 v49, v4

    move/from16 v28, v7

    move-object/from16 v44, v11

    move-object/from16 v31, v12

    move-object/from16 v42, v15

    move-object/from16 v2, v29

    const/4 v4, 0x0

    const/high16 v5, -0x3d280000    # -108.0f

    const/16 v43, 0x0

    move-object v7, v1

    move-object v11, v3

    move-object v1, v6

    move/from16 v3, v34

    if-lez v28, :cond_22

    .line 2742
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_22

    move v6, v4

    move/from16 v4, v28

    .line 2743
    invoke-direct/range {v0 .. v6}, Lcom/metamoji/tle/TextLineExtractorManager;->recognizeStrokes(Ljava/util/List;Ljava/util/List;IIFF)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v49

    .line 2749
    invoke-direct {v0, v1, v15, v7}, Lcom/metamoji/tle/TextLineExtractorManager;->createStringWs(Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;)Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    move-result-object v2

    .line 2750
    invoke-virtual {v13, v2}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 2753
    invoke-direct {v0, v2, v11}, Lcom/metamoji/tle/TextLineExtractorManager;->addMostOldAuthorInfoFromStrokeIds(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/util/List;)V

    .line 2758
    invoke-static {v1, v9, v14}, Lcom/metamoji/un/text/sprite/TextSprite;->getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v1

    .line 2759
    iget v1, v1, Lcom/metamoji/cm/SizeF;->width:F

    add-float v40, v40, v1

    :cond_22
    move/from16 v1, v40

    cmpl-float v2, v1, v17

    if-lez v2, :cond_23

    .line 2764
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_16

    :cond_23
    move v2, v10

    :goto_16
    move v6, v1

    move v1, v2

    goto/16 :goto_1c

    :cond_24
    move-object/from16 v26, v2

    move-object/from16 v44, v11

    move-object/from16 v31, v12

    move-object/from16 v42, v15

    move-object/from16 v32, v28

    const/16 v43, 0x0

    .line 2770
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2771
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v11, v7

    move-object v7, v1

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 2772
    invoke-direct {v0, v1}, Lcom/metamoji/tle/TextLineExtractorManager;->isPointsCountZero(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v3, 0x0

    goto :goto_18

    :cond_25
    move-object v3, v1

    :goto_18
    if-nez v2, :cond_29

    .line 2783
    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    move v3, v5

    const/4 v5, 0x0

    move-object/from16 v2, v32

    .line 2784
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/tle/TextLineExtractorManager;->correctHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Landroid/graphics/RectF;FFLjava/util/List;)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    move-result-object v5

    move v12, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_19

    :cond_26
    move-object v2, v3

    move v12, v4

    move v4, v5

    move-object v3, v1

    move-object/from16 v1, v32

    .line 2787
    :goto_19
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2797
    invoke-direct {v0, v3}, Lcom/metamoji/tle/TextLineExtractorManager;->isPointsCountZero(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 2798
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_1a

    .line 2803
    :cond_27
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_28

    .line 2804
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v3

    .line 2805
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_28

    .line 2806
    new-instance v3, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v3, v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;)V

    .line 2807
    invoke-virtual {v13, v3}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 2808
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2811
    invoke-direct {v0, v3, v11}, Lcom/metamoji/tle/TextLineExtractorManager;->addMostOldAuthorInfoFromStrokeIds(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/util/List;)V

    const/4 v11, 0x0

    .line 2819
    :cond_28
    :goto_1a
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2820
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 2821
    iget v15, v3, Landroid/graphics/RectF;->left:F

    sub-float v15, v15, v24

    iput v15, v3, Landroid/graphics/RectF;->left:F

    add-float v5, v5, v24

    .line 2822
    invoke-static {v3, v5}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 2823
    invoke-virtual {v2, v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    goto :goto_1b

    :cond_29
    move v12, v4

    move v4, v5

    move-object/from16 v1, v32

    :goto_1b
    move-object/from16 v32, v1

    move v5, v4

    move v4, v12

    goto/16 :goto_17

    .line 2828
    :cond_2a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 2829
    new-instance v1, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;

    invoke-direct {v1, v7}, Lcom/metamoji/un/text/model/stringws/StringWithStrokes;-><init>(Ljava/util/List;)V

    .line 2830
    invoke-virtual {v13, v1}, Lcom/metamoji/un/text/model/StringWithStrokesArray;->addStringWs(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;)V

    .line 2833
    invoke-direct {v0, v1, v11}, Lcom/metamoji/tle/TextLineExtractorManager;->addMostOldAuthorInfoFromStrokeIds(Lcom/metamoji/un/text/model/stringws/StringWithStrokes;Ljava/util/List;)V

    :cond_2b
    move v1, v10

    move/from16 v6, v34

    .line 2846
    :goto_1c
    iget-object v2, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->strokeIds:Ljava/util/List;

    if-nez v2, :cond_2c

    .line 2849
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    move-object/from16 v3, v44

    .line 2853
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v27

    move-object/from16 v4, v39

    .line 2855
    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    move-object v10, v2

    move-object v11, v3

    move-object v3, v9

    move-object v5, v13

    move/from16 v12, v24

    move-object/from16 v4, v31

    move/from16 v13, v37

    move/from16 v7, v38

    move-object/from16 v2, v42

    move/from16 v9, v43

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v42, v2

    move/from16 v38, v7

    move-object v2, v10

    move-object v3, v11

    move v10, v1

    cmpl-float v1, v10, v17

    if-lez v1, :cond_2e

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v1, v10

    .line 2860
    invoke-static {v2, v1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 2863
    :cond_2e
    iget-boolean v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_isRecognizeText:Z

    if-eqz v1, :cond_2f

    .line 2864
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v14

    if-lez v1, :cond_2f

    .line 2865
    invoke-static {v2, v14}, Lcom/metamoji/cm/RectUtils;->setHeight(Landroid/graphics/RectF;F)V

    .line 2870
    :cond_2f
    iget v1, v2, Landroid/graphics/RectF;->left:F

    float-to-double v4, v1

    const-string/jumbo v1, "x"

    move-object/from16 v15, v42

    invoke-virtual {v15, v1, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 2871
    iget v1, v2, Landroid/graphics/RectF;->top:F

    float-to-double v4, v1

    const-string/jumbo v1, "y"

    invoke-virtual {v15, v1, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 2872
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-double v4, v1

    const-string/jumbo v1, "width"

    invoke-virtual {v15, v1, v4, v5}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 2873
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-double v1, v1

    const-string v4, "height"

    invoke-virtual {v15, v4, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    if-lez v38, :cond_30

    move/from16 v1, v38

    int-to-double v1, v1

    div-double v22, v22, v1

    move-wide/from16 v1, v22

    goto :goto_1d

    :cond_30
    move-wide/from16 v1, v20

    :goto_1d
    cmpl-double v4, v20, v1

    if-eqz v4, :cond_31

    .line 2883
    invoke-direct {v0, v1, v2}, Lcom/metamoji/tle/TextLineExtractorManager;->rotationReflect(D)D

    move-result-wide v1

    cmpl-double v4, v20, v1

    if-eqz v4, :cond_31

    .line 2884
    const-string/jumbo v4, "rotation"

    invoke-virtual {v15, v4, v1, v2}, Lcom/metamoji/un/text/model/TextModel;->setProperty(Ljava/lang/String;D)V

    .line 2889
    :cond_31
    iget-object v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    if-nez v1, :cond_32

    .line 2890
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    .line 2892
    :cond_32
    iget-object v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    const-string/jumbo v2, "unitId"

    invoke-virtual {v15, v2}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v15
.end method

.method private createTextUnitSeed()Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;
    .locals 53

    move-object/from16 v0, p0

    .line 1436
    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v2, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    .line 1440
    :cond_0
    iget-object v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    const/4 v1, 0x0

    .line 1459
    iput v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_createdModelCount:I

    .line 1462
    invoke-direct {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->reorderExtractResult()V

    .line 1465
    iget-object v2, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    .line 1467
    iget-object v4, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 1470
    iget-boolean v5, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_ignoreSmallBlock:Z

    const/high16 v6, 0x40800000    # 4.0f

    if-eqz v5, :cond_7

    .line 1481
    const-string v5, "W"

    const-string v9, ""

    invoke-static {v5, v9, v6}, Lcom/metamoji/un/text/sprite/TextSprite;->getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v5

    .line 1482
    iget v9, v5, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v5, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-int/lit8 v4, v4, -0x1

    .line 1523
    :goto_0
    iget-object v9, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    if-ltz v4, :cond_6

    .line 1486
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    .line 1487
    iget-object v10, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 1488
    iget-object v11, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 1489
    invoke-static {v10, v11}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object v11

    .line 1491
    iget-wide v12, v11, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget v14, v11, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget v11, v11, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v10, v12, v13, v14, v11}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v10

    .line 1493
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v11

    cmpg-float v11, v11, v5

    if-gez v11, :cond_2

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    cmpg-float v10, v10, v5

    if-gez v10, :cond_2

    .line 1494
    iget-object v9, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v16, v1

    goto :goto_2

    .line 1499
    :cond_2
    iget-object v9, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;

    .line 1504
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/high16 v10, 0x4f000000

    const/high16 v11, 0x4f000000

    const/high16 v12, -0x31000000

    const/high16 v13, -0x31000000

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1505
    iget-object v15, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    .line 1506
    iget-object v14, v14, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    .line 1507
    iget-object v14, v14, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    .line 1508
    invoke-virtual {v14}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/PointF;

    move/from16 v16, v1

    .line 1509
    iget v1, v15, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1510
    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1511
    iget v1, v15, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v1}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 1512
    iget v1, v15, Landroid/graphics/PointF;->y:F

    invoke-static {v13, v1}, Ljava/lang/Math;->max(FF)F

    move-result v13

    move/from16 v1, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v1

    .line 1515
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1517
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v9

    cmpg-float v9, v9, v5

    if-gez v9, :cond_5

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_5

    .line 1518
    iget-object v1, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, -0x1

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v1

    .line 1523
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_3

    :cond_7
    move/from16 v16, v1

    :goto_3
    if-eqz v2, :cond_40

    if-nez v4, :cond_8

    goto/16 :goto_22

    .line 1543
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    sget-object v5, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v9, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v5, v9, :cond_9

    return-object v3

    :cond_9
    move/from16 v5, v16

    :goto_4
    const/4 v14, 0x1

    if-ge v5, v4, :cond_20

    .line 1565
    sget-object v15, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v7, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v15, v7, :cond_a

    return-object v3

    .line 1570
    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    new-array v15, v14, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1571
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    iget-object v15, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    .line 1575
    iget-object v8, v15, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 1576
    iget-object v15, v15, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 1579
    invoke-static {v8, v15}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object v15

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    .line 1580
    sget-object v9, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 1589
    new-instance v10, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;

    invoke-direct {v10, v0, v15, v9}, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineRotateInfo;Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v5, 0x1

    if-ge v10, v4, :cond_1f

    .line 1593
    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    :goto_5
    if-ge v10, v4, :cond_1e

    move/from16 v22, v14

    .line 1596
    iget-object v14, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    const-wide/16 v23, 0x0

    .line 1597
    iget-object v12, v14, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 1598
    iget-object v13, v14, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 1600
    invoke-static {v12, v13}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object v13

    .line 1605
    invoke-direct {v0}, Lcom/metamoji/tle/TextLineExtractorManager;->getMultilineCombineSpaceRatio()F

    move-result v25

    const/high16 v26, -0x40800000    # -1.0f

    cmpl-float v26, v26, v25

    if-nez v26, :cond_b

    move-object/from16 v31, v2

    move-object/from16 v28, v3

    move/from16 v29, v4

    move/from16 v32, v5

    move/from16 v26, v6

    move-object/from16 v27, v7

    goto/16 :goto_6

    :cond_b
    move/from16 v26, v6

    move-object/from16 v27, v7

    .line 1612
    iget-wide v6, v13, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    move-object/from16 v28, v3

    move/from16 v29, v4

    iget-wide v3, v15, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    sub-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    .line 1617
    invoke-direct {v0, v3, v4}, Lcom/metamoji/tle/TextLineExtractorManager;->rotationReflect(D)D

    move-result-wide v3

    cmpl-double v3, v23, v3

    if-eqz v3, :cond_c

    move-object/from16 v31, v2

    move/from16 v32, v5

    goto :goto_6

    .line 1623
    :cond_c
    iget-wide v3, v15, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget-wide v6, v13, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    add-double/2addr v3, v6

    div-double v3, v3, v19

    .line 1624
    iget-wide v6, v15, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    sub-double v6, v3, v6

    neg-double v6, v6

    iget v11, v15, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    move-object/from16 v31, v2

    iget v2, v15, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v8, v6, v7, v11, v2}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v2

    .line 1625
    iget-wide v6, v13, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    sub-double v6, v3, v6

    neg-double v6, v6

    iget v11, v13, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    move/from16 v32, v5

    iget v5, v13, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v12, v6, v7, v11, v5}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v5

    .line 1628
    iget v6, v15, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget v7, v15, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v2, v3, v4, v6, v7}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v2

    .line 1629
    iget v6, v15, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget v7, v15, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v5, v3, v4, v6, v7}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v3

    .line 1632
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    .line 1634
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_d

    :goto_6
    move/from16 v2, v16

    move/from16 v4, v29

    goto/16 :goto_e

    .line 1639
    :cond_d
    sget-object v4, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 1642
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    move-object/from16 v5, v21

    .line 1643
    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_7

    :cond_e
    move-object/from16 v5, v21

    .line 1647
    :goto_7
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto/16 :goto_c

    .line 1661
    :cond_f
    invoke-static {v2, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1662
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1663
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v9, 0x0

    .line 1664
    iput v9, v6, Landroid/graphics/RectF;->left:F

    const/high16 v11, 0x41200000    # 10.0f

    .line 1665
    iput v11, v6, Landroid/graphics/RectF;->right:F

    .line 1666
    iput v9, v7, Landroid/graphics/RectF;->left:F

    .line 1667
    iput v11, v7, Landroid/graphics/RectF;->right:F

    .line 1669
    invoke-static {v6, v7}, Lcom/metamoji/cm/RectUtils;->intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 1671
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1672
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1673
    iput v9, v7, Landroid/graphics/RectF;->top:F

    .line 1674
    iput v11, v7, Landroid/graphics/RectF;->bottom:F

    .line 1675
    iput v9, v14, Landroid/graphics/RectF;->top:F

    .line 1676
    iput v11, v14, Landroid/graphics/RectF;->bottom:F

    .line 1678
    invoke-static {v7, v14}, Lcom/metamoji/cm/RectUtils;->intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    .line 1681
    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v9, :cond_12

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v9, v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v14

    mul-float/2addr v6, v14

    cmpl-float v6, v9, v6

    if-ltz v6, :cond_12

    .line 1683
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v6, v7

    div-float/2addr v6, v11

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    .line 1685
    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v9, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_10

    .line 1686
    iget v7, v3, Landroid/graphics/RectF;->left:F

    iget v9, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object v9, v4

    move-object/from16 v21, v5

    float-to-double v4, v7

    goto :goto_8

    :cond_10
    move-object v9, v4

    move-object/from16 v21, v5

    .line 1688
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    :goto_8
    mul-float v6, v6, v25

    float-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_11

    goto :goto_a

    .line 1695
    :cond_11
    sget-object v4, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Right:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 1696
    invoke-static {v2, v3}, Lcom/metamoji/cm/RectUtils;->union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v21

    goto :goto_b

    :cond_12
    move-object v9, v4

    move-object/from16 v21, v5

    .line 1699
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v11

    .line 1702
    invoke-virtual {v7}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 1704
    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13

    .line 1705
    iget v5, v3, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_9

    .line 1707
    :cond_13
    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    :goto_9
    float-to-double v5, v5

    mul-float v7, v4, v25

    move v11, v4

    move-wide/from16 v33, v5

    float-to-double v4, v7

    cmpl-double v4, v33, v4

    if-lez v4, :cond_14

    goto :goto_a

    .line 1714
    :cond_14
    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v11

    float-to-double v4, v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_17

    :cond_15
    :goto_a
    move/from16 v4, v29

    goto :goto_d

    :cond_16
    move-object v9, v4

    move-object/from16 v21, v5

    :cond_17
    move-object v4, v9

    .line 1724
    :goto_b
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    if-ne v2, v4, :cond_18

    .line 1725
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Bottom:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    move-object v9, v2

    goto/16 :goto_6

    :cond_18
    move-object v9, v4

    goto/16 :goto_6

    :cond_19
    :goto_c
    move-object v9, v4

    move-object/from16 v21, v5

    add-int/lit8 v2, v10, 0x1

    move/from16 v4, v29

    if-ge v2, v4, :cond_1a

    .line 1650
    iget-object v2, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1651
    iget-object v2, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v22

    goto :goto_e

    :cond_1a
    :goto_d
    move/from16 v2, v16

    :goto_e
    if-eqz v2, :cond_1b

    move-object/from16 v3, v27

    move/from16 v5, v32

    goto :goto_f

    .line 1735
    :cond_1b
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    if-ne v2, v9, :cond_1c

    goto :goto_10

    .line 1740
    :cond_1c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v27

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v32, 0x1

    .line 1743
    new-instance v2, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;

    invoke-direct {v2, v0, v13, v9}, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineRotateInfo;Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1752
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;->Right:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    if-eq v2, v9, :cond_1d

    .line 1753
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v21, v2

    :cond_1d
    move-object v8, v12

    move-object v15, v13

    :goto_f
    add-int/lit8 v10, v10, 0x1

    move-object v7, v3

    move/from16 v14, v22

    move/from16 v6, v26

    move-object/from16 v3, v28

    move-object/from16 v2, v31

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v31, v2

    move-object/from16 v28, v3

    move/from16 v32, v5

    move/from16 v26, v6

    move/from16 v22, v14

    :goto_10
    move/from16 v5, v32

    goto :goto_11

    :cond_1f
    move-object/from16 v31, v2

    move-object/from16 v28, v3

    move/from16 v26, v6

    move/from16 v22, v14

    :goto_11
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v26

    move-object/from16 v3, v28

    move-object/from16 v2, v31

    goto/16 :goto_4

    :cond_20
    move-object/from16 v31, v2

    move-object/from16 v28, v3

    move/from16 v26, v6

    move/from16 v22, v14

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    const-wide/16 v23, 0x0

    .line 1771
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v3, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v2, v3, :cond_21

    return-object v28

    .line 1776
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1782
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1786
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1792
    sget-object v10, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v11, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v10, v11, :cond_22

    return-object v28

    .line 1796
    :cond_22
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1801
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object/from16 v11, v28

    :goto_13
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1803
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-lt v13, v14, :cond_23

    goto :goto_13

    .line 1806
    :cond_23
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;

    .line 1807
    iget-object v14, v13, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;->rotateInfo:Lcom/metamoji/tle/TextLineRotateInfo;

    .line 1808
    iget-object v13, v13, Lcom/metamoji/tle/TextLineExtractorManager$ConnectInfo;->connectType:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 1810
    iget v15, v14, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    move-object/from16 v21, v1

    .line 1811
    iget v1, v14, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    .line 1812
    iget-wide v8, v14, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    .line 1814
    iget-object v14, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    .line 1815
    iget-object v14, v12, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 1817
    iget-object v12, v12, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;

    move-object/from16 v29, v2

    .line 1820
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1822
    invoke-static {v14, v8, v9, v15, v1}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v14

    move-object/from16 v31, v5

    const/high16 v5, 0x41400000    # 12.0f

    move-object/from16 v32, v11

    const/4 v11, 0x0

    .line 1824
    invoke-virtual {v14, v5, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 1827
    new-instance v30, Landroid/graphics/RectF;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/RectF;-><init>()V

    .line 1829
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    move/from16 v35, v5

    :goto_14
    move-object/from16 v5, v32

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v36, v4

    move-object/from16 v4, v32

    check-cast v4, Ljava/lang/String;

    move-object/from16 v37, v10

    .line 1831
    iget-object v10, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    .line 1832
    iget-object v10, v10, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    .line 1835
    invoke-static {v5, v10}, Lcom/metamoji/tle/TextLineExtractUtil;->mmjExpandStrokeInfoRect(Landroid/graphics/RectF;Lcom/metamoji/nt/NtStrokeInfo;)Landroid/graphics/RectF;

    move-result-object v5

    .line 1838
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v5

    .line 1840
    iget-object v5, v10, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    .line 1841
    invoke-virtual {v5}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v38

    if-lez v38, :cond_27

    move-object/from16 v38, v5

    .line 1850
    new-instance v5, Lcom/metamoji/cm/PointArray;

    invoke-direct {v5}, Lcom/metamoji/cm/PointArray;-><init>()V

    .line 1851
    invoke-virtual/range {v38 .. v38}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    move-object/from16 v39, v3

    move-object/from16 v42, v7

    move-object/from16 v41, v12

    move-object/from16 v40, v13

    const/high16 v3, 0x4f000000

    const/high16 v7, -0x31000000

    const/high16 v12, -0x31000000

    const/high16 v13, 0x4f000000

    :goto_15
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_24

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v44, v6

    move-object/from16 v6, v43

    check-cast v6, Landroid/graphics/PointF;

    move-object/from16 v43, v2

    .line 1855
    iget v2, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v15

    move-object/from16 v46, v10

    move-object/from16 v45, v11

    float-to-double v10, v2

    move-wide/from16 v47, v10

    neg-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v49

    mul-double v47, v47, v49

    iget v2, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    move-wide/from16 v49, v10

    float-to-double v10, v2

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v51

    mul-double v10, v10, v51

    sub-double v47, v47, v10

    float-to-double v10, v15

    add-double v10, v47, v10

    double-to-float v2, v10

    .line 1856
    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v15

    float-to-double v10, v10

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->sin(D)D

    move-result-wide v47

    mul-double v10, v10, v47

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    move-wide/from16 v47, v10

    float-to-double v10, v6

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->cos(D)D

    move-result-wide v49

    mul-double v10, v10, v49

    add-double v10, v47, v10

    move-wide/from16 v47, v10

    float-to-double v10, v1

    add-double v10, v47, v10

    double-to-float v6, v10

    add-float v2, v2, v35

    .line 1861
    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v10}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 1863
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1864
    invoke-static {v13, v6}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1865
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 1866
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    move-object/from16 v2, v43

    move-object/from16 v6, v44

    move-object/from16 v11, v45

    move-object/from16 v10, v46

    goto :goto_15

    :cond_24
    move-object/from16 v43, v2

    move-object/from16 v44, v6

    move-object/from16 v46, v10

    move-object/from16 v45, v11

    .line 1870
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v13, v12, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1872
    new-instance v3, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;

    move-object/from16 v6, v28

    invoke-direct {v3, v0, v6}, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 1873
    iput-object v5, v3, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->pointArray:Lcom/metamoji/cm/PointArray;

    move-object/from16 v5, v46

    .line 1874
    iget-object v5, v5, Lcom/metamoji/nt/NtStrokeInfo;->strokePenStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iput-object v5, v3, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->pointsStyle:Lcom/metamoji/nt/share/NtPenStyle;

    .line 1875
    iput-object v2, v3, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->frameRect:Landroid/graphics/RectF;

    .line 1878
    invoke-static {v14, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1879
    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_25

    move-object/from16 v30, v2

    goto :goto_16

    :cond_25
    move-object/from16 v6, v30

    .line 1882
    invoke-virtual {v6, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :goto_16
    move-object/from16 v2, v45

    .line 1885
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v43

    .line 1886
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v42

    move-object/from16 v10, v44

    goto :goto_18

    :cond_26
    move-object/from16 v6, v30

    move-object/from16 v7, v43

    move-object/from16 v10, v44

    move-object/from16 v2, v45

    .line 1888
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v42

    .line 1889
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    move-object/from16 v39, v3

    move-object v10, v6

    move-object v3, v7

    move-object/from16 v41, v12

    move-object/from16 v40, v13

    move-object/from16 v6, v30

    move-object v7, v2

    move-object v2, v11

    :goto_17
    move-object/from16 v30, v6

    :goto_18
    move-object v11, v2

    move-object v2, v7

    move-object v6, v10

    move-object/from16 v4, v36

    move-object/from16 v10, v37

    move-object/from16 v13, v40

    move-object/from16 v12, v41

    const/16 v28, 0x0

    move-object v7, v3

    move-object/from16 v3, v39

    goto/16 :goto_14

    :cond_28
    move-object/from16 v39, v3

    move-object/from16 v36, v4

    move-object v3, v7

    move-object/from16 v37, v10

    move-object/from16 v41, v12

    move-object/from16 v40, v13

    move-object v7, v2

    move-object v10, v6

    move-object v2, v11

    move-object/from16 v6, v30

    .line 1894
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_29

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1896
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1897
    iget v4, v6, Landroid/graphics/RectF;->left:F

    sub-float v4, v4, v26

    iput v4, v6, Landroid/graphics/RectF;->left:F

    move/from16 v11, v26

    move/from16 v4, v35

    .line 1898
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v1, v4

    invoke-static {v6, v1}, Lcom/metamoji/cm/RectUtils;->setWidth(Landroid/graphics/RectF;F)V

    .line 1900
    new-instance v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 1901
    iput-object v6, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->frameRect:Landroid/graphics/RectF;

    .line 1902
    iput-object v2, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementArray:Ljava/util/List;

    .line 1903
    iput-object v7, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementStrokeIds:Ljava/util/List;

    move-object/from16 v2, v41

    .line 1904
    iput-object v2, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->strokeIds:Ljava/util/List;

    .line 1905
    iput-wide v8, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->rotation:D

    move-object/from16 v2, v40

    .line 1906
    iput-object v2, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->connectType:Lcom/metamoji/tle/TextLineExtractorManager$ConnectType;

    .line 1907
    iput-object v14, v1, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->boundsRect:Landroid/graphics/RectF;

    move-object/from16 v2, v37

    .line 1908
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_29
    move/from16 v11, v26

    move-object/from16 v2, v37

    :goto_19
    move-object v7, v3

    move-object v6, v10

    move/from16 v26, v11

    move-object/from16 v1, v21

    move-object/from16 v8, v25

    move-object/from16 v9, v27

    move-object/from16 v4, v36

    move-object/from16 v3, v39

    const/16 v28, 0x0

    move-object v10, v2

    move-object v11, v5

    move-object/from16 v2, v29

    move-object/from16 v5, v31

    goto/16 :goto_13

    :cond_2a
    move-object/from16 v21, v1

    move-object/from16 v29, v2

    move-object/from16 v39, v3

    move-object/from16 v36, v4

    move-object/from16 v31, v5

    move-object v3, v7

    move-object/from16 v25, v8

    move-object v2, v10

    move-object/from16 v32, v11

    move/from16 v11, v26

    move-object v10, v6

    if-eqz v32, :cond_2b

    move-object/from16 v1, v36

    .line 1913
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    .line 1914
    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_2b
    move-object/from16 v4, v31

    move-object/from16 v1, v36

    :goto_1a
    move-object v7, v3

    move-object v5, v4

    move-object v6, v10

    move/from16 v26, v11

    move-object/from16 v8, v25

    move-object/from16 v2, v29

    move-object/from16 v3, v39

    const/16 v28, 0x0

    move-object v4, v1

    move-object/from16 v1, v21

    goto/16 :goto_12

    :cond_2c
    move-object/from16 v29, v2

    move-object/from16 v39, v3

    move-object v1, v4

    move-object v4, v5

    move-object v10, v6

    move-object v3, v7

    .line 1930
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v5, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v2, v5, :cond_2d

    const/16 v28, 0x0

    return-object v28

    .line 1934
    :cond_2d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    .line 1936
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_32

    move/from16 v5, v16

    :goto_1b
    if-ge v5, v2, :cond_32

    .line 1938
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;

    .line 1940
    iget-object v7, v6, Lcom/metamoji/tle/TextLineExtractorManager$ElementInfo;->frameRect:Landroid/graphics/RectF;

    .line 1944
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v9, v16

    :cond_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1945
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_30

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;

    .line 1947
    iget-object v13, v12, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->boundsRect:Landroid/graphics/RectF;

    .line 1950
    invoke-static {v13, v7}, Lcom/metamoji/cm/RectUtils;->intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    .line 1951
    invoke-virtual {v13}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2f

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v14, v13

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v15

    mul-float/2addr v13, v15

    div-float/2addr v14, v13

    float-to-double v13, v14

    const-wide v17, 0x3fe3333333333333L    # 0.6

    cmpl-double v13, v13, v17

    if-lez v13, :cond_2f

    .line 1953
    iget-object v9, v12, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementArray:Ljava/util/List;

    .line 1954
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1956
    iget-object v9, v12, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementStrokeIds:Ljava/util/List;

    .line 1957
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1960
    new-instance v9, Landroid/graphics/RectF;

    iget-object v11, v12, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->frameRect:Landroid/graphics/RectF;

    invoke-direct {v9, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1961
    invoke-virtual {v9, v7}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1962
    iput-object v9, v12, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->frameRect:Landroid/graphics/RectF;

    move/from16 v9, v22

    :cond_30
    if-eqz v9, :cond_2e

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1975
    :cond_32
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 1976
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1984
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v3, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v2, v3, :cond_33

    const/16 v28, 0x0

    return-object v28

    :cond_33
    const/16 v28, 0x0

    .line 1989
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1991
    sget-object v3, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v5, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v3, v5, :cond_34

    return-object v28

    .line 1995
    :cond_34
    invoke-direct {v0, v2}, Lcom/metamoji/tle/TextLineExtractorManager;->createTextModel(Ljava/util/List;)Lcom/metamoji/un/text/model/TextModel;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 1999
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 2000
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/graphics/RectF;

    goto :goto_1d

    :cond_35
    const/4 v6, 0x0

    :goto_1d
    if-eqz v6, :cond_37

    const/high16 v5, -0x3e600000    # -20.0f

    .line 2005
    invoke-virtual {v6, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 2008
    const-string/jumbo v5, "x"

    move-wide/from16 v7, v23

    invoke-virtual {v3, v5, v7, v8}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 2009
    const-string/jumbo v5, "y"

    invoke-virtual {v3, v5, v7, v8}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 2010
    const-string/jumbo v5, "width"

    invoke-virtual {v3, v5, v7, v8}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 2011
    const-string v5, "height"

    invoke-virtual {v3, v5, v7, v8}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v15

    .line 2012
    const-string/jumbo v5, "rotation"

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual {v3, v5, v7, v8}, Lcom/metamoji/un/text/model/TextModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 2013
    new-instance v5, Landroid/graphics/PointF;

    double-to-float v7, v9

    double-to-float v8, v11

    invoke-direct {v5, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v31, v4

    .line 2014
    new-instance v4, Landroid/graphics/PointF;

    move-wide/from16 v21, v9

    add-double v9, v21, v13

    double-to-float v9, v9

    invoke-direct {v4, v9, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2015
    new-instance v8, Landroid/graphics/PointF;

    move-wide/from16 v25, v11

    add-double v10, v25, v15

    double-to-float v10, v10

    invoke-direct {v8, v7, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2016
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const-wide/16 v23, 0x0

    cmpl-double v9, v23, v1

    if-eqz v9, :cond_36

    .line 2020
    new-instance v9, Landroid/graphics/PointF;

    div-double v13, v13, v19

    add-double v10, v21, v13

    double-to-float v10, v10

    div-double v15, v15, v19

    add-double v11, v25, v15

    double-to-float v11, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2021
    invoke-static {v5, v9, v1, v2}, Lcom/metamoji/tle/TextLineExtractUtil;->calcUnitRotatePos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;

    move-result-object v5

    .line 2022
    invoke-static {v4, v9, v1, v2}, Lcom/metamoji/tle/TextLineExtractUtil;->calcUnitRotatePos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;

    move-result-object v4

    .line 2023
    invoke-static {v8, v9, v1, v2}, Lcom/metamoji/tle/TextLineExtractUtil;->calcUnitRotatePos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;

    move-result-object v8

    .line 2024
    invoke-static {v7, v9, v1, v2}, Lcom/metamoji/tle/TextLineExtractUtil;->calcUnitRotatePos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;

    move-result-object v7

    .line 2027
    :cond_36
    iget v1, v5, Landroid/graphics/PointF;->x:F

    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget v9, v8, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2028
    iget v2, v5, Landroid/graphics/PointF;->y:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget v10, v8, Landroid/graphics/PointF;->y:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2029
    iget v9, v5, Landroid/graphics/PointF;->x:F

    iget v10, v4, Landroid/graphics/PointF;->x:F

    iget v11, v8, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 2030
    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2032
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v9, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1e

    :cond_37
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v31, v4

    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_38

    .line 2040
    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_38

    move-object/from16 v1, v29

    .line 2046
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_38
    move-object/from16 v1, v29

    .line 2049
    invoke-virtual {v3}, Lcom/metamoji/un/text/model/TextModel;->destroy()V

    .line 2051
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;

    .line 2052
    iget-object v3, v3, Lcom/metamoji/tle/TextLineExtractorManager$TextFrameInfo;->elementStrokeIds:Ljava/util/List;

    if-eqz v3, :cond_3a

    .line 2054
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v39

    .line 2055
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2056
    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_39
    move-object/from16 v39, v5

    goto :goto_20

    :cond_3a
    move-object/from16 v5, v39

    move-object/from16 v39, v5

    goto :goto_1f

    :cond_3b
    move-object/from16 v17, v1

    move-object/from16 v31, v4

    move-object/from16 v1, v29

    :cond_3c
    :goto_21
    move-object/from16 v5, v39

    move-object/from16 v29, v1

    move-object/from16 v39, v5

    move-object/from16 v1, v17

    move-object/from16 v4, v31

    const/16 v28, 0x0

    goto/16 :goto_1c

    :cond_3d
    move-object/from16 v1, v29

    move-object/from16 v5, v39

    .line 2078
    sget-object v2, Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;->Canceled:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    iget-object v3, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_processState:Lcom/metamoji/tle/TextLineExtractorManager$ProcessState;

    if-ne v2, v3, :cond_3e

    const/4 v4, 0x0

    return-object v4

    :cond_3e
    const/4 v4, 0x0

    .line 2082
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3f

    return-object v4

    .line 2086
    :cond_3f
    new-instance v2, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;

    invoke-direct {v2, v0, v4}, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 2087
    iput-object v1, v2, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->textUnitModels:Ljava/util/List;

    .line 2088
    iput-object v5, v2, Lcom/metamoji/tle/TextLineExtractorManager$TextUnitSeed;->removeStrokeIds:Ljava/util/List;

    return-object v2

    :cond_40
    :goto_22
    move-object v4, v3

    return-object v4
.end method

.method public static getDictionaryFilePaths()[Ljava/lang/String;
    .locals 5

    .line 139
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextLineExtractorDic"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 141
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "unarySvmModel.res"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "binarySvmScoreTbl.res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dictInfo.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static getInputViewForTLE()Lcom/metamoji/tle/InputViewForTLE;
    .locals 1

    .line 445
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getInputViewForTLE()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/tle/InputViewForTLE;

    return-object v0
.end method

.method private static getInstance()Lcom/metamoji/tle/TextLineExtractorManager;
    .locals 1

    .line 427
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager;->_instance:Lcom/metamoji/tle/TextLineExtractorManager;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/metamoji/tle/TextLineExtractorManager;

    invoke-direct {v0}, Lcom/metamoji/tle/TextLineExtractorManager;-><init>()V

    sput-object v0, Lcom/metamoji/tle/TextLineExtractorManager;->_instance:Lcom/metamoji/tle/TextLineExtractorManager;

    .line 430
    :cond_0
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager;->_instance:Lcom/metamoji/tle/TextLineExtractorManager;

    return-object v0
.end method

.method private getLineResult(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtStrokeInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtStrokeInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/metamoji/tle/TextLineExtractorManager$LineResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1132
    invoke-direct {v1}, Lcom/metamoji/tle/TextLineExtractorManager;->isRun()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 1137
    :cond_0
    invoke-direct {v1}, Lcom/metamoji/tle/TextLineExtractorManager;->setStrokeToExtractor()V

    .line 1140
    iget-object v4, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    return-object v5

    .line 1152
    :cond_1
    iget-object v4, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    invoke-virtual {v4}, Lcom/metamoji/tle/TextLineExtractor;->extractTextLine()Lcom/metamoji/tle/ProcessingStatus;

    .line 1155
    iget-object v4, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    invoke-virtual {v4}, Lcom/metamoji/tle/TextLineExtractor;->getResult()Lcom/metamoji/tle/TextLineArrayList;

    move-result-object v4

    .line 1166
    :try_start_0
    invoke-virtual {v4}, Lcom/metamoji/tle/TextLineArrayList;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v6, :cond_2

    .line 1267
    invoke-virtual {v4}, Lcom/metamoji/tle/TextLineArrayList;->dispose()V

    return-object v5

    .line 1171
    :cond_2
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_c

    .line 1175
    invoke-virtual {v4, v9}, Lcom/metamoji/tle/TextLineArrayList;->getRefAt(I)Lcom/metamoji/tle/TextLineRef;

    move-result-object v10

    .line 1177
    new-instance v11, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    invoke-direct {v11, v1, v5}, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 1178
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    iput-object v12, v11, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;

    .line 1188
    invoke-virtual {v10}, Lcom/metamoji/tle/TextLineRef;->getStrokesRef()Lcom/metamoji/tle/InkStrokeArrayListRef;

    move-result-object v13

    .line 1189
    invoke-virtual {v13}, Lcom/metamoji/tle/InkStrokeArrayListRef;->getCount()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    const/16 v17, 0x1

    if-ge v15, v14, :cond_9

    .line 1194
    invoke-virtual {v13, v15}, Lcom/metamoji/tle/InkStrokeArrayListRef;->getRefAt(I)Lcom/metamoji/tle/InkStrokeRef;

    move-result-object v18

    .line 1196
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/tle/InkStrokeRef;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1197
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/tle/InkStrokeRef;->isFigure()Z

    move-result v18

    if-nez v18, :cond_8

    .line 1201
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    const/16 v18, 0x0

    .line 1205
    iget-object v8, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    if-eqz v8, :cond_4

    .line 1207
    iget-object v8, v8, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    if-eqz v8, :cond_5

    .line 1209
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/16 v18, 0x0

    :cond_4
    const/4 v8, 0x0

    :cond_5
    :goto_2
    if-nez v16, :cond_7

    if-eqz v2, :cond_7

    if-nez v8, :cond_6

    .line 1216
    iget-object v0, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    if-eqz v0, :cond_6

    .line 1218
    iget-object v8, v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    :cond_6
    if-eqz v8, :cond_7

    .line 1222
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move/from16 v16, v17

    goto :goto_3

    :cond_8
    const/16 v18, 0x0

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_1

    :cond_9
    const/16 v18, 0x0

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    invoke-virtual {v10}, Lcom/metamoji/tle/TextLineRef;->getBoundRef()Lcom/metamoji/tle/CPolygonRef;

    move-result-object v5

    .line 1233
    invoke-virtual {v5}, Lcom/metamoji/tle/CPolygonRef;->getVertexNum()I

    move-result v8

    const/4 v10, 0x2

    .line 1234
    new-array v10, v10, [F

    move/from16 v12, v18

    :goto_4
    if-ge v12, v8, :cond_a

    .line 1236
    invoke-virtual {v5, v12, v10}, Lcom/metamoji/tle/CPolygonRef;->getVertex(I[F)V

    .line 1237
    new-instance v13, Landroid/graphics/PointF;

    aget v14, v10, v18

    aget v15, v10, v17

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_a
    if-eqz v3, :cond_b

    .line 1242
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1243
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_b
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    invoke-static {v0, v5}, Lcom/metamoji/tle/TextLineExtractUtil;->addBaseLine(Ljava/util/List;Ljava/util/List;)V

    .line 1259
    iput-object v5, v11, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 1262
    iput-object v0, v11, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1267
    :cond_c
    invoke-virtual {v4}, Lcom/metamoji/tle/TextLineArrayList;->dispose()V

    return-object v7

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lcom/metamoji/tle/TextLineArrayList;->dispose()V

    .line 1268
    throw v0
.end method

.method private getLineResultOfNoTextNoClassify(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtStrokeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/tle/TextLineExtractorManager$LineResult;",
            ">;"
        }
    .end annotation

    .line 1368
    new-instance v0, Lcom/metamoji/tntc/TextLineUtFigSeparation;

    invoke-direct {v0}, Lcom/metamoji/tntc/TextLineUtFigSeparation;-><init>()V

    .line 1371
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtStrokeInfo;

    .line 1372
    iget-object v2, v1, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    iget-object v1, v1, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->addStrokePoint(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 1374
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->classify()V

    .line 1375
    invoke-virtual {v0}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->getResult()Lcom/metamoji/tntc/LineResultList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1378
    invoke-virtual {v0}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->dispose()V

    .line 1383
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    invoke-virtual {p1}, Lcom/metamoji/tntc/LineResultList;->getLineResultCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    .line 1386
    new-instance v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 1387
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1389
    invoke-virtual {p1, v3}, Lcom/metamoji/tntc/LineResultList;->getLineResultRefAt(I)Lcom/metamoji/tntc/LineResultRef;

    move-result-object v5

    .line 1391
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    invoke-virtual {v5}, Lcom/metamoji/tntc/LineResultRef;->getBoundPtCount()I

    move-result v7

    const/4 v8, 0x2

    .line 1393
    new-array v8, v8, [F

    move v9, v2

    :goto_2
    if-ge v9, v7, :cond_1

    .line 1395
    invoke-virtual {v5, v9, v8}, Lcom/metamoji/tntc/LineResultRef;->getBoundPtAt(I[F)V

    .line 1396
    new-instance v10, Lcom/metamoji/tle/TextLineExtractorManager$3;

    invoke-direct {v10, p0, v8}, Lcom/metamoji/tle/TextLineExtractorManager$3;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;[F)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1398
    :cond_1
    iput-object v6, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 1400
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    invoke-virtual {v5}, Lcom/metamoji/tntc/LineResultRef;->getBaselinePtCount()I

    move-result v7

    move v9, v2

    :goto_3
    if-ge v9, v7, :cond_2

    .line 1403
    invoke-virtual {v5, v9, v8}, Lcom/metamoji/tntc/LineResultRef;->getBaselinePtAt(I[F)V

    .line 1404
    new-instance v10, Lcom/metamoji/tle/TextLineExtractorManager$4;

    invoke-direct {v10, p0, v8}, Lcom/metamoji/tle/TextLineExtractorManager$4;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;[F)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1406
    :cond_2
    iput-object v6, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 1408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-virtual {v5}, Lcom/metamoji/tntc/LineResultRef;->getStrokeIdCount()I

    move-result v7

    move v8, v2

    :goto_4
    if-ge v8, v7, :cond_3

    .line 1411
    invoke-virtual {v5, v8}, Lcom/metamoji/tntc/LineResultRef;->getStrokeIdAt(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1413
    :cond_3
    iput-object v6, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1417
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/tntc/LineResultList;->dispose()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/metamoji/tntc/LineResultList;->dispose()V

    .line 1418
    throw v0

    :catchall_1
    move-exception p1

    .line 1378
    invoke-virtual {v0}, Lcom/metamoji/tntc/TextLineUtFigSeparation;->dispose()V

    .line 1379
    throw p1
.end method

.method private getMostOldAuthorInfo(Ljava/util/List;)Lcom/metamoji/nt/NtAuthorInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/nt/NtAuthorInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 3421
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3422
    invoke-direct {p0, v2}, Lcom/metamoji/tle/TextLineExtractorManager;->getStrokeInfo(Ljava/lang/String;)Lcom/metamoji/nt/NtStrokeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3423
    iget-object v3, v2, Lcom/metamoji/nt/NtStrokeInfo;->authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    .line 3424
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTimeInUnixTimestamp()D

    move-result-wide v3

    iget-object v5, v2, Lcom/metamoji/nt/NtStrokeInfo;->authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    invoke-virtual {v5}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTimeInUnixTimestamp()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 3425
    :cond_2
    iget-object v1, v2, Lcom/metamoji/nt/NtStrokeInfo;->authorInfo:Lcom/metamoji/nt/NtAuthorInfo;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    return-object v0

    .line 3434
    :cond_4
    new-instance p1, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {p1}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    .line 3435
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtAuthorInfo;->setUserId(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    .line 3437
    invoke-virtual {v1}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtAuthorInfo;->setActionTime(Ljava/util/Date;)V

    return-object p1
.end method

.method public static getMultilineCombineRatio()F
    .locals 3

    .line 2137
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2138
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 2139
    const-string v1, "MMJTextLineExtMultiCombineRatio"

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    .line 2142
    :cond_0
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    return v0
.end method

.method private getMultilineCombineSpaceRatio()F
    .locals 2

    .line 2124
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getMultilineCombineRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :cond_0
    return v0
.end method

.method private getStrokeInfo(Ljava/lang/String;)Lcom/metamoji/nt/NtStrokeInfo;
    .locals 1

    .line 1110
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1111
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    if-eqz p1, :cond_0

    .line 1113
    iget-object p1, p1, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getStrokeMaxWidth(Ljava/util/List;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)F"
        }
    .end annotation

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_4

    .line 2921
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 2922
    invoke-direct {p0, v4}, Lcom/metamoji/tle/TextLineExtractorManager;->isPointsCountZero(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-float/2addr v1, v5

    goto :goto_0

    :cond_0
    add-float/2addr v2, v5

    .line 2927
    invoke-direct {p0, v4}, Lcom/metamoji/tle/TextLineExtractorManager;->getStrokesOutBounds(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0

    :cond_1
    add-float p1, v1, v2

    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_2

    cmpl-float p1, v1, v5

    if-ltz p1, :cond_2

    const/high16 p1, -0x40000000    # -2.0f

    return p1

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    cmpl-float p1, v1, v2

    if-ltz p1, :cond_3

    return v0

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method private getStrokeStyle(Lcom/metamoji/nt/share/NtPenStyle;F)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 11

    .line 3003
    iget-boolean v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_reflectStrokeStyle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_f

    .line 3010
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->STANDARD:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 3011
    const-string v2, "calligraphy"

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3012
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    goto :goto_0

    .line 3013
    :cond_1
    const-string v2, "fountainpen"

    iget-object v3, p1, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3014
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    .line 3019
    :cond_2
    :goto_0
    iget v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 3020
    iget v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    cmpl-float v4, v3, v2

    if-nez v4, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3028
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v4

    invoke-static {v4, v2}, Lcom/metamoji/cm/ColorUtils;->colorWithAlphaByFloat(IF)I

    move-result v8

    .line 3037
    iget-object v2, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 3038
    const-string v2, "gradation"

    iget-object v4, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_5

    .line 3039
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_6

    .line 3040
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    goto :goto_2

    .line 3042
    :cond_5
    const-string v2, "2colors"

    iget-object v7, p1, Lcom/metamoji/nt/share/NtPenStyle;->inkType:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3043
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_6

    .line 3044
    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    :cond_6
    :goto_2
    move-object v10, v1

    .line 3051
    iget v1, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_7

    .line 3052
    iget v1, p1, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    goto :goto_3

    :cond_7
    const v1, 0x3f19999a    # 0.6f

    :goto_3
    const/high16 v2, 0x41400000    # 12.0f

    cmpl-float v4, v2, p2

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    cmpl-float v4, v4, p2

    if-eqz v4, :cond_8

    div-float/2addr v2, p2

    mul-float/2addr v1, v2

    :cond_8
    move v9, v1

    .line 3061
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->CALLIGRAPHY:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p2, v0, :cond_d

    .line 3064
    iget p2, p1, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    cmpl-float p2, v3, p2

    if-eqz p2, :cond_9

    .line 3065
    iget p2, p1, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    goto :goto_4

    :cond_9
    move p2, v3

    :goto_4
    cmpl-float v0, v3, p2

    if-nez v0, :cond_a

    const/high16 p2, 0x42340000    # 45.0f

    :cond_a
    move v6, p2

    .line 3073
    iget p2, p1, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    cmpl-float p2, v3, p2

    if-eqz p2, :cond_b

    .line 3074
    iget p1, p1, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    goto :goto_5

    :cond_b
    move p1, v3

    :goto_5
    cmpl-float p2, v3, p1

    if-nez p2, :cond_c

    const p1, 0x3e4ccccd    # 0.2f

    :cond_c
    move v7, p1

    .line 3080
    sget-object v5, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    invoke-static/range {v5 .. v10}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->calligraphyStyle(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;FFIFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    return-object p1

    .line 3083
    :cond_d
    sget-object p2, Lcom/metamoji/mazecclient/stroke/StrokePenType;->FOUNTAIN:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    if-ne p2, v0, :cond_e

    .line 3085
    new-instance p2, Lcom/metamoji/mazecclient/stroke/FountainProperties;

    invoke-direct {p2, p1}, Lcom/metamoji/mazecclient/stroke/FountainProperties;-><init>(Lcom/metamoji/nt/share/NtPenStyle;)V

    .line 3087
    invoke-static {v8, v9, v10, p2}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->fountainStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;Lcom/metamoji/mazecclient/stroke/IFountainProperties;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    return-object p1

    .line 3091
    :cond_e
    invoke-static {v8, v9, v10}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->standartStyle(IFLcom/metamoji/mazecclient/stroke/IStrokeInk;)Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v1
.end method

.method private getStrokesOutBounds(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Landroid/graphics/RectF;
    .locals 9

    .line 2954
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v0

    const/high16 v1, 0x4f000000

    const/high16 v2, -0x31000000

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_1

    .line 2956
    invoke-virtual {p1, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v6

    .line 2957
    invoke-interface {v6}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v6

    .line 2958
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 2959
    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2960
    iget v8, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v8}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2961
    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2962
    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2966
    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method private getTextColorFromStrokeStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Ljava/lang/Integer;
    .locals 5

    .line 3114
    iget-boolean v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_reflectStrokeStyle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    .line 3119
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3122
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3123
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    .line 3124
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getCountOfColor()I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 3125
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getColorAt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3127
    :cond_1
    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->CUBIC2SURFACE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 3128
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getCountOfColor()I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 3129
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/metamoji/mazecclient/stroke/IStrokeInk;->getColorAt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method

.method public static getTextLineExtractLevelSetting()Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;
    .locals 2

    .line 820
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextLineExtractStrokeCount()I

    move-result v0

    .line 822
    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 824
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    return-object v0

    :cond_0
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_1

    .line 826
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    return-object v0

    .line 828
    :cond_1
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_High:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    return-object v0
.end method

.method public static getTextLineExtractStrokeCount()I
    .locals 3

    .line 796
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    if-gez v0, :cond_0

    .line 797
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 798
    const-string v1, "MMJTextLineExtExtractStrokeCount"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    .line 801
    :cond_0
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    return v0
.end method

.method public static initTextLineExtractorDic()V
    .locals 9

    .line 94
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 98
    :try_start_0
    const-string v3, "TextLineExtractorDic.zip"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 99
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 101
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_2

    .line 104
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TextLineExtractorDic"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v1, 0x400

    .line 106
    :try_start_3
    new-array v5, v1, [B

    .line 108
    :goto_1
    invoke-virtual {v3, v5, v6, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_0

    .line 109
    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 114
    :cond_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 115
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 115
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 116
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 125
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    return-void

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 120
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_3

    .line 125
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 128
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_4

    .line 125
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    :catch_3
    move-exception v1

    .line 128
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 131
    :cond_4
    :goto_6
    throw v0
.end method

.method private insertTextUnit(Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 3209
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_createdModelCount:I

    if-lez v0, :cond_13

    .line 3219
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 3222
    instance-of v2, v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v2, :cond_12

    .line 3223
    move-object v2, v0

    check-cast v2, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 3229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3230
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3231
    iget-object v6, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    if-eqz v5, :cond_0

    .line 3233
    iget-object v5, v5, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeInfo:Lcom/metamoji/nt/NtStrokeInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3239
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v4

    .line 3240
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3241
    iget-object v6, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    const-string/jumbo v7, "unitId"

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    .line 3242
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v6

    const-string/jumbo v9, "unit"

    invoke-virtual {v6, v9}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3243
    sget-object v9, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    invoke-static {v9, v6, v8, v8}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v6

    .line 3246
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v8

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/df/model/IModel;

    .line 3247
    invoke-interface {v11, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3248
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3250
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3251
    iget-object v13, v1, Lcom/metamoji/tle/TextLineExtractorManager;->_convertStrokeParagraphInfo:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_3

    .line 3253
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 3255
    check-cast v14, Ljava/util/List;

    .line 3258
    new-instance v15, Lcom/metamoji/tle/TextLineExtractorManager$6;

    invoke-direct {v15, v1, v14}, Lcom/metamoji/tle/TextLineExtractorManager$6;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Ljava/util/List;)V

    invoke-virtual {v2, v15}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;

    move-result-object v14

    .line 3279
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v14, :cond_2

    .line 3283
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/metamoji/ctold/CtTaggableObject;

    .line 3284
    sget-object v1, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    move-object/from16 v16, v9

    invoke-interface {v8}, Lcom/metamoji/ctold/CtTaggableObject;->getObjectId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9, v6, v6}, Lcom/metamoji/un/util/UnTaggableSaveObject;->createObject(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Lcom/metamoji/un/util/UnTaggableSaveObject;Lcom/metamoji/un/util/UnTaggableSaveObject;)Lcom/metamoji/un/util/UnTaggableSaveObject;

    move-result-object v1

    .line 3285
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3288
    invoke-interface {v4, v8, v1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectTransferred(Lcom/metamoji/ctold/CtTaggableObject;Lcom/metamoji/ctold/CtTaggableObject;)V

    move-object/from16 v1, p0

    move-object/from16 v9, v16

    const/4 v8, 0x0

    goto :goto_3

    :cond_2
    move-object/from16 v16, v9

    .line 3292
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v9, v16

    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v16, v9

    if-nez v10, :cond_4

    .line 3297
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 3299
    :cond_4
    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v9, v16

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    .line 3303
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3310
    :try_start_0
    invoke-virtual {v1, v8}, Lcom/metamoji/nt/NtPageController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v11, 0x1

    .line 3313
    :try_start_1
    new-array v12, v11, [Ljava/lang/Integer;

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v6

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v14, p1

    invoke-virtual {v2, v14, v3, v13, v12}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->convertStrokeToTextWithModels(Ljava/util/List;Ljava/util/List;ILjava/util/List;)V

    if-eqz v10, :cond_f

    .line 3318
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 3319
    invoke-interface {v3, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3320
    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 3322
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3324
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    .line 3325
    instance-of v15, v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v15, :cond_7

    .line 3326
    check-cast v3, Lcom/metamoji/un/text/UnTextUnit;

    goto :goto_5

    :cond_7
    move-object v3, v8

    :goto_5
    if-eqz v3, :cond_8

    .line 3332
    invoke-virtual {v3, v14, v6}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 3336
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/ctold/CtTaggableObject;

    .line 3337
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_9

    goto :goto_7

    .line 3341
    :cond_9
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 3343
    invoke-interface {v4, v15, v14}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    .line 3345
    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 3349
    :cond_a
    :goto_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 3350
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 3352
    check-cast v13, Ljava/util/List;

    .line 3353
    invoke-interface {v4, v13}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    goto :goto_8

    .line 3358
    :cond_b
    invoke-interface {v10, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3362
    :cond_c
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 3363
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3364
    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3366
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3368
    check-cast v3, Ljava/util/List;

    .line 3369
    invoke-interface {v4, v3}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    goto :goto_9

    .line 3373
    :cond_e
    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 3376
    :cond_f
    invoke-virtual {v9}, Lcom/metamoji/df/controller/EditContext;->detachUndo()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 3379
    const-string v2, "page.textunit.converttext.undo"

    invoke-static {v1, v2, v11}, Lcom/metamoji/nt/NtControllerUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 3381
    const-string v3, "m"

    invoke-interface {v2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 3382
    const-string/jumbo v0, "t"

    invoke-interface {v2, v0, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 3384
    invoke-virtual {v9, v2, v11}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3388
    :cond_10
    invoke-virtual {v1, v9}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v8, v9

    move v6, v11

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v6, :cond_11

    invoke-virtual {v1, v8}, Lcom/metamoji/nt/NtPageController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 3390
    :cond_11
    throw v0

    .line 3225
    :cond_12
    const-string v0, "UnTextUnit.commandSeparateUnit: unknown UnitController"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static isEnableCommand(Lcom/metamoji/tle/TextLineExtractType;)Z
    .locals 2

    .line 150
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtFeature;->ConvertTextToFont:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 155
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object p0

    .line 156
    instance-of v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-eqz v1, :cond_2

    .line 157
    check-cast p0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->isSelectingStroke()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isExistDictionaryFile()Z
    .locals 6

    .line 884
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getDictionaryFilePaths()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 886
    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    move v2, v1

    move v3, v2

    .line 890
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 891
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 897
    :cond_2
    :goto_1
    array-length v0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_2
    return v1
.end method

.method public static isMultiBoundCombine()Z
    .locals 2

    .line 2096
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getMultilineCombineRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isPointsCountZero(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 3100
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3101
    invoke-virtual {p1, v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    move-result-object v2

    .line 3102
    invoke-interface {v2}, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;->getCountOfPoints()I

    move-result v2

    if-lez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static isRecognitionInText()Z
    .locals 1

    .line 437
    sget-boolean v0, Lcom/metamoji/tle/TextLineExtractorManager;->_recognitionInText:Z

    return v0
.end method

.method private isRun()Z
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseTextLineExtractSetting()Z
    .locals 3

    .line 769
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 770
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 773
    const-string v2, "MMJTextLineExtUseEngine"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    .line 775
    :cond_0
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private loadSettings()V
    .locals 3

    .line 853
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 855
    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->Normal:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    invoke-virtual {v1}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->toInt()I

    move-result v1

    const-string v2, "MMJTextLineExtRotationReflect"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->fromInt(I)Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_rotationReflectType:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    .line 856
    sget-object v1, Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;->Left:Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    invoke-virtual {v1}, Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;->toInt()I

    move-result v1

    const-string v2, "MMJTextLineExtBoundSortType"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;->fromInt(I)Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_boundSortType:Lcom/metamoji/tle/TextLineExtractorManager$BoundSortType;

    .line 857
    const-string v1, "MMJTextLineExtIgnoreSmall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_ignoreSmallBlock:Z

    .line 858
    const-string v1, "MMJTextLineExtReflectStyle"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_reflectStrokeStyle:Z

    .line 859
    const-string v1, "MMJTextLineExtDivideRatio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_divideCharFontRatio:F

    return-void
.end method

.method public static performPageTextUnitConvertTextUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 3448
    const-string v0, "m"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3453
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 3454
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 3455
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3458
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_4

    .line 3467
    const-string/jumbo v3, "t"

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3472
    instance-of v4, v3, Lcom/metamoji/df/model/IModel;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3473
    check-cast v3, Lcom/metamoji/df/model/IModel;

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_0

    .line 3476
    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v3

    .line 3478
    instance-of v4, v3, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v4, :cond_2

    .line 3479
    move-object v5, v3

    check-cast v5, Lcom/metamoji/un/text/UnTextUnit;

    :cond_2
    if-eqz v5, :cond_0

    .line 3482
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    .line 3483
    invoke-virtual {v5, v3, v4}, Lcom/metamoji/un/text/UnTextUnit;->collectAllParagraphInfos(Ljava/util/List;Z)V

    .line 3484
    invoke-interface {v2, v3}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    .line 3486
    invoke-interface {v2, v5}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    goto :goto_0

    .line 3492
    :cond_3
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    return-void

    .line 3499
    :cond_4
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Lcom/metamoji/df/model/IModelManager;->callUndoPerformer(Lcom/metamoji/df/model/IModel;Z)V

    :cond_5
    return-void
.end method

.method private recognizeHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Ljava/lang/String;
    .locals 1

    .line 3189
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getInputViewForTLE()Lcom/metamoji/tle/InputViewForTLE;

    move-result-object v0

    .line 3190
    invoke-virtual {v0, p1}, Lcom/metamoji/tle/InputViewForTLE;->convertStrokes(Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3193
    const-string p1, "InputViewForLTE.convertStrokes() return null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 3194
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private recognizeStrokes(Ljava/util/List;Ljava/util/List;IIFF)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/PointArray;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            ">;IIFF)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3159
    invoke-direct/range {p0 .. p6}, Lcom/metamoji/tle/TextLineExtractorManager;->createHandwriteStrokes(Ljava/util/List;Ljava/util/List;IIFF)Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    move-result-object p1

    move-object p2, p0

    .line 3169
    invoke-direct {p0, p1}, Lcom/metamoji/tle/TextLineExtractorManager;->recognizeHandwriteStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3171
    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method private reorderExtractResult()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 2213
    :goto_0
    iget-object v3, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 2299
    iget-object v4, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    if-ge v2, v3, :cond_8

    .line 2214
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    .line 2215
    iget-object v4, v3, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 2216
    iget-object v5, v3, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 2217
    invoke-static {v4, v5}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object v5

    .line 2219
    iget-wide v6, v5, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget v8, v5, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget v5, v5, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v4, v6, v7, v8, v5}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    move v8, v1

    move-object v7, v6

    move-object v9, v7

    .line 2229
    :goto_1
    iget-object v10, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v5, v10, :cond_5

    .line 2230
    iget-object v9, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    .line 2231
    iget-object v10, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 2232
    iget-object v12, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 2233
    invoke-static {v10, v12}, Lcom/metamoji/tle/TextLineExtractUtil;->getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;

    move-result-object v12

    .line 2235
    iget-wide v13, v12, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget v15, v12, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget v12, v12, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {v10, v13, v14, v15, v12}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object v10

    .line 2239
    invoke-virtual {v10, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_2
    move-object v7, v9

    move v8, v11

    goto :goto_4

    .line 2244
    :cond_0
    invoke-virtual {v4, v10}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_3

    .line 2248
    :cond_1
    invoke-static {v4, v10}, Lcom/metamoji/cm/RectUtils;->intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 2250
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v14

    div-float/2addr v13, v14

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe8000000000000L    # 0.75

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_3

    .line 2251
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    cmpl-double v12, v12, v15

    if-ltz v12, :cond_3

    .line 2254
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v10

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_3
    move-object v7, v9

    :cond_3
    :goto_4
    if-eqz v7, :cond_4

    .line 2261
    iget-object v4, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_5
    if-eqz v7, :cond_7

    .line 2268
    new-instance v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;

    invoke-direct {v4, v0, v6}, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;Lcom/metamoji/tle/TextLineExtractorManager-IA;)V

    .line 2271
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    iget-object v6, v3, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2273
    iget-object v6, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2274
    iput-object v5, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->strokeIds:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 2279
    iget-object v3, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    iput-object v3, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 2280
    iget-object v3, v9, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    iput-object v3, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    goto :goto_6

    .line 2284
    :cond_6
    iget-object v5, v3, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    iput-object v5, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->baseline:Ljava/util/List;

    .line 2285
    iget-object v3, v3, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    iput-object v3, v4, Lcom/metamoji/tle/TextLineExtractorManager$LineResult;->bound:Ljava/util/List;

    .line 2289
    :goto_6
    iget-object v3, v0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_7
    add-int/2addr v2, v11

    goto/16 :goto_0

    .line 2299
    :cond_8
    new-instance v1, Lcom/metamoji/tle/TextLineExtractorManager$5;

    invoke-direct {v1, v0}, Lcom/metamoji/tle/TextLineExtractorManager$5;-><init>(Lcom/metamoji/tle/TextLineExtractorManager;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private rotationReflect(D)D
    .locals 11

    .line 2164
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->None:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    iget-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_rotationReflectType:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double v4, p1, v0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    .line 2168
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 2170
    iget-object v8, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_rotationReflectType:Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;

    invoke-virtual {v8}, Lcom/metamoji/tle/TextLineExtractorManager$RotationReflectType;->ordinal()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    return-wide v2

    :cond_1
    const-wide/high16 v8, 0x402e000000000000L    # 15.0

    goto :goto_0

    :cond_2
    const-wide v8, 0x4046800000000000L    # 45.0

    goto :goto_0

    :cond_3
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    :goto_0
    cmpg-double v10, v4, v8

    if-ltz v10, :cond_7

    sub-double v8, v0, v8

    cmpg-double v8, v8, v4

    if-gez v8, :cond_4

    goto :goto_1

    .line 2189
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 2190
    div-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0x5

    int-to-double v9, v8

    sub-double/2addr v4, v9

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    cmpl-double v4, v4, v9

    if-lez v4, :cond_5

    add-int/lit8 v8, v8, 0x5

    :cond_5
    cmpg-double p1, p1, v2

    if-gez p1, :cond_6

    mul-int/lit8 v8, v8, -0x1

    :cond_6
    int-to-double p1, v8

    mul-double/2addr p1, v6

    div-double/2addr p1, v0

    return-wide p1

    :cond_7
    :goto_1
    return-wide v2
.end method

.method private setAnalysResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/tle/TextLineExtractorManager$LineResult;",
            ">;)V"
        }
    .end annotation

    .line 1364
    iput-object p1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    return-void
.end method

.method public static setMulitiBoundCombine(Z)V
    .locals 1

    .line 2104
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getMultilineCombineRatio()F

    move-result v0

    if-eqz p0, :cond_0

    const p0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_1

    :goto_0
    return-void

    .line 2114
    :cond_1
    invoke-static {p0}, Lcom/metamoji/tle/TextLineExtractorManager;->setMultiBoundCombineRatio(F)V

    return-void
.end method

.method public static setMultiBoundCombineRatio(F)V
    .locals 2

    .line 2149
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    cmpl-float v0, v0, p0

    if-nez v0, :cond_0

    return-void

    .line 2152
    :cond_0
    sput p0, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    .line 2153
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 2154
    const-string v0, "MMJTextLineExtMultiCombineRatio"

    sget v1, Lcom/metamoji/tle/TextLineExtractorManager;->_multiBoundCombineRatio:F

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method protected static setRecognitionInText(Z)V
    .locals 0

    .line 441
    sput-boolean p0, Lcom/metamoji/tle/TextLineExtractorManager;->_recognitionInText:Z

    return-void
.end method

.method private setStrokeToExtractor()V
    .locals 8

    .line 1278
    invoke-direct {p0}, Lcom/metamoji/tle/TextLineExtractorManager;->isRun()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 1286
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto/16 :goto_3

    .line 1297
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1299
    iget-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtStrokeInfo;

    .line 1300
    iget-object v3, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    iget-object v4, v2, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;

    if-nez v3, :cond_3

    .line 1302
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1306
    :cond_3
    iget-object v4, v3, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    .line 1307
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    goto :goto_1

    .line 1313
    :cond_4
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->getTextLineExtractStrokeCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 1339
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 1340
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1347
    :cond_5
    sget-object v4, Lcom/metamoji/tle/ProcessingStatus;->Success:Lcom/metamoji/tle/ProcessingStatus;

    iget-object v5, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    iget-object v6, v2, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    iget-object v7, v2, Lcom/metamoji/nt/NtStrokeInfo;->stroke:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v7}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/tle/TextLineExtractor;->addStrokePoint(Ljava/lang/String;Ljava/util/List;)Lcom/metamoji/tle/ProcessingStatus;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 1348
    iget-object v2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokesOutBounds:Landroid/graphics/RectF;

    iget-object v3, v3, Lcom/metamoji/tle/TextLineExtractorManager$TextLineAnalysInfo;->strokeRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 1352
    :cond_6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1308
    :cond_7
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1356
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtStrokeInfo;

    .line 1357
    iget-object v2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1358
    iget-object v2, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    iget-object v1, v1, Lcom/metamoji/nt/NtStrokeInfo;->strokeId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method

.method public static setTextLineExtractLevelSetting(Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;)V
    .locals 1

    .line 838
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Normal:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    if-ne v0, p0, :cond_0

    const/16 p0, 0xc8

    goto :goto_0

    .line 840
    :cond_0
    sget-object v0, Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;->ExtractLevel_Low:Lcom/metamoji/tle/TextLineExtractorManager$TextLineExtractLevel;

    if-ne v0, p0, :cond_1

    const/16 p0, 0x3c

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 845
    :goto_0
    invoke-static {p0}, Lcom/metamoji/tle/TextLineExtractorManager;->setTextLineExtractStrokeCount(I)V

    return-void
.end method

.method public static setTextLineExtractStrokeCount(I)V
    .locals 2

    .line 808
    sget v0, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    if-ne v0, p0, :cond_0

    return-void

    .line 811
    :cond_0
    sput p0, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    .line 812
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 813
    const-string v0, "MMJTextLineExtExtractStrokeCount"

    sget v1, Lcom/metamoji/tle/TextLineExtractorManager;->_excludeStrokeCount:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method public static setUseTextLineExtractSetting(Z)V
    .locals 2

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 783
    :goto_0
    sget p0, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    if-ne p0, v0, :cond_1

    return-void

    .line 786
    :cond_1
    sput v0, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    .line 788
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    .line 789
    const-string v0, "MMJTextLineExtUseEngine"

    sget v1, Lcom/metamoji/tle/TextLineExtractorManager;->_useTextLineExtract:I

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method private terminateExtractor()V
    .locals 2

    .line 986
    invoke-direct {p0}, Lcom/metamoji/tle/TextLineExtractorManager;->isRun()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    invoke-virtual {v0}, Lcom/metamoji/tle/TextLineExtractor;->close()V

    .line 990
    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_extractor:Lcom/metamoji/tle/TextLineExtractor;

    .line 993
    :cond_0
    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_registeredStrokeInfos:Ljava/util/List;

    .line 994
    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeInfos:Ljava/util/Map;

    .line 995
    iput-object v1, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysResult:Ljava/util/List;

    .line 996
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokesOutBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 997
    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeWidth:F

    .line 998
    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_totalAnalysStrokeHeight:F

    .line 999
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_analysStrokeMaxSize:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x0

    .line 1013
    iput v0, p0, Lcom/metamoji/tle/TextLineExtractorManager;->_createdModelCount:I

    return-void
.end method

.method public static textLineExtract(Lcom/metamoji/tle/TextLineExtractType;)V
    .locals 6

    .line 458
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isExistDictionaryFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->initTextLineExtractorDic()V

    .line 463
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->isExistDictionaryFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    sget-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToStroke:Lcom/metamoji/tle/TextLineExtractType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p0, :cond_2

    sget-object v0, Lcom/metamoji/tle/TextLineExtractType;->ToStrokeAll:Lcom/metamoji/tle/TextLineExtractType;

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 473
    :goto_1
    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->Confirm:Lcom/metamoji/tle/TextLineExtractType;

    if-eq v3, p0, :cond_4

    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ConfirmAll:Lcom/metamoji/tle/TextLineExtractType;

    if-eq v3, p0, :cond_4

    sget-object v3, Lcom/metamoji/tle/TextLineExtractType;->ConfirmPlus:Lcom/metamoji/tle/TextLineExtractType;

    if-ne v3, p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    .line 474
    :goto_3
    sget-object v4, Lcom/metamoji/tle/TextLineExtractType;->ToFontAll:Lcom/metamoji/tle/TextLineExtractType;

    if-eq v4, p0, :cond_6

    sget-object v4, Lcom/metamoji/tle/TextLineExtractType;->ToStrokeAll:Lcom/metamoji/tle/TextLineExtractType;

    if-eq v4, p0, :cond_6

    sget-object v4, Lcom/metamoji/tle/TextLineExtractType;->ConfirmAll:Lcom/metamoji/tle/TextLineExtractType;

    if-ne v4, p0, :cond_5

    goto :goto_4

    :cond_5
    move v4, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v1

    .line 475
    :goto_5
    sget-object v5, Lcom/metamoji/tle/TextLineExtractType;->ToFontPlus:Lcom/metamoji/tle/TextLineExtractType;

    if-eq v5, p0, :cond_7

    sget-object v5, Lcom/metamoji/tle/TextLineExtractType;->ToStrokePlus:Lcom/metamoji/tle/TextLineExtractType;

    if-eq v5, p0, :cond_7

    sget-object v5, Lcom/metamoji/tle/TextLineExtractType;->ConfirmPlus:Lcom/metamoji/tle/TextLineExtractType;

    if-ne v5, p0, :cond_8

    :cond_7
    move v1, v2

    .line 477
    :cond_8
    new-instance p0, Lcom/metamoji/tle/TextLineExtractorManager$1;

    invoke-direct {p0, v0, v4, v3, v1}, Lcom/metamoji/tle/TextLineExtractorManager$1;-><init>(ZZZZ)V

    .line 531
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 532
    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->suppressWaitScreen(Z)V

    .line 533
    new-instance v1, Lcom/metamoji/tle/TextLineExtractorManager$2;

    invoke-direct {v1, v0}, Lcom/metamoji/tle/TextLineExtractorManager$2;-><init>(Lcom/metamoji/cm/CmTaskManager;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method
