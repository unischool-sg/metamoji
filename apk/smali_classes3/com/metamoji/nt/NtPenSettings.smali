.class public Lcom/metamoji/nt/NtPenSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NtPenSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPenSettings$ModelProp;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "MMJNtPenSettings"

.field public static final SUBTYPE:Ljava/lang/String; = "MMJNtPenStyle"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static COLOR_RGB(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 353
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/16 v0, 0xff

    invoke-static {v0, p0, p1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static NUMCOLOR(III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static NUMCOLOR(IIIIII)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 531
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static NUMDASH(FF)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 535
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static TO_LINEDASH(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 360
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 362
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 474
    const-string v0, "currentIndex"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 478
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 479
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 482
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen8(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 483
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 486
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 487
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 490
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen10(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 491
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 494
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPenSettings;->defaultPen11(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 495
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private changeDefaultInkAt(I)Z
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_3

    .line 296
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 303
    const-string v1, "inkId"

    invoke-interface {p1, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 309
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v3

    const-string v4, "MMJNtSystemInkSettings"

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtSystemInkSettings;

    .line 310
    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->isNoQuantityById(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 316
    :cond_2
    const-string v2, "lineColor"

    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 318
    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "inkType"

    const-string/jumbo v2, "standard"

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "inkColors"

    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method static defaultPen1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 539
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 542
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 547
    const-string v0, "lineWidth"

    const-wide v2, 0x3fe3333340000000L    # 0.6000000238418579

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 549
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 555
    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static defaultPen10(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 762
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 765
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "lineAlpha"

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 770
    const-string v0, "lineWidth"

    const-wide v2, 0x3ff6666666666666L    # 1.4

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 772
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xa7

    .line 778
    invoke-static {v0, v1, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static defaultPen11(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 789
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 792
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 797
    const-string v0, "lineWidth"

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 799
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xfb

    const/16 v1, 0x65

    .line 805
    invoke-static {v0, v1, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPen2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 561
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 564
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 569
    const-string v0, "lineWidth"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 571
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 577
    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPen3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 583
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 586
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 591
    const-string v0, "lineWidth"

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 593
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 599
    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPen4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 605
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 608
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 613
    const-string v0, "lineWidth"

    const-wide v2, 0x3ff6666660000000L    # 1.399999976158142

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 615
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xfb

    const/4 v1, 0x0

    .line 621
    invoke-static {v0, v1, v1}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPen5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 627
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 630
    const-string v0, "penType"

    const-string v1, "calligraphy"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "lineAlpha"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 635
    const-string v0, "lineWidth"

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 637
    const-string v0, "penAngle"

    const-wide v1, 0x406c200000000000L    # 225.0

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 639
    const-string v0, "penRate"

    const-wide v1, 0x3f9eb851e0000000L    # 0.029999999329447746

    invoke-interface {p0, v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 641
    const-string v0, "penId"

    const-string v1, "com.metamoji.pen.builtin.calligraphy1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v0, "inkId"

    const-string v1, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v0, "inkType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 647
    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPen6(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 653
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 656
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 661
    const-string v0, "lineWidth"

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 663
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xfb

    .line 669
    invoke-static {v0, v0, v1}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static defaultPen7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 681
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 684
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "lineAlpha"

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 689
    const-string v0, "lineWidth"

    const-wide v2, 0x3fe999999999999aL    # 0.8

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 691
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 697
    invoke-static {v0, v0, v0}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static defaultPen8(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 708
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 711
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "lineAlpha"

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 716
    const-string v0, "lineWidth"

    const-wide v2, 0x3ff6666666666666L    # 1.4

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 718
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xfb

    const/4 v1, 0x0

    .line 724
    invoke-static {v0, v1, v1}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public static defaultPen9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 735
    const-string v0, "MMJNtPenStyle"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 738
    const-string v0, "penType"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "lineAlpha"

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 743
    const-string v0, "lineWidth"

    const-wide v2, 0x3ff6666666666666L    # 1.4

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 745
    const-string v0, "penId"

    const-string v2, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "inkId"

    const-string v2, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "inkType"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0xfb

    .line 751
    invoke-static {v0, v0, v1}, Lcom/metamoji/nt/NtPenSettings;->NUMCOLOR(III)Ljava/util/List;

    move-result-object v0

    const-string v1, "inkColors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static getRGB(Ljava/lang/Integer;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 337
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getRGBFromList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x10

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0xff00

    and-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    .line 346
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 v1, v1, 0xff

    .line 347
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static penStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 11

    .line 368
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    invoke-direct {v0}, Lcom/metamoji/nt/share/NtPenStyle;-><init>()V

    .line 371
    const-string v1, "penType"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setType(Ljava/lang/String;)V

    .line 373
    const-string v1, "lineAlpha"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 375
    const-string v1, "lineDash"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtPenSettings;->TO_LINEDASH(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineDash(Ljava/util/List;)V

    .line 377
    const-string v1, "lineWidth"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 380
    const-string v1, "penAngle"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setPenAngle(F)V

    .line 382
    const-string v1, "penRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setPenRate(F)V

    .line 385
    const-string v1, "penId"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setPenId(Ljava/lang/String;)V

    .line 387
    const-string v1, "inkId"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkId(Ljava/lang/String;)V

    .line 389
    const-string v1, "inkType"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkType(Ljava/lang/String;)V

    .line 391
    const-string v1, "inkColors"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 393
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_0

    .line 396
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v7, 0x2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/metamoji/nt/NtPenSettings;->COLOR_RGB(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 397
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x3

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v0, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 401
    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v5, 0xff

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setInkColors(Ljava/util/List;)V

    .line 406
    :goto_1
    const-string/jumbo v1, "trans"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    .line 408
    const-string v1, "beginStay"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    .line 410
    const-string v1, "beginStayRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    .line 412
    const-string v1, "beginStayDelta"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    .line 414
    const-string v1, "beginRun"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    .line 416
    const-string v1, "beginRunRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    .line 418
    const-string v1, "beginRunDelta"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    .line 420
    const-string v1, "endStay"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    .line 422
    const-string v1, "endStayRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    .line 424
    const-string v1, "endStayDelta"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    .line 426
    const-string v1, "endRun"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    .line 428
    const-string v1, "endRunRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    .line 430
    const-string v1, "endRunDelta"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    .line 432
    const-string/jumbo v1, "tailStay"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    .line 434
    const-string/jumbo v1, "tailStayRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    .line 436
    const-string/jumbo v1, "tailStayDelta"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    .line 438
    const-string/jumbo v1, "tailRun"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    .line 440
    const-string/jumbo v1, "tailRunRate"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    .line 442
    const-string/jumbo v1, "tailRunDelta"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v1, v5

    iput v1, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    .line 446
    const-string v1, "hasFill"

    invoke-interface {p0, v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setHasFill(Z)V

    .line 448
    const-string v1, "fillType"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setFillType(Ljava/lang/String;)V

    .line 450
    const-string v1, "fillColors"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_2

    .line 455
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v7, 0x2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/metamoji/nt/NtPenSettings;->COLOR_RGB(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x3

    goto :goto_2

    .line 457
    :cond_2
    invoke-virtual {v0, v5}, Lcom/metamoji/nt/share/NtPenStyle;->setFillColors(Ljava/util/List;)V

    .line 460
    :cond_3
    const-string v1, "fillAlpha"

    invoke-interface {p0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setFillAlpha(F)V

    .line 462
    const-string v1, "hasArrow"

    invoke-interface {p0, v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setHasArrow(Z)V

    .line 464
    const-string v1, "arrowType"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/share/NtPenStyle;->setArrowType(Ljava/lang/String;)V

    .line 466
    const-string v1, "arrowKinds"

    invoke-interface {p0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/share/NtPenStyle;->setArrowKinds(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkInkQuantityForAllPen()Z
    .locals 4

    .line 279
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 282
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtPenSettings;->changeDefaultInkAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getCount()I
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentIndex()I
    .locals 3

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "currentIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 1

    if-ltz p1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 116
    invoke-static {p1}, Lcom/metamoji/nt/NtPenSettings;->penStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCurrentIndex(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "currentIndex"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePen(Lcom/metamoji/nt/share/NtPenStyle;I)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-ltz v1, :cond_9

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/nt/NtPenSettings;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_7

    .line 129
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/nt/NtPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 132
    const-string v2, "penType"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "lineAlpha"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 136
    const-string v2, "lineColor"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v2

    const-string v3, "lineDash"

    if-eqz v2, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 144
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v2

    float-to-double v2, v2

    const-string v4, "lineWidth"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 146
    const-string v2, "calligraphy"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "penRate"

    const-string v4, "penAngle"

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v2

    float-to-double v5, v2

    invoke-interface {v1, v4, v5, v6}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 150
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v2

    float-to-double v4, v2

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_1

    .line 152
    :cond_2
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 153
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 157
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "penId"

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :cond_3
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 164
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inkId"

    if-eqz v2, :cond_4

    .line 165
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :cond_4
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 171
    :goto_3
    const-string v2, "inkType"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    const-string v3, "inkColors"

    if-eqz v2, :cond_5

    .line 175
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtPenSettings;->getRGBFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_4

    .line 177
    :cond_5
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 181
    :goto_4
    const-string v2, "fountainpen"

    iget-object v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "tailStayRate"

    const-string/jumbo v4, "tailStay"

    const-string v5, "endRunDelta"

    const-string v6, "endRunRate"

    const-string v7, "endRun"

    const-string v8, "endStayDelta"

    const-string v9, "endStayRate"

    const-string v10, "endStay"

    const-string v11, "beginRunDelta"

    const-string v12, "beginRunRate"

    const-string v13, "beginRun"

    const-string v14, "beginStayDelta"

    const-string v15, "beginStayRate"

    move/from16 p2, v2

    const-string v2, "beginStay"

    move-object/from16 v16, v3

    const-string/jumbo v3, "trans"

    if-eqz p2, :cond_6

    move-object/from16 p2, v4

    .line 183
    iget v4, v0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    move-object/from16 v17, v5

    float-to-double v4, v4

    invoke-interface {v1, v3, v4, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 185
    iget v3, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    float-to-double v3, v3

    invoke-interface {v1, v2, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 187
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    float-to-double v2, v2

    invoke-interface {v1, v15, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 189
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    float-to-double v2, v2

    invoke-interface {v1, v14, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 191
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    float-to-double v2, v2

    invoke-interface {v1, v13, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 193
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    float-to-double v2, v2

    invoke-interface {v1, v12, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 195
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    float-to-double v2, v2

    invoke-interface {v1, v11, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 197
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    float-to-double v2, v2

    invoke-interface {v1, v10, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 199
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    float-to-double v2, v2

    invoke-interface {v1, v9, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 201
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    float-to-double v2, v2

    invoke-interface {v1, v8, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 203
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    float-to-double v2, v2

    invoke-interface {v1, v7, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 205
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    float-to-double v2, v2

    invoke-interface {v1, v6, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 207
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    float-to-double v2, v2

    move-object/from16 v4, v17

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 209
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    float-to-double v2, v2

    move-object/from16 v5, p2

    invoke-interface {v1, v5, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 211
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    float-to-double v2, v2

    move-object/from16 v4, v16

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 213
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    float-to-double v2, v2

    const-string/jumbo v4, "tailStayDelta"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 215
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    float-to-double v2, v2

    const-string/jumbo v4, "tailRun"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 217
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    float-to-double v2, v2

    const-string/jumbo v4, "tailRunRate"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 219
    iget v2, v0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    float-to-double v2, v2

    const-string/jumbo v4, "tailRunDelta"

    invoke-interface {v1, v4, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    goto :goto_5

    :cond_6
    move-object v0, v5

    move-object v5, v4

    move-object v4, v0

    move-object/from16 v0, v16

    .line 221
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 222
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 223
    invoke-interface {v1, v15}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 224
    invoke-interface {v1, v14}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 225
    invoke-interface {v1, v13}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 226
    invoke-interface {v1, v12}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 227
    invoke-interface {v1, v11}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 228
    invoke-interface {v1, v10}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 229
    invoke-interface {v1, v9}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 230
    invoke-interface {v1, v8}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 231
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 232
    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 233
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 234
    invoke-interface {v1, v5}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 235
    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 236
    const-string/jumbo v0, "tailStayDelta"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v0, "tailRun"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v0, "tailRunRate"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 239
    const-string/jumbo v0, "tailRunDelta"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 243
    :goto_5
    const-string/jumbo v0, "shapepen"

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "fillColors"

    if-eqz v0, :cond_8

    .line 245
    const-string v0, "hasFill"

    iget-boolean v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    invoke-interface {v1, v0, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 247
    const-string v0, "fillType"

    iget-object v4, v2, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, v2, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, v2, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/nt/NtPenSettings;->getRGBFromList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_6

    .line 252
    :cond_7
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 255
    :goto_6
    iget v0, v2, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    float-to-double v3, v0

    const-string v0, "fillAlpha"

    invoke-interface {v1, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 257
    const-string v0, "hasArrow"

    iget-boolean v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    invoke-interface {v1, v0, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 259
    const-string v0, "arrowType"

    iget-object v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "arrowKinds"

    iget-object v2, v2, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_8
    const-string v0, "hasFill"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 264
    const-string v0, "fillType"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 265
    invoke-interface {v1, v3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 266
    const-string v0, "fillAlpha"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 267
    const-string v0, "hasArrow"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 268
    const-string v0, "arrowType"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 269
    const-string v0, "arrowKinds"

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void
.end method
