.class public Lcom/metamoji/nt/NtSystemInkSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NtSystemInkSettings.java"


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "MMJNtSystemInkSettings"

.field public static final SUBTYPE:Ljava/lang/String; = "MMJNtInkTemplate"

.field static relatedInkIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 134
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.metamoji.ink.builtin.standard2"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.metamoji.ink.builtin.standard3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.metamoji.ink.builtin.standard4"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static NUMARRAY(III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 532
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

.method static NUMARRAY2(IIIIII)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 537
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

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 511
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemInkSettings;->defaultInkTemplate1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 512
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 515
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemInkSettings;->defaultInkTemplate2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 516
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 519
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemInkSettings;->defaultInkTemplate3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 520
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 523
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemInkSettings;->defaultInkTemplate4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 524
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 527
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemInkSettings;->defaultInkTemplate5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 528
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private checkWarningMessageById(Ljava/lang/String;)Z
    .locals 3

    .line 464
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 466
    const-string v1, "maxQuantity"

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    .line 471
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    .line 478
    :cond_1
    const-string/jumbo v1, "warningDone"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    .line 485
    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_3
    return v0
.end method

.method static defaultInkTemplate1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 11

    .line 541
    const-string v0, "MMJNtInkTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 544
    const-string v0, "id"

    const-string v1, "com.metamoji.ink.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v0, "group"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 549
    sget v1, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name1:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string v1, "name"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/16 v0, 0x18

    .line 557
    new-array v0, v0, [Ljava/util/List;

    const/16 v2, 0xff

    const/16 v3, 0xd4

    const/16 v4, 0xdd

    .line 558
    invoke-static {v2, v3, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v0, v5

    const/16 v3, 0x99

    invoke-static {v2, v3, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/4 v1, 0x2

    invoke-static {v2, v5, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x88

    invoke-static {v1, v5, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v0, v7

    const/16 v6, 0xbb

    .line 559
    invoke-static {v6, v2, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v0, v8

    const/4 v7, 0x5

    invoke-static {v5, v2, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0xaa

    invoke-static {v5, v7, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v0, v9

    const/16 v8, 0x55

    invoke-static {v5, v8, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v0, v10

    const/16 v9, 0x8

    .line 560
    invoke-static {v4, v4, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, v9

    const/16 v4, 0x9

    invoke-static {v7, v7, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v9

    aput-object v9, v0, v4

    const/16 v4, 0xa

    invoke-static {v5, v5, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v9

    aput-object v9, v0, v4

    const/16 v4, 0xb

    invoke-static {v5, v5, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v9

    aput-object v9, v0, v4

    const/16 v4, 0x33

    .line 561
    invoke-static {v2, v2, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v4

    const/16 v9, 0xc

    aput-object v4, v0, v9

    const/16 v4, 0xcc

    invoke-static {v2, v4, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0xd

    aput-object v9, v0, v10

    const/16 v9, 0xe

    invoke-static {v6, v1, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v9

    const/16 v6, 0x44

    invoke-static {v8, v6, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    const/16 v8, 0xf

    aput-object v6, v0, v8

    const/16 v6, 0x10

    .line 562
    invoke-static {v2, v1, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x66

    invoke-static {v2, v1, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    const/16 v6, 0x11

    aput-object v1, v0, v6

    const/16 v1, 0x12

    invoke-static {v5, v7, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x13

    invoke-static {v5, v3, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x14

    .line 563
    invoke-static {v2, v2, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    invoke-static {v4, v4, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    invoke-static {v3, v3, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    invoke-static {v5, v5, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 557
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 565
    const-string v1, "colors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 567
    const-string v0, "maxQuantity"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 569
    const-string v0, "currentQuantity"

    invoke-interface {p0, v0, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 571
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 572
    const-string v2, "createdDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 573
    const-string/jumbo v2, "usedDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p0
.end method

.method static defaultInkTemplate2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 10

    .line 579
    const-string v0, "MMJNtInkTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 582
    const-string v0, "id"

    const-string v1, "com.metamoji.ink.builtin.standard2"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 585
    sget v1, Lcom/metamoji/noteanytime/R$string;->Inapppurchase_Ink_Optionset_Short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    const-string v2, "group"

    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget v1, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    const-string v1, "name"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/16 v0, 0x10

    .line 596
    new-array v0, v0, [Ljava/util/List;

    const/16 v2, 0xff

    const/16 v3, 0xe6

    .line 597
    invoke-static {v2, v3, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/16 v4, 0xcc

    invoke-static {v2, v4, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/4 v1, 0x2

    invoke-static {v2, v3, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/4 v1, 0x3

    invoke-static {v2, v4, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x99

    .line 598
    invoke-static {v4, v2, v1}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v0, v7

    const/16 v6, 0x33

    invoke-static {v1, v2, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v0, v8

    const/16 v7, 0xbb

    invoke-static {v7, v2, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v0, v8

    const/16 v7, 0xdd

    invoke-static {v5, v2, v7}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x7

    aput-object v5, v0, v8

    const/16 v5, 0xee

    .line 599
    invoke-static {v4, v5, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x8

    aput-object v8, v0, v9

    const/16 v8, 0x9

    invoke-static {v1, v7, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v7

    aput-object v7, v0, v8

    const/16 v7, 0xa

    invoke-static {v3, v3, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0xb

    invoke-static {v4, v4, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    aput-object v8, v0, v7

    const/16 v7, 0xc

    .line 600
    invoke-static {v2, v2, v1}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0xd

    invoke-static {v2, v3, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    invoke-static {v5, v3, v1}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v1, 0xd5

    const/16 v2, 0xaa

    invoke-static {v1, v4, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 596
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 602
    const-string v1, "colors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 604
    const-string v0, "maxQuantity"

    const v1, 0x2625a0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 606
    const-string v0, "currentQuantity"

    const v1, 0x3d090

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 608
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 609
    const-string v2, "createdDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 610
    const-string/jumbo v2, "usedDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p0
.end method

.method static defaultInkTemplate3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 13

    .line 616
    const-string v0, "MMJNtInkTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 619
    const-string v0, "id"

    const-string v1, "com.metamoji.ink.builtin.standard3"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 622
    sget v1, Lcom/metamoji/noteanytime/R$string;->Inapppurchase_Ink_Optionset_Short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    const-string v2, "group"

    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget v1, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    const-string v1, "name"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/16 v0, 0x10

    .line 633
    new-array v0, v0, [Ljava/util/List;

    const/16 v2, 0xee

    const/16 v3, 0xaa

    const/16 v4, 0x44

    .line 634
    invoke-static {v2, v3, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const/16 v5, 0xdd

    const/16 v7, 0x77

    invoke-static {v5, v7, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    aput-object v8, v0, v1

    const/16 v1, 0xbb

    invoke-static {v1, v4, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v0, v9

    const/16 v8, 0x88

    const/16 v9, 0x33

    invoke-static {v8, v9, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x3

    aput-object v8, v0, v10

    const/16 v8, 0xcc

    .line 635
    invoke-static {v3, v8, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v3

    const/4 v10, 0x4

    aput-object v3, v0, v10

    const/16 v3, 0x66

    const/16 v10, 0x99

    invoke-static {v3, v10, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v0, v12

    const/16 v11, 0x55

    invoke-static {v11, v7, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v7

    const/4 v12, 0x6

    aput-object v7, v0, v12

    const/4 v7, 0x7

    invoke-static {v9, v11, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v11

    aput-object v11, v0, v7

    const/16 v7, 0x8

    .line 636
    invoke-static {v10, v1, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v7

    const/16 v2, 0x9

    invoke-static {v3, v10, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v7

    aput-object v7, v0, v2

    const/16 v2, 0xa

    invoke-static {v9, v3, v1}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xb

    invoke-static {v6, v9, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 637
    invoke-static {v5, v8, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0xa2

    invoke-static {v1, v2, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v1, 0xe

    invoke-static {v10, v3, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v3, v4, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 633
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 639
    const-string v1, "colors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 641
    const-string v0, "maxQuantity"

    const v1, 0x2625a0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 643
    const-string v0, "currentQuantity"

    const v1, 0x3d090

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 645
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 646
    const-string v2, "createdDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 647
    const-string/jumbo v2, "usedDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p0
.end method

.method static defaultInkTemplate4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 14

    .line 653
    const-string v0, "MMJNtInkTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 656
    const-string v0, "id"

    const-string v1, "com.metamoji.ink.builtin.standard4"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 659
    sget v1, Lcom/metamoji/noteanytime/R$string;->Inapppurchase_Ink_Optionset_Short:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 660
    const-string v2, "group"

    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    sget v1, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name4:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string v1, "name"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/16 v0, 0x10

    .line 670
    new-array v0, v0, [Ljava/util/List;

    const/16 v2, 0xee

    const/16 v3, 0xdd

    .line 671
    invoke-static {v2, v3, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const/16 v4, 0xb3

    const/16 v5, 0xbb

    invoke-static {v3, v5, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x88

    const/16 v4, 0x77

    invoke-static {v5, v1, v4}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v0, v7

    const/16 v6, 0x44

    const/16 v7, 0x55

    invoke-static {v1, v7, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v0, v8

    const/16 v6, 0xcc

    .line 672
    invoke-static {v6, v2, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v0, v9

    const/16 v8, 0xaa

    invoke-static {v8, v6, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v0, v10

    const/16 v9, 0x99

    invoke-static {v4, v8, v9}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v0, v11

    const/16 v10, 0x4d

    const/16 v11, 0x66

    invoke-static {v10, v11, v7}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x7

    aput-object v12, v0, v13

    const/16 v12, 0xd5

    .line 673
    invoke-static {v12, v3, v2}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    const/16 v12, 0x8

    aput-object v2, v0, v12

    const/16 v2, 0x9

    invoke-static {v5, v6, v3}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v12

    aput-object v12, v0, v2

    const/16 v2, 0xa2

    invoke-static {v1, v2, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x80

    invoke-static {v10, v11, v1}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0xc

    .line 674
    invoke-static {v3, v3, v6}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-static {v6, v6, v5}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-static {v8, v8, v9}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-static {v4, v11, v7}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY(III)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    .line 670
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 676
    const-string v1, "colors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 678
    const-string v0, "maxQuantity"

    const v1, 0x2625a0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 680
    const-string v0, "currentQuantity"

    const v1, 0x3d090

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 682
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 683
    const-string v2, "createdDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 684
    const-string/jumbo v2, "usedDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p0
.end method

.method static defaultInkTemplate5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 10

    .line 690
    const-string v0, "MMJNtInkTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 693
    const-string v0, "id"

    const-string v1, "com.metamoji.ink.gradation"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "group"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 698
    sget v1, Lcom/metamoji/noteanytime/R$string;->Ink_Default_Name5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 699
    const-string v1, "name"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string/jumbo v0, "type"

    const-string v1, "gradation"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/16 v0, 0x10

    .line 706
    new-array v0, v0, [Ljava/util/List;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v2, 0xff

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/16 v5, 0xff

    .line 707
    invoke-static/range {v2 .. v7}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x80

    const/16 v5, 0xe6

    const/16 v7, 0xff

    invoke-static/range {v4 .. v9}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v7, 0x0

    const/16 v8, 0x33

    const/16 v3, 0xff

    const/16 v4, 0x99

    const/16 v5, 0xff

    const/16 v6, 0x88

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v7, 0x33

    const/16 v8, 0xbb

    const/16 v3, 0x33

    const/16 v4, 0xdd

    const/16 v5, 0xee

    const/16 v6, 0xff

    .line 708
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v7, 0x77

    const/4 v8, 0x0

    const/16 v3, 0xcc

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 709
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v7, 0x88

    const/16 v3, 0xff

    const/16 v4, 0xaa

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v7, 0x44

    const/16 v8, 0x55

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/16 v5, 0xcc

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v7, 0x80

    const/16 v8, 0x80

    const/16 v3, 0xaa

    const/16 v4, 0x88

    const/16 v5, 0xff

    .line 710
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v7, 0x55

    const/16 v8, 0xff

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/16 v6, 0x33

    .line 711
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v4, 0xee

    const/16 v5, 0x91

    const/16 v6, 0x55

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v7, 0x33

    const/16 v8, 0xe6

    const/16 v3, 0xdd

    const/16 v4, 0xc4

    const/16 v5, 0xff

    const/16 v6, 0x44

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v3, 0xf7

    const/16 v4, 0xb3

    const/4 v5, 0x0

    .line 712
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v7, 0x4d

    const/4 v8, 0x0

    const/16 v3, 0xff

    const/16 v4, 0xdd

    const/16 v6, 0x77

    .line 713
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v7, 0x77

    const/16 v3, 0x4d

    const/16 v4, 0xf7

    const/16 v5, 0x99

    const/16 v6, 0x99

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v7, 0x66

    const/16 v8, 0x5e

    const/16 v3, 0xdd

    const/16 v4, 0xdd

    const/16 v5, 0x77

    const/16 v6, 0x66

    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v7, 0x33

    const/16 v8, 0x33

    const/16 v5, 0xdd

    const/16 v6, 0x33

    .line 714
    invoke-static/range {v3 .. v8}, Lcom/metamoji/nt/NtSystemInkSettings;->NUMARRAY2(IIIIII)Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 706
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 716
    const-string v1, "colors"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    .line 718
    const-string v0, "maxQuantity"

    const v1, 0x2625a0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 720
    const-string v0, "currentQuantity"

    const v1, 0x3d090

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 722
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 723
    const-string v2, "createdDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 724
    const-string/jumbo v2, "usedDate"

    invoke-interface {p0, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-object p0
.end method

.method private getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I
    .locals 4

    .line 426
    const-string v0, "currentQuantity"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    .line 428
    const-string/jumbo v2, "serverQuantity"

    invoke-interface {p1, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v2

    .line 430
    const-string/jumbo v3, "usedQuantity"

    invoke-interface {p1, v3, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    add-int/2addr v0, v2

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method private static getCurrentTimeFromEPOCH()D
    .locals 2

    .line 30
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v0

    return-wide v0
.end method

.method private getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemInkSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 449
    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 453
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private reduceQuantityInner(ILjava/lang/String;)F
    .locals 5

    .line 156
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    return v1

    .line 178
    :cond_0
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 180
    const-string v0, "maxQuantity"

    const/4 v2, -0x1

    invoke-interface {p2, v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 185
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    add-int/2addr p1, v1

    move v1, v2

    .line 192
    :cond_2
    const-string/jumbo v3, "usedQuantity"

    invoke-interface {p2, v3, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, p1

    .line 193
    invoke-interface {p2, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 196
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->updateUsedTime(Lcom/metamoji/df/model/IModel;)V

    .line 198
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->updateUpdatedTime(Lcom/metamoji/df/model/IModel;)V

    if-gez p1, :cond_3

    .line 204
    const-string/jumbo p1, "warningDone"

    invoke-interface {p2, p1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    :cond_3
    int-to-float p1, v1

    int-to-float p2, v0

    div-float/2addr p1, p2

    return p1

    :cond_4
    return v1
.end method

.method private updateUpdatedTime(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 496
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 497
    const-string/jumbo v2, "updatedDate"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method private updateUsedTime(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 505
    invoke-static {}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v0

    .line 506
    const-string/jumbo v2, "usedDate"

    invoke-interface {p1, v2, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public getClientInkProperty(Ljava/lang/String;)I
    .locals 2

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 262
    const-string v1, "currentQuantity"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemInkSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentQuantityById(Ljava/lang/String;)I
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getInkTemplateAt(I)Lcom/metamoji/nt/NtInkTemplate;
    .locals 1

    if-ltz p1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemInkSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemInkSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 113
    new-instance v0, Lcom/metamoji/nt/NtInkTemplate;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/NtInkTemplate;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInkTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtInkTemplate;
    .locals 1

    .line 123
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Lcom/metamoji/nt/NtInkTemplate;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/NtInkTemplate;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxQuantityById(Ljava/lang/String;)I
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 69
    const-string v1, "maxQuantity"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getServerInkProperty(Ljava/lang/String;)I
    .locals 2

    .line 315
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 317
    const-string/jumbo v1, "serverQuantity"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getUsedInkProperty(Ljava/lang/String;)I
    .locals 2

    .line 370
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 372
    const-string/jumbo v1, "usedQuantity"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public isNoQuantityById(Ljava/lang/String;)Z
    .locals 3

    .line 88
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 90
    const-string v1, "maxQuantity"

    const/4 v2, -0x1

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    if-lez p1, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public reduceQuantity(ILjava/lang/String;)F
    .locals 2

    .line 140
    sget-object v0, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    sget-object p2, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/metamoji/nt/NtSystemInkSettings;->reduceQuantityInner(ILjava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    return v0

    .line 150
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->reduceQuantityInner(ILjava/lang/String;)F

    move-result p1

    return p1
.end method

.method public setClientInkProperty(ILjava/lang/String;)V
    .locals 1

    .line 273
    sget-object v0, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    sget-object p2, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtSystemInkSettings;->setClientInkPropertyInner(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->setClientInkPropertyInner(ILjava/lang/String;)V

    return-void
.end method

.method protected setClientInkPropertyInner(ILjava/lang/String;)V
    .locals 2

    .line 290
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 292
    const-string v0, "maxQuantity"

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    const-string v0, "currentQuantity"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 299
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    if-lez p1, :cond_1

    .line 301
    const-string/jumbo p1, "warningDone"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 305
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->updateUpdatedTime(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setServerInkProperty(ILjava/lang/String;)V
    .locals 1

    .line 328
    sget-object v0, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    sget-object p2, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtSystemInkSettings;->setServerInkPropertyInner(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 335
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->setServerInkPropertyInner(ILjava/lang/String;)V

    return-void
.end method

.method protected setServerInkPropertyInner(ILjava/lang/String;)V
    .locals 2

    .line 345
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 347
    const-string v0, "maxQuantity"

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    const-string/jumbo v0, "serverQuantity"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 354
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    if-lez p1, :cond_1

    .line 356
    const-string/jumbo p1, "warningDone"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 360
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->updateUpdatedTime(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setUsedInkProperty(ILjava/lang/String;)V
    .locals 1

    .line 383
    sget-object v0, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    sget-object p2, Lcom/metamoji/nt/NtSystemInkSettings;->relatedInkIds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtSystemInkSettings;->setUsedInkPropertyInner(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->setUsedInkPropertyInner(ILjava/lang/String;)V

    return-void
.end method

.method protected setUsedInkPropertyInner(ILjava/lang/String;)V
    .locals 2

    .line 400
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getInkTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 402
    const-string v0, "maxQuantity"

    const/4 v1, -0x1

    invoke-interface {p2, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    const-string/jumbo v0, "usedQuantity"

    invoke-interface {p2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 409
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->getCurrentInkQuantityInner(Lcom/metamoji/df/model/IModel;)I

    move-result p1

    if-lez p1, :cond_1

    .line 411
    const-string/jumbo p1, "warningDone"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 415
    :cond_1
    invoke-direct {p0, p2}, Lcom/metamoji/nt/NtSystemInkSettings;->updateUpdatedTime(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showQuantityWarningMessage(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtSystemInkSettings;->checkWarningMessageById(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 243
    sget v0, Lcom/metamoji/noteanytime/R$string;->Ink_Msg_Warning_Message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 244
    sget v0, Lcom/metamoji/noteanytime/R$string;->Ink_Msg_Warning_Title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 245
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_OK:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 249
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 250
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v1, "showQuantityWarningMessage"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
