.class public Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;
.super Ljava/lang/Object;
.source "DrUnModelCompatibilityHandler.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelCompatibilityChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler$DrElementType_Ver2;,
        Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler$DrStrokeType_Ver2;,
        Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler$UnDrInkType_Ver2;,
        Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler$DrPenType_Ver2;,
        Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler$DrStyleType_Ver2;
    }
.end annotation


# static fields
.field static final DR_MODEL_ACCEPTABLE_VERSION:I = 0x6

.field static final DR_MODEL_CURRENT_VERSION:I = 0x5

.field static final DR_MODEL_NEW_DRAW2:I = 0x3

.field static final DR_MODEL_OLD_DRAW:I = 0x2


# instance fields
.field private m_defaultStyleId:Ljava/lang/String;

.field private m_groupIdMap:Ljava/util/HashMap;
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

.field private m_maxIdCount:I

.field private m_stylesIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_stylesModel:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertGroup(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 9

    .line 645
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "GM"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_groupIdMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    .line 650
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

    .line 651
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v5

    const-string v6, "G"

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 653
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v2, v6

    if-gez v8, :cond_0

    move-wide v2, v6

    .line 659
    :cond_0
    iget-object v6, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_groupIdMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 660
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

    .line 661
    invoke-interface {v5, v7, v8}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    goto :goto_1

    .line 665
    :cond_1
    invoke-interface {v0, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 670
    :cond_2
    const-string p1, "C!"

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseElementToConvert(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)Lcom/metamoji/df/model/IModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    .line 528
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "E"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 532
    const-string v1, "i"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 535
    const-string p1, "elemId not found"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-object v2

    .line 538
    :cond_0
    const-string v3, "I"

    invoke-interface {v0, v3, v1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string/jumbo v1, "t"

    const/16 v4, -0x63

    invoke-interface {p1, v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v5

    .line 541
    invoke-direct {p0, v5}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->toNewElementType(I)I

    move-result v5

    .line 542
    const-string v6, "T"

    invoke-interface {v0, v6, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 544
    const-string v5, "a"

    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 545
    const-string v6, "A"

    if-eqz v5, :cond_1

    .line 546
    invoke-interface {v0, v6, v5}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 v5, 0x0

    .line 550
    invoke-interface {p1, v1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v7

    .line 551
    const-string v8, "B"

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 554
    sget-object p2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->intValue()I

    move-result p2

    invoke-interface {v0, v8, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 556
    const-string p2, "k"

    invoke-interface {p1, p2, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    .line 557
    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->toNewStrokeType(I)I

    move-result p2

    .line 558
    invoke-interface {v0, v1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 561
    const-string/jumbo p2, "s"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 563
    iget-object p3, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesIdMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 565
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_defaultStyleId:Ljava/lang/String;

    .line 568
    sget-object p3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p3

    invoke-interface {v0, v1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 571
    :cond_2
    iget-object p3, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    invoke-interface {p3, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 572
    const-string p3, "p"

    if-eqz p2, :cond_3

    .line 573
    invoke-interface {v0, p3, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 577
    :cond_3
    invoke-interface {p1, p3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 578
    const-string p3, "P"

    invoke-interface {v0, p3, p2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    const-string p2, "RD"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 582
    const-string p3, "d"

    invoke-interface {v0, p3, p2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 584
    const-string/jumbo p2, "z"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 585
    invoke-interface {v0, p2, p3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 587
    const-string p2, "S"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 588
    const-string p3, "g"

    invoke-interface {v0, p3, p2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    invoke-interface {p1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 593
    const-string p2, "oi"

    invoke-interface {v0, p2, p1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 v1, 0x2

    if-ne v7, v1, :cond_6

    .line 598
    invoke-interface {v0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Decode(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 603
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    iget-object v3, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_groupIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_5

    .line 613
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->parseElementsToConvert(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V

    .line 623
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v9

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v2

    :cond_6
    const/4 p2, -0x1

    if-ne v7, p2, :cond_7

    .line 630
    sget-object p2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->intValue()I

    move-result p2

    invoke-interface {v0, v8, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 633
    const-string p2, "E?"

    invoke-interface {v0, p2, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 635
    const-string/jumbo p2, "u"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 636
    invoke-interface {v0, p2, p1}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-object v0
.end method

.method private parseElementsToConvert(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 473
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "EM"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 475
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_groupIdMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 476
    iput v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_maxIdCount:I

    const/4 v1, 0x0

    .line 478
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->parseElementsToConvert(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V

    .line 481
    iget p1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_maxIdCount:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "C"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private parseElementsToConvert(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 487
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_4

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->parseElementToConvert(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 492
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 496
    :cond_0
    const-string v1, "I"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Decode(Ljava/lang/String;)I

    move-result v2

    .line 499
    iget v3, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_maxIdCount:I

    if-ge v3, v2, :cond_1

    .line 501
    iput v2, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_maxIdCount:I

    :cond_1
    int-to-long v2, v2

    .line 504
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v2

    .line 506
    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    if-eqz p3, :cond_3

    .line 514
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 515
    iget-object v3, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_groupIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 518
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 523
    :cond_3
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private parseStyleToConvert(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 8

    .line 392
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "S"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 395
    const-string v1, "i"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    const-string v2, "I"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string/jumbo v1, "t"

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v3

    .line 399
    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->toNewStyleType(I)I

    move-result v3

    .line 400
    const-string v4, "T"

    invoke-interface {v0, v4, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 402
    const-string v3, "k"

    invoke-interface {p1, v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 403
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->toNewPenType(I)I

    move-result v2

    .line 404
    const-string v3, "P"

    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 406
    const-string/jumbo v2, "s"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 407
    const-string v3, "W"

    invoke-interface {v0, v3, v2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    const-string v2, "c"

    invoke-interface {p1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    const-string v4, "C"

    if-eqz v3, :cond_0

    .line 411
    invoke-interface {v0, v4, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    :cond_0
    const-string v3, "a"

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 415
    const-string v6, "A"

    if-eqz v5, :cond_1

    .line 416
    invoke-interface {v0, v6, v5}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    :cond_1
    const-string v5, "D"

    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 421
    const-string v7, "d"

    invoke-interface {v0, v7, v5}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    :cond_2
    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 426
    invoke-interface {v0, v2, v4}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    :cond_3
    const-string v4, "J"

    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 431
    const-string v5, "j"

    invoke-interface {v0, v5, v4}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    :cond_4
    invoke-interface {p1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 438
    invoke-interface {v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    :cond_5
    const-string v3, "R"

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 443
    const-string v4, "r"

    invoke-interface {v0, v4, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    :cond_6
    const-string v3, "IT"

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 448
    invoke-interface {v0, v1, v3}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    :cond_7
    const-string v1, "CA"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 454
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v3, 0x6

    if-lt v1, v3, :cond_9

    .line 456
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02x"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    .line 460
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x2

    .line 461
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 465
    :cond_8
    invoke-interface {v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    :cond_9
    return-object v0
.end method

.method private parseStylesToConvert(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 11

    .line 313
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    const-string v1, "SM"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 315
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesIdMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 321
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_defaultStyleId:Ljava/lang/String;

    .line 324
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getAllPropertyNames()Ljava/util/List;

    move-result-object v1

    .line 325
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "I"

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 326
    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    const-string v7, "i"

    invoke-interface {v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    .line 340
    :cond_1
    invoke-direct {p0, v6}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->parseStyleToConvert(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    .line 342
    invoke-interface {v7, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 344
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/id/DrUtOldIdGenerator;->Decode(Ljava/lang/String;)I

    move-result v9

    if-ge v3, v9, :cond_2

    move v3, v9

    :cond_2
    int-to-long v9, v9

    .line 350
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v9

    .line 352
    invoke-interface {v7, v5, v9}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 357
    invoke-interface {v0, v9, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 361
    :cond_3
    invoke-interface {p1, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 362
    invoke-interface {v6}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    add-int/lit8 v3, v3, 0x1

    int-to-long v1, v3

    .line 368
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_defaultStyleId:Ljava/lang/String;

    .line 370
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p1

    const-string v1, "S"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 372
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {p1, v5, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result v1

    const-string v2, "T"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 376
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result v1

    const-string v2, "P"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 378
    const-string v1, "W"

    const/4 v2, 0x2

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 381
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_defaultStyleId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_5
    int-to-long v1, v3

    .line 386
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "C!"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private toNewElementType(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 280
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p1

    return p1

    .line 278
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementType;->NONE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p1

    return p1

    .line 276
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p1

    return p1

    .line 277
    :cond_2
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->intValue()I

    move-result p1

    return p1
.end method

.method private toNewPenType(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 307
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p1

    return p1

    .line 305
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->intValue()I

    move-result p1

    return p1
.end method

.method private toNewStrokeType(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 290
    sget-object p1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p1

    return p1

    .line 286
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p1

    return p1

    .line 287
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->intValue()I

    move-result p1

    return p1
.end method

.method private toNewStyleType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 299
    sget-object p1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p1

    return p1

    .line 297
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public checkCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 2

    .line 79
    invoke-static {}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->MODEL_TYPE()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1

    .line 85
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 87
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->NeedConvert:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1

    .line 107
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_2

    .line 109
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1

    .line 113
    :cond_2
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1
.end method

.method public checkDetailCompatibilityOfModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 1

    .line 125
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1
.end method

.method public convertModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 8

    .line 139
    invoke-static {}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->MODEL_TYPE()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->CantRead:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;)V

    return-object p1

    .line 144
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const/4 v3, 0x6

    if-gt v0, v3, :cond_1

    .line 149
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;Z)V

    return-object p1

    .line 154
    :cond_1
    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 173
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;Z)V

    return-object p1

    .line 181
    :cond_2
    const-string v0, "contents"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 185
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v3

    const-string v4, "M"

    invoke-interface {v3, v4}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 186
    invoke-interface {p1, v4, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 189
    const-string v4, "S"

    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 190
    const-string v6, "SM"

    if-eqz v5, :cond_3

    .line 191
    invoke-direct {p0, v5}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->parseStylesToConvert(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    .line 192
    invoke-interface {v3, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 195
    iput-object v7, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    .line 198
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 199
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_0

    .line 202
    :cond_3
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 206
    :goto_0
    const-string v4, "E"

    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 207
    const-string v6, "EM"

    if-eqz v5, :cond_4

    .line 208
    invoke-direct {p0, v5}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->parseElementsToConvert(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 211
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 212
    invoke-interface {v5}, Lcom/metamoji/df/model/IModel;->destroy()V

    goto :goto_1

    .line 215
    :cond_4
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 219
    :goto_1
    const-string v4, "GM"

    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->convertGroup(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 222
    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 223
    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->destroy()V

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesModel:Lcom/metamoji/df/model/IModel;

    .line 225
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 226
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;->m_stylesIdMap:Ljava/util/HashMap;

    .line 231
    :cond_5
    new-instance p1, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    sget-object v0, Lcom/metamoji/df/controller/ModelCompatibility$Result;->Compatible:Lcom/metamoji/df/controller/ModelCompatibility$Result;

    invoke-direct {p1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;-><init>(Lcom/metamoji/df/controller/ModelCompatibility$Result;Z)V

    return-object p1
.end method

.method public preCheckCompatibilityOfType(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 57
    invoke-static {}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->MODEL_TYPE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 60
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 61
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x6

    if-le p2, v1, :cond_1

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
