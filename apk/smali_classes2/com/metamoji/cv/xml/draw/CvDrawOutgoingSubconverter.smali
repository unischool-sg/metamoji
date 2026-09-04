.class public Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;
.super Ljava/lang/Object;
.source "CvDrawOutgoingSubconverter.java"

# interfaces
.implements Lcom/metamoji/cv/ICvSubconverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$DrElementTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$DrStrokeTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$DrStyleTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$DrPenTypeVer2;,
        Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$UnDrInkTypeVer2;
    }
.end annotation


# instance fields
.field protected m_contentIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_elemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_elemIdMapForMerge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected m_groupCount:I

.field protected m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

.field protected m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

.field protected m_groupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cv/xml/draw/DrCvElem;",
            ">;"
        }
    .end annotation
.end field

.field protected m_groupMembers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field protected m_idCount:I

.field protected m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

.field protected m_mergeTargetModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_shareMode:Z

.field protected m_styleIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m_styleIdMapForMerge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructIdMapsForEMModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;)V
    .locals 3

    .line 730
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    .line 734
    const-string v1, "I"

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 735
    iget-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    sget-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    .line 739
    sget-object v2, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    .line 740
    iget-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateEMElementSub(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 752
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    move-object v2, p2

    :goto_0
    if-eqz v2, :cond_2

    .line 754
    const-string p2, "I"

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p2

    .line 755
    iget-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 757
    const-string p2, "lT"

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 758
    iget-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 759
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateEElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_2

    :cond_1
    move-object v1, p1

    move-object v5, p3

    .line 761
    :goto_2
    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    move-object p1, v1

    move-object p3, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getEMModelFromDrawModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 2314
    const-string v0, "M"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2316
    const-string v0, "EM"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getGMModelFromDrawModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 2329
    const-string v0, "M"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2331
    const-string v0, "GM"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSMModelFromDrawModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 2299
    const-string v0, "M"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2301
    const-string v0, "SM"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$generateEElement$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 808
    instance-of v0, p0, Ljava/lang/Boolean;

    const-string v1, "0"

    if-eqz v0, :cond_0

    .line 809
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    return-object p0

    :cond_0
    return-object v1
.end method

.method static synthetic lambda$generateEElement$2(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1329
    check-cast p0, Ljava/util/List;

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1333
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1336
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generateSElement$0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 532
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 533
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 535
    :cond_0
    check-cast p0, Ljava/util/List;

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 539
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generateStyleElementFromV2$4(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 2138
    check-cast p0, Ljava/util/List;

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2142
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2143
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2145
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generateStyleElementFromV3$3(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1715
    check-cast p0, Ljava/util/List;

    .line 1716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1717
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1718
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1719
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1722
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private propertyToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2270
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_5

    .line 2271
    check-cast p1, Ljava/util/List;

    .line 2272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2275
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2276
    :cond_1
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 2277
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2279
    :cond_3
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2281
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2283
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 2284
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v1

    :cond_6
    return-object v2

    .line 2286
    :cond_7
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 2287
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2289
    :cond_8
    instance-of v0, p1, Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_9

    .line 2290
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2292
    :cond_9
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static toNewElementType(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 123
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0

    .line 121
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0

    .line 117
    :cond_1
    sget-object p0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p0

    return p0

    .line 119
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

    .line 184
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p0

    return p0

    .line 182
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

    .line 147
    sget-object p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p0

    return p0

    .line 142
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p0

    return p0

    .line 144
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

    .line 167
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p0

    return p0

    .line 165
    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p0

    return p0
.end method

.method static toOldElementType(I)I
    .locals 1

    .line 128
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 130
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 132
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

    .line 189
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

    .line 152
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 154
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

    .line 172
    sget-object p0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public accept(Lcom/metamoji/cv/CvConvertItem;)Z
    .locals 3

    .line 215
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    const-class v1, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 220
    :cond_0
    const-string v1, "draw"

    const-string v2, "xml"

    invoke-virtual {v0, p1, v1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->fillOutgoingItem(Lcom/metamoji/cv/CvConvertItem;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method constructGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cv/xml/draw/DrCvElem;Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 1996
    invoke-virtual {p0, p1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->getIncludingGroupHier(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v0

    .line 1998
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1999
    iget-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cv/xml/draw/DrCvElem;

    if-nez v2, :cond_1

    .line 2001
    new-instance v2, Lcom/metamoji/cv/xml/draw/DrCvElem;

    invoke-direct {v2}, Lcom/metamoji/cv/xml/draw/DrCvElem;-><init>()V

    .line 2002
    iget-object v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    if-nez v3, :cond_0

    .line 2003
    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    goto :goto_1

    .line 2006
    :cond_0
    iget-object p2, p2, Lcom/metamoji/cv/xml/draw/DrCvElem;->children:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    :goto_1
    iput-object v1, v2, Lcom/metamoji/cv/xml/draw/DrCvElem;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 p2, 0x2

    .line 2009
    iput p2, v2, Lcom/metamoji/cv/xml/draw/DrCvElem;->type:I

    .line 2011
    iget-object p2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object p2, v2

    goto :goto_0

    .line 2016
    :cond_2
    new-instance v0, Lcom/metamoji/cv/xml/draw/DrCvElem;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/draw/DrCvElem;-><init>()V

    .line 2017
    iput-object p1, v0, Lcom/metamoji/cv/xml/draw/DrCvElem;->id:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 p1, 0x0

    .line 2018
    iput p1, v0, Lcom/metamoji/cv/xml/draw/DrCvElem;->type:I

    .line 2019
    iput-object p3, v0, Lcom/metamoji/cv/xml/draw/DrCvElem;->model:Lcom/metamoji/df/model/IModel;

    .line 2021
    iget-object p1, p2, Lcom/metamoji/cv/xml/draw/DrCvElem;->children:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public convert(Lcom/metamoji/cv/CvConvertItem;)V
    .locals 3

    .line 237
    iget-object v0, p1, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    check-cast v0, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;

    .line 239
    invoke-static {}, Lcom/metamoji/cv/xml/XmlUtils;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 241
    iget-object v2, p1, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 242
    invoke-virtual {p0, v1, v2, v0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateDrawElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 244
    iget-object p1, p1, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePath(Ljava/lang/Object;Z)Ljava/io/File;

    move-result-object p1

    .line 245
    invoke-static {v1, p1}, Lcom/metamoji/cv/xml/XmlUtils;->saveXMLFile(Lorg/w3c/dom/Document;Ljava/io/File;)Z

    return-void
.end method

.method generateContentsElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 2081
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2082
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "contents"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 2086
    const-string v2, "c"

    invoke-static {v1, p2, v2, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    const-string v2, "S"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2092
    invoke-virtual {p0, v1, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateStylesElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 2096
    :cond_0
    const-string v2, "E"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2098
    invoke-virtual {p0, v1, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemsElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 2102
    :cond_1
    invoke-static {p2}, Lcom/metamoji/cv/CvConverterUtils;->loadAdditionalsPropertyFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2104
    invoke-static {v0, p2}, Lcom/metamoji/cv/CvConverterUtils;->generateAdditionalsElement(Lorg/w3c/dom/Document;Ljava/util/Map;)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2107
    :cond_2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateContentsElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 5

    .line 1648
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1649
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "contents"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x0

    .line 1651
    iput v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    .line 1652
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 1653
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 1654
    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    .line 1658
    const-string v3, "SM"

    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1660
    invoke-virtual {p0, v0, v3, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateStylesElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 1664
    :cond_0
    const-string v3, "GM"

    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1666
    new-instance v4, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-direct {v4, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    .line 1670
    :cond_1
    const-string v3, "EM"

    invoke-interface {p2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1672
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemsElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 1678
    :cond_2
    iget p2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "c"

    invoke-interface {v0, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1683
    iput v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    .line 1684
    iget-object p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1685
    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 1686
    iget-object p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1687
    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    .line 1688
    iput-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    return-void
.end method

.method generateDrawElement(Lorg/w3c/dom/Document;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 264
    const-string v4, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v5, "draw"

    invoke-interface {v1, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 270
    const-string v6, "unit-id"

    const-string v7, "unitId"

    invoke-static {v4, v2, v7, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    instance-of v6, v3, Lcom/metamoji/cv/xml/CvAtCollaboConvertContext;

    iput-boolean v6, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_shareMode:Z

    .line 287
    const-string v6, "!version"

    const/4 v8, 0x0

    invoke-interface {v2, v6, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x6

    if-gt v9, v10, :cond_9

    const/4 v5, 0x3

    .line 295
    const-string v10, "version"

    if-lt v9, v5, :cond_7

    .line 298
    iget-boolean v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_shareMode:Z

    const-string v11, "M"

    if-nez v5, :cond_1

    const/4 v5, 0x4

    if-lt v9, v5, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    const-string v5, "2"

    invoke-interface {v4, v10, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-interface {v2, v11}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 380
    invoke-virtual {v0, v4, v2, v3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateContentsElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto/16 :goto_2

    .line 302
    :cond_1
    :goto_0
    const-string v5, "R"

    const-string v12, "revision"

    invoke-static {v4, v2, v5, v12}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v5, "LV"

    const-string v12, "loaded-version"

    invoke-static {v4, v2, v5, v12}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v5, "LR"

    const-string v12, "loaded-revision"

    invoke-static {v4, v2, v5, v12}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v5, "MV"

    const-string v12, "modified-version"

    invoke-static {v4, v2, v5, v12}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v5, "MR"

    const-string v12, "modified-revision"

    invoke-static {v4, v2, v5, v12}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v5, "SC"

    const-string v12, "start-count"

    invoke-static {v4, v2, v5, v12}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v5, "x"

    invoke-static {v4, v2, v5, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v5, "y"

    invoke-static {v4, v2, v5, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v5, "width"

    invoke-static {v4, v2, v5, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v5, "height"

    invoke-static {v4, v2, v5, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v5, "rotation"

    invoke-static {v4, v2, v5, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v5, "contentScale"

    invoke-static {v4, v2, v5, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    instance-of v5, v3, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    if-eqz v5, :cond_4

    .line 330
    move-object v5, v3

    check-cast v5, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;

    iget-object v5, v5, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    if-eqz v5, :cond_4

    .line 331
    iget-object v5, v5, Lcom/metamoji/cv/xml/CvMergeInfo;->mergeTargetMap:Ljava/util/Map;

    if-eqz v5, :cond_4

    .line 332
    iget-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object v5, v5, Lcom/metamoji/cv/xml/CvMergeInfo;->mergeTargetMap:Ljava/util/Map;

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 333
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 334
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMapForMerge:Ljava/util/HashMap;

    .line 335
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMapForMerge:Ljava/util/HashMap;

    .line 338
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v5

    .line 339
    iget-object v13, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v2

    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/df/model/IModel;

    .line 340
    invoke-static {v7, v15}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v12

    .line 343
    iget-object v8, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object v8, v8, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagOwnerMap:Ljava/util/Map;

    invoke-interface {v8, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 346
    invoke-interface {v15, v6, v8}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v12

    if-le v12, v9, :cond_2

    move v9, v12

    move-object v14, v15

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 354
    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    :cond_4
    move-object v14, v2

    .line 360
    :cond_5
    invoke-static {v4, v14, v6, v10}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-interface {v2, v11}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 364
    invoke-virtual {v0, v4, v2, v3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    :cond_6
    const/4 v5, 0x0

    .line 368
    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    .line 369
    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    .line 370
    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMapForMerge:Ljava/util/HashMap;

    .line 371
    iput-object v5, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMapForMerge:Ljava/util/HashMap;

    goto :goto_2

    .line 387
    :cond_7
    invoke-static {v4, v2, v6, v10}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v5, "contents"

    invoke-interface {v2, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 391
    invoke-virtual {v0, v4, v2, v3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateContentsElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 395
    :cond_8
    :goto_2
    invoke-interface {v1, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    .line 291
    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v5, v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invalid version. %s version is %d; expected: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    new-instance v2, Lcom/metamoji/cm/CmException;

    const-string v3, "CV0051"

    invoke-direct {v2, v3, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected generateEElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 793
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateEElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void
.end method

.method protected generateEElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 803
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    .line 804
    const-string v6, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v7, "element"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 807
    new-instance v6, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda3;-><init>()V

    .line 817
    const-string v7, "I"

    if-nez v2, :cond_0

    .line 818
    const-string v8, "id"

    invoke-static {v5, v1, v7, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_0
    const-string v8, "id"

    invoke-interface {v5, v8, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :goto_0
    const-string v8, "type"

    const-string v9, "T"

    invoke-static {v5, v1, v9, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v8, "base-type"

    const-string v10, "B"

    invoke-static {v5, v1, v10, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v8, "angle"

    const-string v11, "A"

    invoke-static {v5, v1, v11, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v8, "contentscale"

    const-string v12, "C"

    invoke-static {v5, v1, v12, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v8, "is-select"

    const-string v13, "S?"

    invoke-static {v5, v1, v13, v8, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 834
    const-string v8, "is-move"

    const-string v14, "M?"

    invoke-static {v5, v1, v14, v8, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 836
    const-string v8, "is-resize"

    const-string v15, "R?"

    invoke-static {v5, v1, v15, v8, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 838
    const-string v8, "is-reverse"

    const-string v2, "V?"

    invoke-static {v5, v1, v2, v8, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 840
    const-string v8, "is-rotate"

    move-object/from16 v16, v2

    const-string v2, "O?"

    invoke-static {v5, v1, v2, v8, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 842
    const-string v8, "E?"

    move-object/from16 v17, v2

    const-string v2, "is-erase"

    invoke-static {v5, v1, v8, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 844
    const-string v2, "PE"

    const-string v8, "pre-edit"

    invoke-static {v5, v1, v2, v8, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 846
    const-string v2, "PR"

    const-string v8, "pre-angle"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v2, "PS"

    const-string v8, "pre-contentscale"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    instance-of v2, v4, Lcom/metamoji/cv/xml/CvPartConvertContext;

    if-nez v2, :cond_1

    .line 853
    const-string v2, "uIC"

    const-string v8, "creator"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v2, "uIT"

    const-string v8, "creation-time"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v2, "uIR"

    const-string v8, "collaboration-room"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v2, "uII"

    const-string v8, "creator-id"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v2, "uIN"

    const-string v8, "creator-name"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v2, "uIG"

    const-string v8, "creator-group"

    invoke-static {v5, v1, v2, v8}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v3, :cond_2

    .line 869
    const-string v2, "lT"

    const-string v3, "target-id"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_2
    const-string v2, "target-id"

    invoke-interface {v5, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    :goto_1
    const-string v2, "lX"

    const-string v3, "x-difference"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v2, "lY"

    const-string v3, "y-difference"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v2, "lW"

    const-string v3, "width-difference"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v2, "lH"

    const-string v3, "height-difference"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const-string v2, "lWR"

    const-string v3, "width-difference-ratio"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v2, "lHR"

    const-string v3, "height-difference-ratio"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v2, "lA"

    const-string v3, "angle-difference"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v2, "lC"

    const-string v3, "ignore-content-scale"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v2, "lMW"

    const-string v3, "minimum-width-ratio"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "lMH"

    const-string v3, "minimum-height-ratio"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v2, "lR"

    const-string v3, "ignore-reversing"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v2, "lE"

    const-string v3, "disable-when-editing-together"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v2, "lP"

    const-string v3, "is-preferred"

    invoke-static {v5, v1, v2, v3, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 901
    const-string v2, "lS"

    const-string v3, "is-strong"

    invoke-static {v5, v1, v2, v3, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 903
    const-string v2, "lF"

    const-string v3, "is-fixed"

    invoke-static {v5, v1, v2, v3, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 905
    const-string v2, "ltP"

    const-string v3, "tc-position-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v2, "ltS"

    const-string v3, "tc-size-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v2, "ltA"

    const-string v3, "tc-angle-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v2, "ltX"

    const-string v3, "tc-x"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v2, "ltY"

    const-string v3, "tc-y"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v2, "ltI"

    const-string v3, "tc-handle-index"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v2, "ltO"

    const-string v3, "tc-other-handle-index"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v2, "ltM"

    const-string v3, "tc-parameter"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v2, "ltW"

    const-string v3, "tc-width"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v2, "ltH"

    const-string v3, "tc-height"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v2, "lfP"

    const-string v3, "fc-position-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v2, "lfS"

    const-string v3, "fc-size-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v2, "lfA"

    const-string v3, "fc-angle-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v2, "lfX"

    const-string v3, "fc-x"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v2, "lfY"

    const-string v3, "fc-y"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const-string v2, "lfI"

    const-string v3, "fc-handle-index"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v2, "lfO"

    const-string v3, "fc-other-handle-index"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "lfM"

    const-string v3, "fc-parameter"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v2, "lfW"

    const-string v3, "fc-width"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v2, "lfH"

    const-string v3, "fc-height"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v2

    invoke-interface {v1, v9, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 946
    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v3

    const-string v6, "pa"

    const-string v8, "py"

    const-string v4, "px"

    move-object/from16 v18, v15

    const-string v15, "ty"

    move-object/from16 v19, v14

    const-string v14, "tx"

    move-object/from16 v20, v13

    const-string v13, "p"

    move-object/from16 v21, v12

    const-string v12, "style-id"

    move-object/from16 v22, v11

    const-string v11, "PY"

    move-object/from16 v23, v10

    const-string v10, "PX"

    move-object/from16 v24, v9

    const-string v9, "TY"

    move-object/from16 p4, v8

    const-string v8, "TX"

    if-ne v2, v3, :cond_a

    .line 949
    const-string v2, "t"

    const-string v3, "stroke-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-interface {v1, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_3

    .line 954
    invoke-interface {v2, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 957
    :cond_3
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v2

    .line 958
    iget-object v3, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 960
    invoke-interface {v5, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_4
    :goto_2
    const-string v2, "s"

    const-string v3, "start-index"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v2, "e"

    const-string v3, "end-index"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string v2, "b"

    const-string v3, "base-id"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v2, "P"

    const-string v3, "points"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v2, "TA"

    const-string v3, "ta"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v2, "TB"

    const-string v3, "tb"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v2, "TC"

    const-string v3, "tc"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string v2, "TD"

    const-string v3, "td"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {v5, v1, v8, v14}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {v5, v1, v9, v15}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v2, "PA"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v2, "PB"

    const-string v3, "pb"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v2, "PC"

    const-string v3, "pc"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string v2, "PD"

    const-string v3, "pd"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-static {v5, v1, v10, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p4

    .line 995
    invoke-static {v5, v1, v11, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v2, "d"

    const-string v3, "reducer-delta"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v2, "z"

    const-string v3, "zoom"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v2, "g"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1005
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_5

    .line 1006
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1007
    const-string v3, "segment-data"

    invoke-interface {v5, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1010
    :cond_5
    const-string v2, "segment-data"

    const-string v3, ""

    invoke-interface {v5, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_6
    :goto_3
    const-string v2, "q"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1018
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_7

    .line 1019
    invoke-virtual {v2}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1020
    const-string v3, "penattr-data"

    invoke-interface {v5, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1023
    :cond_7
    const-string v2, "segment-data"

    const-string v3, ""

    invoke-interface {v5, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_8
    :goto_4
    const-string v2, "sc"

    const-string v3, "sc"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v2, "wc"

    const-string v3, "wc"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object v3, v0

    goto/16 :goto_19

    :cond_a
    move-object/from16 v3, p4

    .line 1031
    sget-object v25, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-object/from16 p4, v6

    invoke-virtual/range {v25 .. v25}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v6

    const-string v25, "na"

    if-ne v2, v6, :cond_24

    .line 1034
    const-string v2, "X"

    const-string v6, "x"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    const-string v2, "Y"

    const-string v6, "y"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string v2, "W"

    const-string v6, "w"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v2, "H"

    const-string v6, "h"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-static {v5, v1, v8, v14}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-static {v5, v1, v9, v15}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v2, "SW"

    const-string v6, "sw"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const-string v2, "SH"

    const-string v6, "sh"

    invoke-static {v5, v1, v2, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-static {v5, v1, v10, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {v5, v1, v11, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v2, "PW"

    const-string v3, "pw"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v2, "PH"

    const-string v3, "ph"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string v2, "RX?"

    const-string v3, "rx"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v2, "RY?"

    const-string v3, "ry"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string v2, "PRX?"

    const-string v3, "prx"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v2, "PRY?"

    const-string v3, "pry"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string v2, "t"

    const-string v3, "shape-type"

    invoke-static {v5, v1, v2, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-interface {v1, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_c

    if-nez p3, :cond_b

    .line 1072
    invoke-interface {v2, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1075
    :cond_b
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    iget-object v3, v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1078
    invoke-interface {v5, v12, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_c
    :goto_5
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v2

    .line 1087
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1088
    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_6

    .line 1094
    :cond_e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v6, v24

    .line 1095
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    move-object/from16 v4, v23

    .line 1096
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    move-object/from16 v12, v22

    .line 1097
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    move-object/from16 v14, v21

    .line 1098
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    move-object/from16 v15, v20

    .line 1099
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1e

    move-object/from16 v24, v6

    move-object/from16 v6, v19

    .line 1100
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .line 1101
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1c

    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .line 1102
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1b

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    .line 1103
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1a

    move-object/from16 p3, v2

    const-string v2, "E?"

    .line 1104
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PE"

    .line 1105
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PR"

    .line 1106
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PS"

    .line 1107
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "uIC"

    .line 1108
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "uIT"

    .line 1109
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "uIR"

    .line 1110
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "uII"

    .line 1111
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "uIN"

    .line 1112
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "uIG"

    .line 1113
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lT"

    .line 1114
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lX"

    .line 1115
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lY"

    .line 1116
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lW"

    .line 1117
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lH"

    .line 1118
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lWR"

    .line 1119
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lHR"

    .line 1120
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lA"

    .line 1121
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lMW"

    .line 1122
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lMH"

    .line 1123
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lC"

    .line 1124
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lR"

    .line 1125
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lE"

    .line 1126
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lP"

    .line 1127
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lS"

    .line 1128
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lF"

    .line 1129
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltP"

    .line 1130
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltS"

    .line 1131
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltA"

    .line 1132
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltX"

    .line 1133
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltY"

    .line 1134
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltI"

    .line 1135
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltO"

    .line 1136
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltM"

    .line 1137
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltW"

    .line 1138
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "ltH"

    .line 1139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfP"

    .line 1140
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfS"

    .line 1141
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfA"

    .line 1142
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfX"

    .line 1143
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfY"

    .line 1144
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfI"

    .line 1145
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfO"

    .line 1146
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfM"

    .line 1147
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfW"

    .line 1148
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "lfH"

    .line 1149
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "X"

    .line 1151
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "Y"

    .line 1152
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "W"

    .line 1153
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "H"

    .line 1154
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1155
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1156
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "SW"

    .line 1157
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "SH"

    .line 1158
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1159
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1160
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PW"

    .line 1161
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "PH"

    .line 1162
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "RX?"

    .line 1163
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "RY?"

    .line 1164
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "t"

    .line 1165
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1166
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "BX"

    .line 1168
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "BY"

    .line 1169
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "BW"

    .line 1170
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "BH"

    .line 1171
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_a

    .line 1176
    :cond_f
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v4

    if-eqz v2, :cond_17

    .line 1179
    const-string v4, "shapeProp-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v12

    invoke-direct {v0, v2}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->propertyToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v4, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 1185
    const-string v2, "s"

    goto :goto_8

    .line 1186
    :cond_10
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_11

    .line 1188
    const-string v2, "b"

    goto :goto_8

    .line 1192
    :cond_11
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_12

    .line 1194
    const-string v2, "n"

    goto :goto_8

    .line 1195
    :cond_12
    instance-of v4, v2, Ljava/util/List;

    const/4 v12, 0x0

    if-eqz v4, :cond_15

    .line 1196
    check-cast v2, Ljava/util/List;

    .line 1197
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_16

    const/4 v4, 0x0

    .line 1198
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 1200
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 1202
    const-string v2, "sa"

    goto :goto_8

    .line 1203
    :cond_13
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_14

    :goto_7
    move-object/from16 v2, v25

    goto :goto_8

    .line 1210
    :cond_14
    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_16

    goto :goto_7

    .line 1217
    :cond_15
    instance-of v2, v2, Lcom/metamoji/cm/PointArray;

    if-eqz v2, :cond_16

    move-object/from16 v2, p4

    goto :goto_8

    :cond_16
    move-object v2, v12

    :goto_8
    if-eqz v2, :cond_18

    .line 1225
    const-string v4, "shapePropType-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    move-object/from16 v22, v12

    :cond_18
    :goto_9
    move-object/from16 v2, p3

    move-object/from16 v17, v6

    goto :goto_c

    :cond_19
    :goto_a
    move-object/from16 v2, p3

    :cond_1a
    move-object/from16 v23, v4

    move-object/from16 v17, v6

    goto :goto_b

    :cond_1b
    move-object/from16 v23, v4

    move-object/from16 v16, v6

    goto :goto_b

    :cond_1c
    move-object/from16 v23, v4

    move-object/from16 v18, v6

    goto :goto_b

    :cond_1d
    move-object/from16 v23, v4

    move-object/from16 v19, v6

    goto :goto_b

    :cond_1e
    move-object/from16 v23, v4

    move-object/from16 v24, v6

    :goto_b
    move-object/from16 v22, v12

    :goto_c
    move-object/from16 v21, v14

    move-object/from16 v20, v15

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v22, v12

    move-object/from16 v21, v14

    goto/16 :goto_6

    :cond_20
    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v22, v12

    goto/16 :goto_6

    :cond_21
    move-object/from16 v23, v4

    :cond_22
    move-object/from16 v24, v6

    goto/16 :goto_6

    .line 1231
    :cond_23
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_9

    move-object/from16 v2, p5

    .line 1233
    invoke-virtual {v0, v5, v1, v2}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSegmentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 1235
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_d

    :cond_24
    move-object/from16 v6, p5

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v29, v23

    .line 1237
    sget-object v20, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_25

    .line 1240
    const-string v0, "X"

    const-string v2, "x"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string v0, "Y"

    const-string v2, "y"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v0, "W"

    const-string v2, "w"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v0, "H"

    const-string v2, "h"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    invoke-static {v5, v1, v8, v14}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-static {v5, v1, v9, v15}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v0, "SW"

    const-string v2, "sw"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v0, "SH"

    const-string v2, "sh"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    invoke-static {v5, v1, v10, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-static {v5, v1, v11, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v0, "PW"

    const-string v2, "pw"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v0, "PH"

    const-string v2, "ph"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string v0, "RX?"

    const-string v2, "rx"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const-string v0, "RY?"

    const-string v2, "ry"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const-string v0, "PRX?"

    const-string v2, "prx"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v0, "PRY?"

    const-string v2, "pry"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v0, "u"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1276
    iget-object v1, v6, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v1, v0, v6}, Lcom/metamoji/cv/CvModelConverter;->exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;

    move-result-object v0

    .line 1277
    invoke-virtual {v6, v0}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1279
    const-string v1, "ref"

    invoke-interface {v5, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    .line 1283
    :cond_25
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_3e

    .line 1286
    const-string v0, "P"

    const-string v2, "points"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const-string v0, "TA"

    const-string v2, "ta"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    const-string v0, "TB"

    const-string v2, "tb"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    const-string v0, "TC"

    const-string v2, "tc"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v0, "TD"

    const-string v2, "td"

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-static {v5, v1, v8, v14}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    invoke-static {v5, v1, v9, v15}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v0, "PA"

    move-object/from16 v2, p4

    invoke-static {v5, v1, v0, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v0, "PB"

    const-string v6, "pb"

    invoke-static {v5, v1, v0, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v0, "PC"

    const-string v6, "pc"

    invoke-static {v5, v1, v0, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "PD"

    const-string v6, "pd"

    invoke-static {v5, v1, v0, v6}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-static {v5, v1, v10, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    invoke-static {v5, v1, v11, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const-string v0, "a"

    const-string v3, "arrow-type"

    invoke-static {v5, v1, v0, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    invoke-interface {v1, v13}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_27

    if-nez p3, :cond_26

    .line 1318
    invoke-interface {v0, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v12, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 1321
    :cond_26
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p0

    .line 1322
    iget-object v4, v3, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1324
    invoke-interface {v5, v12, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_27
    :goto_e
    move-object/from16 v3, p0

    .line 1328
    :goto_f
    new-instance v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda4;-><init>()V

    const-string v4, "i"

    const-string v6, "path-info"

    invoke-static {v5, v1, v4, v6, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 1339
    const-string v0, "e"

    const-string v4, "extra-enabled"

    invoke-static {v5, v1, v0, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 1346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    .line 1347
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v12, 0x21

    if-ne v6, v12, :cond_28

    goto :goto_10

    .line 1353
    :cond_28
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    move-object/from16 v6, v24

    .line 1354
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    move-object/from16 v12, v29

    .line 1355
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3b

    move-object/from16 v14, v28

    .line 1356
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3a

    move-object/from16 v15, v27

    .line 1357
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_39

    move-object/from16 p3, v0

    move-object/from16 v0, v26

    .line 1358
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_38

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    .line 1359
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_37

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    .line 1360
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_36

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    .line 1361
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_35

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .line 1362
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_34

    move-object/from16 v17, v0

    const-string v0, "E?"

    .line 1363
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PE"

    .line 1364
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PR"

    .line 1365
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PS"

    .line 1366
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "uIC"

    .line 1367
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "uIT"

    .line 1368
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "uIR"

    .line 1369
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "uII"

    .line 1370
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "uIN"

    .line 1371
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "uIG"

    .line 1372
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lT"

    .line 1373
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lX"

    .line 1374
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lY"

    .line 1375
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lW"

    .line 1376
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lH"

    .line 1377
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lWR"

    .line 1378
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lHR"

    .line 1379
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lA"

    .line 1380
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lMW"

    .line 1381
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lMH"

    .line 1382
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lC"

    .line 1383
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lR"

    .line 1384
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lE"

    .line 1385
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lP"

    .line 1386
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lS"

    .line 1387
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lF"

    .line 1388
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltP"

    .line 1389
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltS"

    .line 1390
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltA"

    .line 1391
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltX"

    .line 1392
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltY"

    .line 1393
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltI"

    .line 1394
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltO"

    .line 1395
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltM"

    .line 1396
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltW"

    .line 1397
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "ltH"

    .line 1398
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfP"

    .line 1399
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfS"

    .line 1400
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfA"

    .line 1401
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfX"

    .line 1402
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfY"

    .line 1403
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfI"

    .line 1404
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfO"

    .line 1405
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfM"

    .line 1406
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfW"

    .line 1407
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "lfH"

    .line 1408
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "P"

    .line 1410
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "TA"

    .line 1411
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "TB"

    .line 1412
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "TC"

    .line 1413
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "TD"

    .line 1414
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1415
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1416
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PA"

    .line 1417
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PB"

    .line 1418
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PC"

    .line 1419
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "PD"

    .line 1420
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1421
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1422
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "a"

    .line 1423
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1424
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "i"

    .line 1425
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "e"

    .line 1426
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "BX"

    .line 1428
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "BY"

    .line 1429
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "BW"

    .line 1430
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "BH"

    .line 1431
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_14

    .line 1438
    :cond_29
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 1441
    const-string v1, "shapeProp-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p4, v2

    invoke-direct {v3, v0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->propertyToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 1447
    const-string v0, "s"

    goto :goto_12

    .line 1448
    :cond_2a
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2b

    .line 1450
    const-string v0, "b"

    goto :goto_12

    .line 1454
    :cond_2b
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_2c

    .line 1456
    const-string v0, "n"

    goto :goto_12

    .line 1457
    :cond_2c
    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 1458
    check-cast v0, Ljava/util/List;

    .line 1459
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_30

    const/4 v1, 0x0

    .line 1460
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1462
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 1464
    const-string v0, "sa"

    goto :goto_12

    .line 1465
    :cond_2d
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_2e

    :goto_11
    move-object/from16 v0, v25

    goto :goto_12

    .line 1472
    :cond_2e
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_30

    goto :goto_11

    .line 1479
    :cond_2f
    instance-of v0, v0, Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_30

    move-object/from16 v0, p4

    goto :goto_12

    :cond_30
    move-object v0, v2

    :goto_12
    if-eqz v0, :cond_32

    .line 1487
    const-string v1, "shapePropType-"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_31
    move-object/from16 p4, v2

    :cond_32
    :goto_13
    move-object/from16 v1, p2

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    goto :goto_15

    :cond_33
    move-object/from16 v1, p2

    :goto_14
    move-object/from16 v0, p3

    :goto_15
    move-object/from16 v24, v6

    move-object/from16 v29, v12

    move-object/from16 v28, v14

    move-object/from16 v27, v15

    move-object/from16 v26, v20

    goto/16 :goto_10

    :cond_34
    move-object/from16 v1, p2

    move-object/from16 v17, v0

    goto :goto_16

    :cond_35
    move-object/from16 v1, p2

    move-object/from16 v16, v0

    goto :goto_16

    :cond_36
    move-object/from16 v1, p2

    move-object/from16 v18, v0

    goto :goto_16

    :cond_37
    move-object/from16 v1, p2

    move-object/from16 v19, v0

    :goto_16
    move-object/from16 v24, v6

    move-object/from16 v29, v12

    move-object/from16 v28, v14

    move-object/from16 v27, v15

    move-object/from16 v26, v20

    goto :goto_17

    :cond_38
    move-object/from16 v1, p2

    move-object/from16 v26, v0

    move-object/from16 v24, v6

    move-object/from16 v29, v12

    move-object/from16 v28, v14

    move-object/from16 v27, v15

    :goto_17
    move-object/from16 v0, p3

    goto/16 :goto_10

    :cond_39
    move-object/from16 v1, p2

    move-object/from16 v24, v6

    move-object/from16 v29, v12

    move-object/from16 v28, v14

    move-object/from16 v27, v15

    goto/16 :goto_10

    :cond_3a
    move-object/from16 v1, p2

    move-object/from16 v24, v6

    move-object/from16 v29, v12

    move-object/from16 v28, v14

    goto/16 :goto_10

    :cond_3b
    move-object/from16 v1, p2

    move-object/from16 v24, v6

    move-object/from16 v29, v12

    goto/16 :goto_10

    :cond_3c
    move-object/from16 v1, p2

    move-object/from16 v24, v6

    goto/16 :goto_10

    :cond_3d
    move-object/from16 v1, p2

    goto/16 :goto_10

    :cond_3e
    :goto_18
    move-object/from16 v3, p0

    :cond_3f
    :goto_19
    move-object/from16 v0, p1

    .line 1493
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateEMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 8

    .line 662
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 663
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "elements"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 671
    const-string v1, "C"

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 672
    new-instance v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 673
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v2, v5, v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 677
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_1

    .line 679
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateEElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 681
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    goto :goto_1

    .line 685
    :cond_1
    iget-object p2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 686
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 687
    invoke-direct {p0, v1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->getEMModelFromDrawModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 690
    const-string v6, "unitId"

    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 691
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMapForMerge:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 692
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    .line 694
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object v6, v6, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagObjectMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    if-nez v6, :cond_2

    .line 696
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    .line 697
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object v6, v6, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagObjectMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_2
    invoke-direct {p0, v5, v2}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->constructIdMapsForEMModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;)V

    .line 704
    invoke-direct {p0, v0, v5, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateEMElementSub(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 707
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMapForMerge:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 708
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 709
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    .line 710
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    goto :goto_2

    .line 717
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide p2

    cmp-long v1, p2, v3

    if-eqz v1, :cond_4

    .line 719
    const-string v1, "id-count"

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateElemElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 4

    .line 2201
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2202
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "element"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2206
    const-string v1, "i"

    const-string v2, "id"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    const-string v1, "type"

    const-string v2, "t"

    invoke-static {v0, p2, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    const-string v1, "a"

    const-string v3, "angle"

    invoke-static {v0, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    const-string v1, "x"

    invoke-static {v0, p2, v1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const-string v1, "y"

    invoke-static {v0, p2, v1, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2217
    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2221
    const-string p3, "k"

    const-string v1, "stroke-type"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string p3, "p"

    const-string v1, "points"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    const-string p3, "s"

    const-string v1, "style-id"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2225
    const-string p3, "S"

    invoke-interface {p2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2226
    invoke-virtual {p3}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 2227
    invoke-virtual {p3}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([B)Ljava/lang/String;

    move-result-object p3

    .line 2228
    const-string v1, "segment-data"

    invoke-interface {v0, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2231
    :cond_0
    const-string p3, "RD"

    const-string v1, "reducer-delta"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    const-string p3, "z"

    const-string v1, "zoom"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    const-string p3, "A"

    const-string v1, "internal-angle"

    invoke-static {v0, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2237
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 2238
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 2237
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 2243
    const-string v1, "u"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2249
    iget-object v1, p3, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v1, p2, p3}, Lcom/metamoji/cv/CvModelConverter;->exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;

    move-result-object p2

    .line 2250
    invoke-virtual {p3, p2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2252
    const-string p3, "ref"

    invoke-interface {v0, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2260
    :cond_3
    :goto_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateElemElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 1890
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1891
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "element"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1895
    const-string v1, "I"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1897
    iget v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    .line 1898
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Encode(I)Ljava/lang/String;

    move-result-object v3

    .line 1900
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    const-string v2, "id"

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result v2

    const-string v3, "T"

    invoke-interface {p2, v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 1905
    invoke-static {v2}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->toOldElementType(I)I

    move-result v2

    .line 1906
    const-string v3, "type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v3, "BX"

    const-string v5, "x"

    invoke-static {v0, p2, v3, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v3, "BY"

    const-string v5, "y"

    invoke-static {v0, p2, v3, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-string v3, "A"

    const/4 v5, -0x1

    if-ne v2, v4, :cond_3

    .line 1919
    sget-object p3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->NONE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p3

    const-string v2, "t"

    invoke-interface {p2, v2, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p3

    .line 1920
    invoke-static {p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->toOldStrokeType(I)I

    move-result p3

    .line 1921
    const-string v2, "stroke-type"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v2, "P"

    const-string v4, "points"

    invoke-static {v0, p2, v2, v4}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const-string v2, "p"

    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1927
    invoke-interface {v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1928
    iget-object v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1930
    const-string v2, "style-id"

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    :cond_0
    const-string v1, "g"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsBlob(Ljava/lang/String;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1937
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    array-length v2, v2

    const-string v4, "segment-data"

    if-lez v2, :cond_1

    .line 1938
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/HashGenerator;->encodeHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1939
    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1942
    :cond_1
    const-string v1, ""

    invoke-interface {v0, v4, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :cond_2
    :goto_0
    const-string v1, "d"

    const-string v2, "reducer-delta"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const-string v1, "z"

    const-string v2, "zoom"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p3, v5, :cond_5

    const-wide/16 v1, 0x0

    .line 1956
    invoke-interface {p2, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide p2

    cmpl-double v1, p2, v1

    if-eqz v1, :cond_5

    neg-double p2, p2

    .line 1959
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "internal-angle"

    invoke-interface {v0, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v2, v5, :cond_5

    .line 1967
    instance-of v1, p3, Lcom/metamoji/cv/xml/CvPartConvertContext;

    if-eqz v1, :cond_4

    .line 1969
    const-string v1, "W"

    const-string v2, "w"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    const-string v1, "H"

    const-string v2, "h"

    invoke-static {v0, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_4
    const-string v1, "angle"

    invoke-static {v0, p2, v3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v1, "u"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1980
    iget-object v1, p3, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->converter:Lcom/metamoji/cv/CvModelConverter;

    invoke-virtual {v1, p2, p3}, Lcom/metamoji/cv/CvModelConverter;->exportModels(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/CvConvertContext;)Ljava/lang/Object;

    move-result-object p2

    .line 1981
    invoke-virtual {p3, p2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;->makeExternalFilePathRelative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1983
    const-string p3, "ref"

    invoke-interface {v0, p3, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    :cond_5
    :goto_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateElemsElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 2185
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2186
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "elements"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2190
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 2191
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 2190
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    goto :goto_0

    .line 2194
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateElemsElementFromV3(Lcom/metamoji/df/model/IModel;Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 1786
    const-string v0, "I"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 1788
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1791
    invoke-virtual {p0, p2, p1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 1794
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMembers:Ljava/util/HashSet;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 1796
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v1

    .line 1797
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1801
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v5

    iput v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupCount:I

    .line 1802
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMembers:Ljava/util/HashSet;

    goto :goto_0

    .line 1806
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    .line 1810
    :cond_2
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMembers:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 1811
    iget v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupCount:I

    .line 1814
    iget-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->constructGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cv/xml/draw/DrCvElem;Lcom/metamoji/df/model/IModel;)V

    .line 1817
    iget p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupCount:I

    if-nez p1, :cond_3

    .line 1821
    iget-object p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    invoke-virtual {p0, p2, p1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGroupElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/draw/DrCvElem;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 1824
    iget-object p1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1825
    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    .line 1826
    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    .line 1827
    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMembers:Ljava/util/HashSet;

    .line 1828
    iput v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupCount:I

    :cond_3
    return-void

    .line 1834
    :cond_4
    iget-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    invoke-virtual {p0, p2, v0, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGroupElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/draw/DrCvElem;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 1837
    iget-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1838
    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMap:Ljava/util/HashMap;

    .line 1839
    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupElem:Lcom/metamoji/cv/xml/draw/DrCvElem;

    .line 1840
    iput-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupMembers:Ljava/util/HashSet;

    .line 1841
    iput v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupCount:I

    .line 1844
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemsElementFromV3(Lcom/metamoji/df/model/IModel;Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void
.end method

.method generateElemsElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 1769
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1770
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "elements"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1774
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 1776
    invoke-virtual {p0, p2, v0, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemsElementFromV3(Lcom/metamoji/df/model/IModel;Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 1778
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    goto :goto_0

    .line 1781
    :cond_0
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateGElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 1609
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p4

    .line 1610
    const-string v0, "group"

    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    invoke-interface {p4, v1, v0}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1613
    const-string v2, "id"

    invoke-interface {v0, v2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object p3

    .line 1617
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    .line 1618
    invoke-interface {p2, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1623
    :cond_0
    const-string v4, "group-element"

    invoke-interface {p4, v1, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1624
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 1628
    :cond_1
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1630
    invoke-interface {v4, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1625
    :cond_2
    :goto_1
    invoke-interface {v4, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    :goto_2
    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 1636
    :cond_3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateGMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 8

    .line 1523
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1524
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "groups"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1532
    const-string v1, "C!"

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 1533
    new-instance v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 1534
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v2, v5, v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 1538
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 1539
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1540
    invoke-interface {p2, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1542
    invoke-virtual {p0, v0, v6, v5, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_1

    .line 1547
    :cond_2
    iget-object p2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    if-eqz p2, :cond_4

    .line 1548
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 1549
    invoke-direct {p0, v1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->getGMModelFromDrawModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 1552
    const-string v6, "unitId"

    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMapForMerge:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    .line 1555
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object v6, v6, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagObjectMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    if-nez v6, :cond_3

    .line 1557
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    .line 1558
    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    iget-object v6, v6, Lcom/metamoji/cv/xml/CvMergeInfo;->contentsTagObjectMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    invoke-interface {v6, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    :cond_3
    invoke-virtual {p0, v0, v5, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGMElementSub(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    const/4 v1, 0x0

    .line 1564
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_elemIdMap:Ljava/util/HashMap;

    .line 1565
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    goto :goto_2

    .line 1571
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide p2

    cmp-long v1, p2, v3

    if-eqz v1, :cond_5

    .line 1573
    const-string v1, "id-count"

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    :cond_5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateGMElementSub(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 6

    .line 1585
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 1586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1587
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1589
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    .line 1591
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    .line 1593
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_contentIdMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    invoke-virtual {p0, p1, v2, v3, p4}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method generateGroupElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/draw/DrCvElem;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 4

    .line 1851
    iget v0, p2, Lcom/metamoji/cv/xml/draw/DrCvElem;->type:I

    if-nez v0, :cond_0

    .line 1854
    iget-object p2, p2, Lcom/metamoji/cv/xml/draw/DrCvElem;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateElemElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void

    .line 1858
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1859
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "element"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1861
    iget v1, p2, Lcom/metamoji/cv/xml/draw/DrCvElem;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1867
    iget v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    .line 1868
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Encode(I)Ljava/lang/String;

    move-result-object v1

    .line 1871
    const-string v3, "id"

    invoke-interface {v0, v3, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v1, "type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object p2, p2, Lcom/metamoji/cv/xml/draw/DrCvElem;->children:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cv/xml/draw/DrCvElem;

    .line 1877
    invoke-virtual {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGroupElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/cv/xml/draw/DrCvElem;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_0

    .line 1884
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 407
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 408
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "contents"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 412
    const-string v1, "SM"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 418
    :cond_0
    const-string v1, "EM"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {p0, v0, v1, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateEMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 424
    :cond_1
    const-string v1, "GM"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 426
    invoke-virtual {p0, v0, p2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateGMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 429
    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateSElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    return-void
.end method

.method generateSElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 7

    .line 527
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p4

    .line 528
    const-string v0, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v1, "style"

    invoke-interface {p4, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p4

    .line 531
    new-instance v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda2;-><init>()V

    .line 548
    const-string v1, "id"

    if-nez p3, :cond_0

    .line 549
    const-string p3, "I"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_0
    invoke-interface {p4, v1, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :goto_0
    const-string p3, "T"

    const-string v1, "type"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string p3, "pen-type"

    const-string v1, "P"

    invoke-static {p4, p2, v1, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string p3, "W"

    const-string v2, "width"

    invoke-static {p4, p2, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string p3, "C"

    const-string v2, "color"

    invoke-static {p4, p2, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string p3, "A"

    const-string v2, "alpha"

    invoke-static {p4, p2, p3, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    sget-object p3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p3

    invoke-interface {p2, v1, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p3

    .line 566
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    const-string v2, "r"

    const-string v3, "c"

    if-eq p3, v1, :cond_3

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    if-ne p3, v1, :cond_1

    goto/16 :goto_1

    .line 593
    :cond_1
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    const-string v4, "ink-colors"

    const-string v5, "ink-type"

    const-string v6, "t"

    if-ne p3, v1, :cond_2

    .line 596
    invoke-static {p4, p2, v6, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {p4, p2, v3, v4, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 600
    const-string p3, "a"

    const-string v0, "pen-angle"

    invoke-static {p4, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string p3, "pen-rate"

    invoke-static {p4, p2, v2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 604
    :cond_2
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    if-ne p3, v1, :cond_5

    .line 607
    invoke-static {p4, p2, v6, v5}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {p4, p2, v3, v4, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 611
    const-string p3, "trans"

    invoke-static {p4, p2, v2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string p3, "b0"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string p3, "b1"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string p3, "b2"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string p3, "b3"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string p3, "b4"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string p3, "b5"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string p3, "e0"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string p3, "e1"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string p3, "e2"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string p3, "e3"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string p3, "e4"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string p3, "e5"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string p3, "t0"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string p3, "t1"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string p3, "t2"

    invoke-static {p4, p2, p3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string p3, "t3"

    const-string v0, "t3"

    invoke-static {p4, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string p3, "t4"

    const-string v0, "t4"

    invoke-static {p4, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string p3, "t5"

    const-string v0, "t5"

    invoke-static {p4, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 569
    :cond_3
    :goto_1
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    if-ne p3, v1, :cond_4

    .line 571
    const-string p3, "h"

    const-string v1, "arrow-type"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string p3, "p"

    const-string v1, "arrow-pos"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string p3, "arrow-ratio"

    invoke-static {p4, p2, v2, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_4
    const-string p3, "cap"

    invoke-static {p4, p2, v3, p3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string p3, "j"

    const-string v1, "join"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string p3, "m"

    const-string v1, "miter-limit"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string p3, "d"

    const-string v1, "dash"

    invoke-static {p4, p2, p3, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 587
    const-string p3, "ft"

    const-string v1, "fill-type"

    invoke-static {p4, p2, p3, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string p3, "fc"

    const-string v1, "fill-color"

    invoke-static {p4, p2, p3, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 591
    const-string p3, "fa"

    const-string v0, "fill-alpha"

    invoke-static {p4, p2, p3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_5
    :goto_2
    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateSMElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 7

    .line 440
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 441
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "styles"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 449
    const-string v1, "C!"

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 451
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-virtual {v2, v5, v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setCount(J)V

    .line 455
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 456
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 457
    invoke-interface {p2, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 459
    invoke-virtual {p0, v0, v5, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_1

    .line 464
    :cond_2
    iget-object p2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_mergeTargetModels:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 465
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 466
    invoke-direct {p0, v1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->getSMModelFromDrawModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 469
    const-string v6, "unitId"

    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    .line 473
    invoke-virtual {p0, v0, v5, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSMElementSub(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    .line 476
    iget-object v5, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMapForMerge:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 477
    iput-object v1, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    goto :goto_2

    .line 484
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->count()J

    move-result-wide p2

    cmp-long v1, p2, v3

    if-eqz v1, :cond_4

    .line 486
    const-string v1, "id-count"

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateSMElementSub(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 5

    .line 497
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 499
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    .line 503
    const-string v3, "I"

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v3

    .line 504
    iget-object v4, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {p0, p1, v1, v2, p4}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateSElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected generateSegmentElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 2

    .line 1498
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    .line 1499
    const-string v0, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v1, "shape-segment"

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 1503
    const-string v0, "T"

    const-string v1, "type"

    invoke-static {p3, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v0, "P"

    const-string v1, "points"

    invoke-static {p3, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v0, "V"

    const-string v1, "is-visible"

    invoke-static {p3, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v0, "B"

    const-string v1, "is-boundable"

    invoke-static {p3, p2, v0, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateStyleElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 4

    .line 2134
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    .line 2135
    const-string v0, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v1, "style"

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 2137
    new-instance v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda1;-><init>()V

    .line 2150
    const-string v1, "i"

    const-string v2, "id"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    const-string v1, "t"

    const-string v2, "type"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    const-string v1, "k"

    const-string v2, "pen-type"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    const-string v1, "s"

    const-string v2, "width"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    const-string v1, "color"

    const-string v2, "c"

    invoke-static {p3, p2, v2, v1}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    const-string v1, "a"

    const-string v3, "alpha"

    invoke-static {p3, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    const-string v1, "d"

    const-string v3, "dash"

    invoke-static {p3, p2, v1, v3, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 2164
    const-string v1, "C"

    const-string v3, "cap"

    invoke-static {p3, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    const-string v1, "J"

    const-string v3, "join"

    invoke-static {p3, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    const-string v1, "A"

    const-string v3, "pen-angle"

    invoke-static {p3, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const-string v1, "R"

    const-string v3, "pen-rate"

    invoke-static {p3, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const-string v1, "IT"

    const-string v3, "ink-type"

    invoke-static {p3, p2, v1, v3}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const-string v1, "ink-colors"

    invoke-static {p3, p2, v2, v1, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 2178
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method generateStyleElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 4

    .line 1710
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p3

    .line 1711
    const-string v0, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v1, "style"

    invoke-interface {p3, v0, v1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p3

    .line 1714
    new-instance v0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter$$ExternalSyntheticLambda0;-><init>()V

    .line 1728
    const-string v1, "I"

    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1730
    iget v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_idCount:I

    .line 1731
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Encode(I)Ljava/lang/String;

    move-result-object v2

    .line 1733
    iget-object v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_styleIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    const-string v1, "id"

    invoke-interface {p3, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    sget-object v1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result v1

    const-string v2, "T"

    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 1738
    invoke-static {v1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->toOldStyleType(I)I

    move-result v1

    .line 1739
    const-string v2, "type"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    const-string v2, "P"

    invoke-interface {p2, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    .line 1742
    invoke-static {v1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->toOldPenType(I)I

    move-result v1

    .line 1743
    const-string v2, "pen-type"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v2, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    const-string v1, "W"

    const-string v2, "width"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v1, "C"

    const-string v2, "color"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v1, "A"

    const-string v2, "alpha"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v1, "d"

    const-string v2, "dash"

    invoke-static {p3, p2, v1, v2, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 1754
    const-string v1, "a"

    const-string v2, "pen-angle"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v1, "r"

    const-string v2, "pen-rate"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-string v1, "t"

    const-string v2, "ink-type"

    invoke-static {p3, p2, v1, v2}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v1, "c"

    const-string v2, "ink-colors"

    invoke-static {p3, p2, v1, v2, v0}, Lcom/metamoji/cv/xml/XmlUtils$Outgoing;->addAttribute(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cv/xml/XmlUtils$Outgoing$IStringConverter;)V

    .line 1764
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateStylesElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 2114
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 2115
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "styles"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2119
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 2120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2121
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2123
    invoke-virtual {p0, v0, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateStyleElementFromV2(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_0

    .line 2127
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method protected generateStylesElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V
    .locals 3

    .line 1693
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1694
    const-string v1, "http://xmlns.metamoji.com/noteanytime/draw/1.0"

    const-string v2, "styles"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 1697
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 1698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1699
    invoke-interface {p2, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1701
    invoke-virtual {p0, v0, v2, p3}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->generateStyleElementFromV3(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Lcom/metamoji/cv/xml/CvDirectoryConvertContext;)V

    goto :goto_0

    .line 1705
    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method getIncludingGroupHier(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 2025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2026
    invoke-virtual {p0, p1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->getMinimumGroupContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 2029
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2031
    invoke-virtual {p0, p1}, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->getMinimumGroupContainingGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 253
    const-string v0, "$draw"

    return-object v0
.end method

.method getMinimumGroupContainingGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 2056
    iget-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsIncludingGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2062
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v1, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2063
    iget-object v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v3

    if-ge v3, v1, :cond_1

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getMinimumGroupContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 4

    .line 2038
    iget-object v0, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2044
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v1, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2045
    iget-object v3, p0, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v3

    if-ge v3, v1, :cond_1

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method
