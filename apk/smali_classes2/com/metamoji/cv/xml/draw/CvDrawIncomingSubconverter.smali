.class public Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;
.super Ljava/lang/Object;
.source "CvDrawIncomingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$DrElementTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$DrStrokeTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$DrStyleTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$DrPenTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;,
        Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$UnDrInkTypeVer2;
    }
.end annotation


# instance fields
.field _drawModel:Lcom/metamoji/df/model/IModel;

.field m_defaultStyleId:Ljava/lang/String;

.field protected m_groupIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected m_maxIdCount:I

.field protected m_stylesIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_stylesModel:Lcom/metamoji/df/model/IModel;

.field protected m_version:I


# direct methods
.method public static synthetic $r8$lambda$zplDG_GLInsx_x4cXwMzXzO3u6Q(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->_drawModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private colorArrayFromNumArrayString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1856
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1859
    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    .line 1862
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1863
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, p1, v6

    .line 1864
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v5, v2, :cond_2

    .line 1869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1870
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%02x"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x1

    .line 1871
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v5, 0x2

    .line 1872
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 1876
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$oldParseElemElement$4(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 1524
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->toNewElementType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$oldParseElemElement$5(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 1550
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->toNewStrokeType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$parseElemElement$2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$parseElemElement$3(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$parseStyleElement$0(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 538
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->toNewStyleType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$parseStyleElement$1(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 547
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->toNewPenType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static toNewElementType(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 98
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0

    .line 96
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0

    .line 92
    :cond_1
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0

    .line 94
    :cond_2
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0
.end method

.method static toNewPenType(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 159
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p0

    return p0

    .line 157
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p0

    return p0
.end method

.method static toNewStrokeType(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 122
    sget-object p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p0

    return p0

    .line 117
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p0

    return p0

    .line 119
    :cond_1
    sget-object p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p0

    return p0
.end method

.method static toNewStyleType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 142
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p0

    return p0

    .line 140
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p0

    return p0
.end method

.method static toOldElementType(I)I
    .locals 1

    .line 103
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 105
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 107
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static toOldPenType(I)I
    .locals 1

    .line 164
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static toOldStrokeType(I)I
    .locals 1

    .line 127
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 129
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static toOldStyleType(I)I
    .locals 0

    .line 147
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 2

    .line 190
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 195
    :cond_0
    const-string v1, "$draw"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillIncomingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 4

    .line 213
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 215
    iget-object v1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->loadXMLFile(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 218
    const-string v2, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v3, "draw"

    invoke-static {v1, v3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseDrawElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 221
    :cond_0
    const-string p1, "invalid file. root element is null for %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "CV0021"

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1880
    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1881
    invoke-static {p1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 1886
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 1887
    :goto_0
    invoke-interface {p2, p3, p4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1890
    :catch_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1891
    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 233
    const-string v0, "draw"

    return-object v0
.end method

.method oldCreateGroup(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 9

    .line 1814
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "GM"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 1818
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_groupIdMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    .line 1819
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1820
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    const-string v6, "G"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 1822
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    move-wide v2, v6

    .line 1828
    :cond_0
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_groupIdMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 1830
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    .line 1831
    invoke-interface {v5, v7, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    goto :goto_1

    .line 1836
    :cond_1
    invoke-interface {v0, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1841
    :cond_2
    const-string p1, "C!"

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected oldParseElemElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            ")",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1518
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    const-string v6, "E"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 1522
    const-string v6, "id"

    const-string v7, "I"

    invoke-static {v1, v5, v7, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    new-instance v6, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda5;-><init>()V

    const-string v8, "T"

    const-string v9, "type"

    invoke-static {v1, v5, v8, v9, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    .line 1527
    const-string v6, "A"

    const-string v10, "angle"

    invoke-static {v1, v5, v6, v10}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string v6, "BX"

    const-string v10, "x"

    invoke-static {v1, v5, v6, v10}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v6, "BY"

    const-string v10, "y"

    invoke-static {v1, v5, v6, v10}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v6, "w"

    const-string v10, "W"

    invoke-static {v1, v5, v10, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v6, "H"

    const-string v11, "h"

    invoke-static {v1, v5, v6, v11}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1543
    sget-object v9, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v9

    invoke-static {v6, v9}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v6

    const/4 v9, 0x0

    .line 1545
    const-string v11, "B"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v6, v14, :cond_9

    .line 1548
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->intValue()I

    move-result v2

    invoke-interface {v5, v11, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1550
    new-instance v2, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda6;-><init>()V

    const-string v3, "t"

    const-string v4, "stroke-type"

    invoke-static {v1, v5, v3, v4, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    .line 1554
    const-string v2, "style-id"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1556
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1558
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 1559
    :cond_0
    const-string v2, "P"

    if-nez v9, :cond_3

    .line 1562
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1564
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    const-string v6, "C!"

    invoke-interface {v4, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1566
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v14

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x0

    :goto_0
    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    .line 1571
    invoke-static {v14, v15}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 1573
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    const-string v9, "S"

    invoke-interface {v4, v9}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1575
    iget-object v9, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {v4, v7, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    sget-object v7, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result v7

    invoke-interface {v4, v8, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1579
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v7

    invoke-interface {v4, v2, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1581
    invoke-interface {v4, v10, v12}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1584
    iget-object v7, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v14, v15}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v6, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    iget-object v7, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1590
    :cond_2
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 1591
    iget-object v6, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v6, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v9

    .line 1594
    sget-object v4, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v4

    invoke-interface {v5, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_3
    if-eqz v9, :cond_4

    .line 1597
    const-string v4, "p"

    invoke-interface {v5, v4, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1601
    :cond_4
    const-string v4, "points"

    invoke-static {v1, v5, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsPointArray(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v2, "d"

    const-string v4, "reducer-delta"

    invoke-static {v1, v5, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const-string v2, "z"

    const-string v4, "zoom"

    invoke-static {v1, v5, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v2, "segment-data"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    .line 1609
    const-string v6, "g"

    const-string v7, "application/octet-stream"

    if-eqz v4, :cond_6

    .line 1610
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1611
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1612
    invoke-static {v2}, Lcom/metamoji/cm/HashGenerator;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v2

    .line 1613
    new-instance v3, Lcom/metamoji/cm/Blob;

    invoke-direct {v3, v2, v7}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 1614
    invoke-interface {v5, v6, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_1

    .line 1617
    :cond_5
    new-instance v2, Lcom/metamoji/cm/Blob;

    new-array v3, v13, [B

    invoke-direct {v2, v3, v7}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 1618
    invoke-interface {v5, v6, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_1

    .line 1623
    :cond_6
    sget-object v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v2

    invoke-interface {v5, v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 1624
    sget-object v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_7

    sget-object v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_7

    sget-object v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 1626
    :cond_7
    new-instance v2, Lcom/metamoji/cm/Blob;

    new-array v3, v13, [B

    invoke-direct {v2, v3, v7}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 1627
    invoke-interface {v5, v6, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 1633
    :cond_8
    :goto_1
    const-string v2, "internal-angle"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1636
    const-string v2, "oi"

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v5, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object v5

    :cond_9
    if-ne v6, v12, :cond_d

    .line 1643
    invoke-interface {v5, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1646
    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Decode(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    .line 1648
    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v6

    .line 1652
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    iget-object v8, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_groupIdMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_a

    .line 1657
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1659
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1660
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    :goto_2
    const-string v6, "element"

    const-string v7, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {v1, v6, v7}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1666
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    :goto_3
    if-ge v13, v5, :cond_c

    .line 1667
    invoke-interface {v1, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 1668
    instance-of v7, v6, Lorg/w3c/dom/Element;

    if-eqz v7, :cond_b

    .line 1669
    check-cast v6, Lorg/w3c/dom/Element;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->oldParseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1674
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v9

    :cond_d
    const/4 v3, -0x1

    if-ne v6, v3, :cond_e

    .line 1682
    const-string v3, "E?"

    invoke-interface {v2, v3, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 1684
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->intValue()I

    move-result v2

    invoke-interface {v5, v11, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 1687
    const-string v2, "ref"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1690
    iget-object v2, v4, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v2, v1, v4}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1691
    const-string v2, "u"

    invoke-interface {v5, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1694
    iget-object v2, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->_drawModel:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_e

    .line 1695
    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    :cond_e
    return-object v5
.end method

.method oldParseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 1454
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string v0, "EM"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 1459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_groupIdMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1461
    iput v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_maxIdCount:I

    .line 1465
    const-string v1, "element"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1467
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1468
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1469
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 1470
    check-cast v2, Lorg/w3c/dom/Element;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p2, v3, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->oldParseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1476
    :cond_1
    iget p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_maxIdCount:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    const-string p3, "C"

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method protected oldParseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            ")V"
        }
    .end annotation

    .line 1482
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->oldParseElemElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 1487
    :cond_0
    const-string p4, "I"

    invoke-interface {p1, p4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Decode(Ljava/lang/String;)I

    move-result v0

    .line 1490
    iget v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_maxIdCount:I

    if-ge v1, v0, :cond_1

    .line 1492
    iput v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_maxIdCount:I

    :cond_1
    int-to-long v0, v0

    .line 1495
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 1497
    invoke-interface {p1, p4, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    if-eqz p3, :cond_3

    .line 1504
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1505
    iget-object p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_groupIdMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 1508
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected oldParseStylesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 8

    .line 440
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string v0, "SM"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesIdMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 455
    const-string v0, "style"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    move v1, v0

    move v2, v1

    .line 457
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "I"

    if-ge v0, v3, :cond_4

    .line 458
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 461
    instance-of v5, v3, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_1

    .line 462
    move-object v6, v3

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "id"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 463
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 472
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v3, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 473
    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 475
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Decode(Ljava/lang/String;)I

    move-result v6

    if-ge v2, v6, :cond_2

    move v2, v6

    :cond_2
    int-to-long v6, v6

    .line 481
    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v6

    .line 483
    invoke-interface {v3, v4, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 488
    invoke-interface {p2, v6, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    add-int/lit8 v0, v2, 0x1

    int-to-long v1, v0

    .line 497
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 499
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    const-string p3, "S"

    invoke-interface {p1, p3}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 501
    iget-object p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {p1, v4, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object p3, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p3

    const-string v1, "T"

    invoke-interface {p1, v1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 505
    sget-object p3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p3

    const-string v1, "P"

    invoke-interface {p1, v1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 507
    const-string p3, "W"

    const/4 v1, 0x2

    invoke-interface {p1, p3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 510
    iget-object p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    :cond_5
    move v0, v2

    :cond_6
    :goto_2
    int-to-long v0, v0

    .line 516
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    const-string p3, "C!"

    invoke-interface {p2, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method parseContentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 6

    .line 318
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string v0, "M"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    .line 328
    const-string v1, "styles"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 329
    const-string v3, "SM"

    const/4 v4, 0x3

    if-eqz v1, :cond_1

    .line 331
    iget v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    if-lt v5, v4, :cond_0

    .line 334
    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseStylesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 336
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    .line 337
    invoke-interface {p2, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->oldParseStylesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 343
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    .line 344
    invoke-interface {p2, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 349
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    if-nez v1, :cond_2

    .line 350
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    .line 351
    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 355
    :cond_2
    const-string v0, "elements"

    invoke-static {p1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 358
    iget v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const-string v3, "EM"

    if-lt v1, v4, :cond_3

    .line 361
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 362
    invoke-interface {p2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 365
    :cond_3
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->oldParseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 366
    invoke-interface {p2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 371
    :cond_4
    :goto_1
    iget v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const-string v1, "GM"

    if-lt v0, v4, :cond_6

    .line 378
    const-string v0, "groups"

    invoke-static {p1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseGroupsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 381
    invoke-interface {p2, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_5
    return-object p2

    .line 385
    :cond_6
    invoke-virtual {p0, p2}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->oldCreateGroup(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 387
    invoke-interface {p2, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object p2
.end method

.method parseDrawElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 245
    iput-object p2, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->_drawModel:Lcom/metamoji/df/model/IModel;

    .line 248
    const-string v0, "version"

    invoke-static {p1, p2, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsModelVersion(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)I

    move-result v0

    const-string v1, "!version"

    if-gez v0, :cond_0

    const/4 v0, 0x2

    .line 249
    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 253
    :cond_0
    const-string v0, "unitId"

    const-string v2, "unit-id"

    invoke-static {p1, p2, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_4

    .line 271
    const-string v0, "R"

    const-string v1, "revision"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "LV"

    const-string v1, "loaded-version"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "LR"

    const-string v1, "loaded-revision"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "MV"

    const-string v1, "modified-version"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "MR"

    const-string v1, "modified-revision"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "SC"

    const-string v1, "start-count"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "x"

    invoke-static {p1, p2, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "y"

    invoke-static {p1, p2, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "width"

    invoke-static {p1, p2, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "height"

    invoke-static {p1, p2, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "rotation"

    invoke-static {p1, p2, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "contentScale"

    invoke-static {p1, p2, v0, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v0, "contents"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getChildElementByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseContentsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    .line 300
    const-string v0, "M"

    invoke-interface {p2, v0, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 305
    :cond_1
    iget p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const/4 v0, 0x4

    if-lt p3, v0, :cond_2

    goto :goto_0

    :cond_2
    move p3, v0

    .line 306
    :goto_0
    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 309
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->childAdditionalsElement(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 311
    invoke-static {p1}, Lcom/metamoji/cv/CvConverterUtils;->parseAdditionalsElement(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object p1

    .line 312
    invoke-static {p1, p2}, Lcom/metamoji/cv/CvConverterUtils;->saveAdditionalsProperty(Ljava/util/Map;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    :cond_3
    return-void

    .line 265
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "draw"

    filled-new-array {p2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invalid version. %s version is %d; expected: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 266
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string p3, "CV0050"

    invoke-direct {p2, p3, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method protected parseElemElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 706
    invoke-interface/range {p2 .. p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    const-string v4, "E"

    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 709
    const-string v4, "I"

    const-string v5, "id"

    invoke-static {v1, v3, v4, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v4, "T"

    const-string v6, "type"

    invoke-static {v1, v3, v4, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v4, "B"

    const-string v7, "base-type"

    invoke-static {v1, v3, v4, v7}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v4, "A"

    const-string v8, "angle"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v4, "C"

    const-string v9, "contentscale"

    invoke-static {v1, v3, v4, v9}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v4, "S?"

    const-string v10, "is-select"

    invoke-virtual {v0, v1, v3, v4, v10}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v4, "M?"

    const-string v11, "is-move"

    invoke-virtual {v0, v1, v3, v4, v11}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v4, "R?"

    const-string v12, "is-resize"

    invoke-virtual {v0, v1, v3, v4, v12}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v4, "V?"

    const-string v13, "is-reverse"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v4, "O?"

    const-string v13, "is-rotate"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v4, "E?"

    const-string v13, "is-erase"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v4, "PE"

    const-string v13, "pre-edit"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v4, "PR"

    const-string v13, "pre-angle"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v4, "PS"

    const-string v13, "pre-contentscale"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v4, "uIC"

    const-string v13, "creator"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v4, "uIT"

    const-string v13, "creation-time"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v4, "uIR"

    const-string v13, "collaboration-room"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v4, "uII"

    const-string v13, "creator-id"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v4, "uIN"

    const-string v13, "creator-name"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v4, "uIG"

    const-string v13, "creator-group"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v4, "lT"

    const-string v13, "target-id"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v4, "lX"

    const-string v13, "x-difference"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v4, "lY"

    const-string v13, "y-difference"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v4, "lW"

    const-string v13, "width-difference"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v4, "lH"

    const-string v13, "height-difference"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v4, "lWR"

    const-string v13, "width-difference-ratio"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v4, "lHR"

    const-string v13, "height-difference-ratio"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v4, "lA"

    const-string v13, "angle-difference"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v4, "lMW"

    const-string v13, "minimum-width-ratio"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v4, "lMH"

    const-string v13, "minimum-height-ratio"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v4, "lC"

    const-string v13, "ignore-content-scale"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v4, "lR"

    const-string v13, "ignore-reversing"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v4, "lE"

    const-string v13, "disable-when-editing-together"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v4, "lP"

    const-string v13, "is-preferred"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v4, "lS"

    const-string v13, "is-strong"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v4, "lF"

    const-string v13, "is-fixed"

    invoke-virtual {v0, v1, v3, v4, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v4, "ltP"

    const-string v13, "tc-position-type"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v4, "ltS"

    const-string v13, "tc-size-type"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v4, "ltA"

    const-string v13, "tc-angle-type"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v4, "ltX"

    const-string v13, "tc-x"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v4, "ltY"

    const-string v13, "tc-y"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v4, "ltI"

    const-string v13, "tc-handle-index"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v4, "ltO"

    const-string v13, "tc-other-handle-index"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v4, "ltM"

    const-string v13, "tc-parameter"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v4, "ltW"

    const-string v13, "tc-width"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v4, "ltH"

    const-string v13, "tc-height"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v4, "lfP"

    const-string v13, "fc-position-type"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v4, "lfS"

    const-string v13, "fc-size-type"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v4, "lfA"

    const-string v13, "fc-angle-type"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v4, "lfX"

    const-string v13, "fc-x"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v4, "lfY"

    const-string v13, "fc-y"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v4, "lfI"

    const-string v13, "fc-handle-index"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v4, "lfO"

    const-string v13, "fc-other-handle-index"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v4, "lfM"

    const-string v13, "fc-parameter"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v4, "lfW"

    const-string v13, "fc-width"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v4, "lfH"

    const-string v13, "fc-height"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-interface {v1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 825
    sget-object v13, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v13

    invoke-static {v4, v13}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v4

    .line 827
    sget-object v13, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v13

    const-string v14, "PY"

    const-string v15, "PX"

    const-string v2, "TY"

    move-object/from16 p2, v12

    const-string v12, "TX"

    move-object/from16 v16, v11

    const-string v11, "t"

    move-object/from16 v17, v10

    const-string v10, "pa"

    move-object/from16 v18, v9

    const-string v9, "style-id"

    move-object/from16 v19, v8

    const-string v8, "py"

    move-object/from16 v21, v7

    const-string v7, "px"

    move-object/from16 v22, v6

    const-string v6, "ty"

    move-object/from16 v23, v5

    const-string v5, "tx"

    if-ne v4, v13, :cond_b

    .line 830
    const-string v4, "stroke-type"

    invoke-static {v1, v3, v11, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 834
    iget-object v9, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v9, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 838
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 840
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    const-string v9, "C!"

    invoke-interface {v4, v9}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 842
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_1

    :cond_1
    const-wide/16 v16, 0x0

    :goto_1
    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    .line 847
    invoke-static/range {v16 .. v17}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 849
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    const-string v9, "S"

    invoke-interface {v4, v9}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 851
    const-string v9, "I"

    iget-object v13, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {v4, v9, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    sget-object v9, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result v9

    const-string v13, "T"

    invoke-interface {v4, v13, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 855
    sget-object v9, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v9

    const-string v13, "P"

    invoke-interface {v4, v13, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 857
    const-string v9, "W"

    const/4 v13, 0x2

    invoke-interface {v4, v9, v13}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 860
    iget-object v9, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    const-string v13, "C!"

    move-object/from16 v24, v8

    invoke-static/range {v16 .. v17}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v13, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v8, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    iget-object v9, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {v8, v9, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    :cond_2
    move-object/from16 v24, v8

    .line 866
    :goto_2
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 867
    iget-object v8, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v8, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 870
    sget-object v8, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v8

    invoke-interface {v3, v11, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    goto :goto_3

    :cond_3
    move-object/from16 v24, v8

    :goto_3
    if-eqz v4, :cond_4

    .line 873
    const-string v8, "p"

    invoke-interface {v3, v8, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 876
    :cond_4
    const-string v4, "s"

    const-string v8, "start-index"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v4, "e"

    const-string v8, "end-index"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v4, "b"

    const-string v8, "base-id"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v4, "P"

    const-string v8, "points"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsPointArray(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v4, "TA"

    const-string v8, "ta"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v4, "TB"

    const-string v8, "tb"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v4, "TC"

    const-string v8, "tc"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v4, "TD"

    const-string v8, "td"

    invoke-static {v1, v3, v4, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-static {v1, v3, v12, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    invoke-static {v1, v3, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v2, "PA"

    invoke-static {v1, v3, v2, v10}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v2, "PB"

    const-string v4, "pb"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v2, "PC"

    const-string v4, "pc"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const-string v2, "PD"

    const-string v4, "pd"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-static {v1, v3, v15, v7}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v24

    .line 907
    invoke-static {v1, v3, v14, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v2, "d"

    const-string v4, "reducer-delta"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v2, "z"

    const-string v4, "zoom"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v2, "segment-data"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    .line 915
    const-string v4, "application/octet-stream"

    if-eqz v2, :cond_6

    .line 916
    const-string v2, "segment-data"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 918
    invoke-static {v2}, Lcom/metamoji/cm/HashGenerator;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v2

    .line 919
    new-instance v5, Lcom/metamoji/cm/Blob;

    invoke-direct {v5, v2, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 920
    const-string v2, "g"

    invoke-interface {v3, v2, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_4

    .line 923
    :cond_5
    new-instance v2, Lcom/metamoji/cm/Blob;

    const/4 v5, 0x0

    new-array v6, v5, [B

    invoke-direct {v2, v6, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 924
    const-string v5, "g"

    invoke-interface {v3, v5, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_4

    .line 929
    :cond_6
    sget-object v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v2

    invoke-interface {v3, v11, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 930
    sget-object v5, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_7

    sget-object v5, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_7

    sget-object v5, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->FOUNTAIN:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v5

    if-ne v2, v5, :cond_8

    .line 932
    :cond_7
    new-instance v2, Lcom/metamoji/cm/Blob;

    const/4 v5, 0x0

    new-array v6, v5, [B

    invoke-direct {v2, v6, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 933
    const-string v5, "g"

    invoke-interface {v3, v5, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 938
    :cond_8
    :goto_4
    const-string v2, "penattr-data"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 940
    const-string v2, "penattr-data"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 941
    invoke-static {v2}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 942
    invoke-static {v2}, Lcom/metamoji/cm/HashGenerator;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v2

    .line 943
    new-instance v5, Lcom/metamoji/cm/Blob;

    invoke-direct {v5, v2, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 944
    const-string v2, "q"

    invoke-interface {v3, v2, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    goto :goto_5

    .line 947
    :cond_9
    new-instance v2, Lcom/metamoji/cm/Blob;

    const/4 v13, 0x0

    new-array v5, v13, [B

    invoke-direct {v2, v5, v4}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    .line 948
    const-string v4, "q"

    invoke-interface {v3, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V

    .line 953
    :cond_a
    :goto_5
    const-string v2, "sc"

    const-string v4, "sc"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v2, "wc"

    const-string v4, "wc"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_b
    const/4 v13, 0x0

    .line 959
    sget-object v20, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v13

    move-object/from16 v20, v10

    const-string v10, "shapeProp-"

    if-ne v4, v13, :cond_24

    .line 962
    const-string v4, "X"

    const-string v13, "x"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v4, "Y"

    const-string v13, "y"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v4, "W"

    const-string v13, "w"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v4, "H"

    const-string v13, "h"

    invoke-static {v1, v3, v4, v13}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-static {v1, v3, v12, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-static {v1, v3, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "SW"

    const-string v4, "sw"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "SH"

    const-string v4, "sh"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-static {v1, v3, v15, v7}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {v1, v3, v14, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string v2, "PW"

    const-string v4, "pw"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v2, "PH"

    const-string v4, "ph"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v2, "RX?"

    const-string v4, "rx"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string v2, "RY?"

    const-string v4, "ry"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const-string v2, "PRX?"

    const-string v4, "prx"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v2, "PRY?"

    const-string v4, "pry"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "shape-type"

    invoke-static {v1, v3, v11, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 999
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_d

    .line 1001
    const-string v4, "p"

    invoke-interface {v3, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1007
    :cond_d
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1008
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v4, :cond_22

    .line 1009
    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1010
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_f

    move-object/from16 v15, v22

    move-object/from16 v14, v23

    :cond_e
    move/from16 v23, v4

    move/from16 v22, v11

    :goto_8
    move-object/from16 v4, v20

    goto/16 :goto_b

    :cond_f
    move-object/from16 v14, v23

    .line 1017
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    move-object/from16 v15, v22

    .line 1018
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    move/from16 v22, v11

    move-object/from16 v11, v21

    .line 1019
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1f

    move-object/from16 v21, v11

    move-object/from16 v11, v19

    .line 1020
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e

    move-object/from16 v19, v11

    move-object/from16 v11, v18

    .line 1021
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    .line 1022
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    move-object/from16 v17, v11

    move-object/from16 v11, v16

    .line 1023
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v11, p2

    .line 1024
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    move-object/from16 p2, v2

    if-nez v23, :cond_19

    const-string v2, "is-reverse"

    .line 1025
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "is-rotate"

    .line 1026
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "is-erase"

    .line 1027
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "pre-edit"

    .line 1028
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "pre-angle"

    .line 1029
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "pre-contentscale"

    .line 1030
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "creator"

    .line 1031
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "creation-time"

    .line 1032
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "collaboration-room"

    .line 1033
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "creator-id"

    .line 1034
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "creator-name"

    .line 1035
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "creator-group"

    .line 1036
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "target-id"

    .line 1037
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "x-difference"

    .line 1038
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "y-difference"

    .line 1039
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "width-difference"

    .line 1040
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "height-difference"

    .line 1041
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "width-difference-ratio"

    .line 1042
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "height-difference-ratio"

    .line 1043
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "angle-difference"

    .line 1044
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "minimum-width-ratio"

    .line 1045
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "minimum-height-ratio"

    .line 1046
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ignore-content-scale"

    .line 1047
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ignore-reversing"

    .line 1048
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "disable-when-editing-together"

    .line 1049
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "is-preferred"

    .line 1050
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "is-strong"

    .line 1051
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "is-fixed"

    .line 1052
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-position-type"

    .line 1053
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-size-type"

    .line 1054
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-angle-type"

    .line 1055
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-x"

    .line 1056
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-y"

    .line 1057
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-handle-index"

    .line 1058
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-other-handle-index"

    .line 1059
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-parameter"

    .line 1060
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-width"

    .line 1061
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "tc-height"

    .line 1062
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-position-type"

    .line 1063
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-size-type"

    .line 1064
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-angle-type"

    .line 1065
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-x"

    .line 1066
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-y"

    .line 1067
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-handle-index"

    .line 1068
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-other-handle-index"

    .line 1069
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-parameter"

    .line 1070
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-width"

    .line 1071
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "fc-height"

    .line 1072
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "x"

    .line 1074
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "y"

    .line 1075
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "w"

    .line 1076
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "h"

    .line 1077
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1078
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1079
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "sw"

    .line 1080
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "sh"

    .line 1081
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1082
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1083
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "pw"

    .line 1084
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ph"

    .line 1085
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "rx"

    .line 1086
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ry"

    .line 1087
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "prx"

    .line 1088
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "pry"

    .line 1089
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "shape-type"

    .line 1090
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1091
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_9

    .line 1096
    :cond_10
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_9

    .line 1100
    :cond_11
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 1101
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_19

    .line 1103
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1106
    const-string v13, "shapePropType-"

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v13

    if-nez v13, :cond_12

    .line 1109
    invoke-interface {v3, v12, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1111
    :cond_12
    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    move/from16 v23, v4

    .line 1113
    const-string v4, "s"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1115
    invoke-interface {v3, v12, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1117
    :cond_13
    const-string v4, "b"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1119
    invoke-virtual {v0, v3, v12, v2}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->setPropertyAsBool(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1128
    :cond_14
    const-string v4, "n"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1130
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1132
    invoke-interface {v3, v12, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_a

    .line 1135
    :cond_15
    const-string v4, "sa"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1137
    new-instance v4, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3, v12, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->setPropertyAsArray(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    goto :goto_a

    .line 1139
    :cond_16
    const-string v4, "ba"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_a

    .line 1150
    :cond_17
    const-string v4, "na"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1152
    new-instance v4, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v3, v12, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->setPropertyAsArray(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    goto :goto_a

    :cond_18
    move-object/from16 v4, v20

    .line 1154
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 1156
    invoke-static {v2}, Lcom/metamoji/cm/PointArray;->parse(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v13

    if-eqz v13, :cond_21

    .line 1158
    invoke-interface {v3, v12, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    :goto_9
    move/from16 v23, v4

    :cond_1a
    :goto_a
    move-object/from16 v4, v20

    goto :goto_c

    :cond_1b
    move/from16 v23, v4

    move-object/from16 v16, v11

    goto/16 :goto_8

    :cond_1c
    move/from16 v23, v4

    move-object/from16 v17, v11

    goto/16 :goto_8

    :cond_1d
    move/from16 v23, v4

    move-object/from16 v18, v11

    goto/16 :goto_8

    :cond_1e
    move/from16 v23, v4

    move-object/from16 v19, v11

    goto/16 :goto_8

    :cond_1f
    move/from16 v23, v4

    move-object/from16 v21, v11

    goto/16 :goto_8

    :cond_20
    move/from16 v23, v4

    move-object/from16 v4, v20

    move-object/from16 v15, v22

    move/from16 v22, v11

    :goto_b
    move-object/from16 v11, p2

    move-object/from16 p2, v2

    :cond_21
    :goto_c
    add-int/lit8 v2, v22, 0x1

    move/from16 v20, v2

    move-object/from16 v2, p2

    move-object/from16 p2, v11

    move/from16 v11, v20

    move-object/from16 v20, v4

    move-object/from16 v22, v15

    move/from16 v4, v23

    move-object/from16 v23, v14

    goto/16 :goto_7

    .line 1167
    :cond_22
    const-string v2, "shape-segment"

    const-string v4, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {v1, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 1169
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v2, :cond_3b

    .line 1170
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 1171
    instance-of v5, v4, Lorg/w3c/dom/Element;

    if-eqz v5, :cond_23

    .line 1172
    check-cast v4, Lorg/w3c/dom/Element;

    move-object/from16 v13, p3

    invoke-virtual {v0, v4, v3, v13}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseSegmentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 1173
    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    goto :goto_e

    :cond_23
    move-object/from16 v13, p3

    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_24
    move-object/from16 v11, v20

    move-object/from16 v20, p2

    move-object/from16 p2, v10

    move-object v10, v11

    move-object/from16 v13, p3

    move-object/from16 v25, v22

    move-object/from16 v11, v23

    .line 1178
    sget-object v22, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_25

    .line 1181
    const-string v4, "X"

    const-string v9, "x"

    invoke-static {v1, v3, v4, v9}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v4, "Y"

    const-string v9, "y"

    invoke-static {v1, v3, v4, v9}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v4, "W"

    const-string v9, "w"

    invoke-static {v1, v3, v4, v9}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v4, "H"

    const-string v9, "h"

    invoke-static {v1, v3, v4, v9}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-static {v1, v3, v12, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-static {v1, v3, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v2, "SW"

    const-string v4, "sw"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v2, "SH"

    const-string v4, "sh"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-static {v1, v3, v15, v7}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-static {v1, v3, v14, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v2, "PW"

    const-string v4, "pw"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, "PH"

    const-string v4, "ph"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v2, "RX?"

    const-string v4, "rx"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v2, "RY?"

    const-string v4, "ry"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v2, "PRX?"

    const-string v4, "prx"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v2, "PRY?"

    const-string v4, "pry"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v2, "ref"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1215
    invoke-static {v1}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 1217
    iget-object v2, v13, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v2, v1, v13}, Lcom/metamoji/cv/CvModelConverter;->importModels(Ljava/lang/Object;Lcom/metamoji/cv/CvConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 1218
    const-string v2, "u"

    invoke-interface {v3, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1221
    iget-object v2, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->_drawModel:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_3b

    .line 1222
    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-object v3

    .line 1226
    :cond_25
    sget-object v11, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v11

    if-ne v4, v11, :cond_3b

    .line 1229
    const-string v4, "P"

    const-string v11, "points"

    invoke-static {v1, v3, v4, v11}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsPointArray(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v4, "TA"

    const-string v11, "ta"

    invoke-static {v1, v3, v4, v11}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v4, "TB"

    const-string v11, "tb"

    invoke-static {v1, v3, v4, v11}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v4, "TC"

    const-string v11, "tc"

    invoke-static {v1, v3, v4, v11}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v4, "TD"

    const-string v11, "td"

    invoke-static {v1, v3, v4, v11}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    invoke-static {v1, v3, v12, v5}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-static {v1, v3, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const-string v2, "PA"

    invoke-static {v1, v3, v2, v10}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const-string v2, "PB"

    const-string v4, "pb"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v2, "PC"

    const-string v4, "pc"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v2, "PD"

    const-string v4, "pd"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    invoke-static {v1, v3, v15, v7}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-static {v1, v3, v14, v8}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string v2, "a"

    const-string v4, "arrow-type"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-interface {v1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1259
    iget-object v4, v0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {v4, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    goto :goto_f

    :cond_26
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_27

    .line 1261
    const-string v4, "p"

    invoke-interface {v3, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1264
    :cond_27
    const-string v2, "i"

    const-string v4, "path-info"

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsIntList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v2, "e"

    const-string v4, "extra-enabled"

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1272
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v4, :cond_3b

    .line 1273
    invoke-interface {v2, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 1274
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_28

    move-object/from16 p3, v2

    move-object/from16 v14, v23

    goto/16 :goto_12

    :cond_28
    move-object/from16 v14, v23

    .line 1281
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_39

    move-object/from16 v15, v25

    .line 1282
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    move-object/from16 p3, v2

    if-nez v22, :cond_3a

    move-object/from16 v2, v21

    .line 1283
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_38

    move-object/from16 v21, v2

    move-object/from16 v2, v19

    .line 1284
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_37

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    .line 1285
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_36

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    .line 1286
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_35

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    .line 1287
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_34

    move-object/from16 v16, v2

    move-object/from16 v2, v20

    .line 1288
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_33

    move-object/from16 v20, v2

    const-string v2, "is-reverse"

    .line 1289
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "is-rotate"

    .line 1290
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "is-erase"

    .line 1291
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "pre-edit"

    .line 1292
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "pre-angle"

    .line 1293
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "pre-contentscale"

    .line 1294
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "creator"

    .line 1295
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "creation-time"

    .line 1296
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "collaboration-room"

    .line 1297
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "creator-id"

    .line 1298
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "creator-name"

    .line 1299
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "creator-group"

    .line 1300
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "target-id"

    .line 1301
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "x-difference"

    .line 1302
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "y-difference"

    .line 1303
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "width-difference"

    .line 1304
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "height-difference"

    .line 1305
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "width-difference-ratio"

    .line 1306
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "height-difference-ratio"

    .line 1307
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "angle-difference"

    .line 1308
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "minimum-width-ratio"

    .line 1309
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "minimum-height-ratio"

    .line 1310
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "ignore-content-scale"

    .line 1311
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "ignore-reversing"

    .line 1312
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "disable-when-editing-together"

    .line 1313
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "is-preferred"

    .line 1314
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "is-strong"

    .line 1315
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "is-fixed"

    .line 1316
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-position-type"

    .line 1317
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-size-type"

    .line 1318
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-angle-type"

    .line 1319
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-x"

    .line 1320
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-y"

    .line 1321
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-handle-index"

    .line 1322
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-other-handle-index"

    .line 1323
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-parameter"

    .line 1324
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-width"

    .line 1325
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc-height"

    .line 1326
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-position-type"

    .line 1327
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-size-type"

    .line 1328
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-angle-type"

    .line 1329
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-x"

    .line 1330
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-y"

    .line 1331
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-handle-index"

    .line 1332
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-other-handle-index"

    .line 1333
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-parameter"

    .line 1334
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-width"

    .line 1335
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "fc-height"

    .line 1336
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "points"

    .line 1338
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "ta"

    .line 1339
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tb"

    .line 1340
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "tc"

    .line 1341
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "td"

    .line 1342
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1343
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1344
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1345
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "pb"

    .line 1346
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "pc"

    .line 1347
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "pd"

    .line 1348
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1349
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1350
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "arrow-type"

    .line 1351
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1352
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "path-info"

    .line 1353
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "extra-enabled"

    .line 1354
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto/16 :goto_13

    :cond_29
    move-object/from16 v2, p2

    .line 1359
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2a

    goto/16 :goto_11

    .line 1364
    :cond_2a
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_32

    .line 1365
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_32

    move-object/from16 p2, v2

    .line 1367
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1370
    const-string v13, "shapePropType-"

    invoke-virtual {v13, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v13

    if-nez v13, :cond_2b

    .line 1373
    invoke-interface {v3, v2, v12}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1375
    :cond_2b
    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1377
    const-string v1, "s"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1379
    invoke-interface {v3, v2, v12}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1380
    :cond_2c
    const-string v1, "b"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1382
    invoke-virtual {v0, v3, v2, v12}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->setPropertyAsBool(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1389
    :cond_2d
    const-string v1, "n"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1391
    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1393
    invoke-interface {v3, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_13

    .line 1395
    :cond_2e
    const-string v1, "sa"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1397
    new-instance v1, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v3, v2, v12, v1}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->setPropertyAsArray(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    goto :goto_13

    .line 1398
    :cond_2f
    const-string v1, "ba"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_13

    .line 1403
    :cond_30
    const-string v1, "na"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1405
    new-instance v1, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v3, v2, v12, v1}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->setPropertyAsArray(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V

    goto :goto_13

    .line 1406
    :cond_31
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1408
    invoke-static {v12}, Lcom/metamoji/cm/PointArray;->parse(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 1410
    invoke-interface {v3, v2, v12}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_32
    :goto_11
    move-object/from16 p2, v2

    goto :goto_13

    :cond_33
    move-object/from16 v20, v2

    goto :goto_13

    :cond_34
    move-object/from16 v16, v2

    goto :goto_13

    :cond_35
    move-object/from16 v17, v2

    goto :goto_13

    :cond_36
    move-object/from16 v18, v2

    goto :goto_13

    :cond_37
    move-object/from16 v19, v2

    goto :goto_13

    :cond_38
    move-object/from16 v21, v2

    goto :goto_13

    :cond_39
    move-object/from16 p3, v2

    :goto_12
    move-object/from16 v15, v25

    :cond_3a
    :goto_13
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v23, v14

    move-object/from16 v25, v15

    goto/16 :goto_10

    :cond_3b
    return-object v3
.end method

.method parseElemsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 680
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string v0, "EM"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 684
    const-string v0, "C"

    const-string v1, "id-count"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "element"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 690
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 691
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 692
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 693
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseElemElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 694
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method parseGroupElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 1751
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string p3, "G"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 1754
    const-string p3, "id"

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;->value:Ljava/lang/String;

    .line 1755
    iget-object p4, p4, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;->value:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1760
    :cond_0
    const-string p4, "group-element"

    const-string v0, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, p4, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1762
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    .line 1763
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1764
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_1

    .line 1765
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1767
    invoke-interface {p2, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected parseGroupElementForParts(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lcom/metamoji/cv/xml/CvDirectoryConvertContext;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1783
    const-string p2, "id"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1789
    :cond_0
    const-string v1, "group-element"

    const-string v2, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1791
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1792
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1793
    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2

    .line 1794
    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1797
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 1799
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    invoke-virtual {p3, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method parseGroupsElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 5

    .line 1719
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string v0, "GM"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 1726
    const-string v0, "C!"

    const-string v1, "id-count"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v0, "group"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1731
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1732
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1733
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 1734
    new-instance v3, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;

    invoke-direct {v3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;-><init>()V

    .line 1735
    check-cast v2, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v2, p2, p3, v3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseGroupElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 1736
    iget-object v4, v3, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;->value:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1737
    iget-object v3, v3, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$ResultString;->value:Ljava/lang/String;

    invoke-interface {p2, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method parseSegmentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1430
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string p3, "S"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 1433
    const-string p3, "T"

    const-string v0, "type"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const-string p3, "P"

    const-string v0, "points"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsPointArray(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string p3, "V"

    const-string v0, "is-visible"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    const-string p3, "B"

    const-string v0, "is-boundable"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->getAttributeAsBool(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method parseStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 526
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string p3, "S"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 530
    const-string p3, "I"

    const-string v0, "id"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const-string v0, "type"

    const-string v1, "T"

    const/4 v2, 0x3

    if-lt p3, v2, :cond_0

    .line 534
    invoke-static {p1, p2, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_0
    new-instance p3, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda3;

    invoke-direct {p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p2, v1, v0, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    .line 541
    :goto_0
    iget p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const-string v0, "pen-type"

    const-string v1, "P"

    if-lt p3, v2, :cond_1

    .line 543
    invoke-static {p1, p2, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 547
    :cond_1
    new-instance p3, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p2, v1, v0, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IChecker;)V

    .line 551
    :goto_1
    const-string p3, "W"

    const-string v0, "width"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string p3, "C"

    const-string v0, "color"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string p3, "A"

    const-string v0, "alpha"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string p3, "cap"

    const-string v0, "c"

    invoke-static {p1, p2, v0, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string p3, "j"

    const-string v1, "join"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string p3, "m"

    const-string v1, "miter-limit"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string p3, "d"

    const-string v1, "dash"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDoubleList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string p3, "ft"

    const-string v1, "fill-type"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string p3, "fc"

    const-string v1, "fill-color"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsStringList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string p3, "fa"

    const-string v1, "fill-alpha"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string p3, "h"

    const-string v1, "arrow-type"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string p3, "p"

    const-string v1, "arrow-pos"

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string p3, "arrow-ratio"

    const-string v1, "r"

    invoke-static {p1, p2, v1, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string p3, "t"

    const-string v3, "ink-type"

    invoke-static {p1, p2, p3, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsInt(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget p3, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_version:I

    const-string v3, "ink-colors"

    if-lt p3, v2, :cond_2

    .line 588
    invoke-static {p1, p2, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsStringList(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 592
    :cond_2
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 593
    invoke-direct {p0, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->colorArrayFromNumArrayString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 596
    invoke-interface {p2, v0, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 600
    :cond_3
    :goto_2
    const-string p3, "a"

    const-string v0, "pen-angle"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string p3, "pen-rate"

    invoke-static {p1, p2, v1, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string p3, "trans"

    invoke-static {p1, p2, v1, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string p3, "b0"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string p3, "b1"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string p3, "b2"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string p3, "b3"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string p3, "b4"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string p3, "b5"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string p3, "e0"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string p3, "e1"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string p3, "e2"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string p3, "e3"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string p3, "e4"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string p3, "e5"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string p3, "t0"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string p3, "t1"

    invoke-static {p1, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string p3, "t2"

    const-string v0, "t2"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string p3, "t3"

    const-string v0, "t3"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string p3, "t4"

    const-string v0, "t4"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string p3, "t5"

    const-string v0, "t5"

    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsDouble(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method protected parseStylesElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 401
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    const-string v0, "SM"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 405
    const-string v0, "C!"

    const-string v1, "id-count"

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->getAttributeAsString(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 411
    iput-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->m_defaultStyleId:Ljava/lang/String;

    .line 414
    const-string v0, "style"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-static {p1, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Incoming;->listChildElementsByName(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 416
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 417
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 418
    instance-of v2, v1, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    .line 419
    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;->parseStyleElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 420
    const-string v2, "I"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method setPropertyAsArray(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;)V
    .locals 4

    .line 1908
    invoke-static {p3}, Lcom/metamoji/cv/xml/XmlUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1909
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1910
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1911
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 1912
    invoke-interface {p4, v3}, Lcom/metamoji/cv/xml/XmlUtils$Incoming$IObjectGenerator;->generate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1915
    :cond_0
    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method setPropertyAsBool(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1898
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1899
    :goto_0
    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1902
    :catch_0
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 1903
    invoke-interface {p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method
