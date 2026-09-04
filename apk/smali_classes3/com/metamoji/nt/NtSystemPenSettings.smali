.class public Lcom/metamoji/nt/NtSystemPenSettings;
.super Lcom/metamoji/df/controller/Settings;
.source "NtSystemPenSettings.java"


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "MMJNtSystemPenSettings"

.field public static final PT_MODEL_PENTEMPLATE:Ljava/lang/String; = "pentemplates"

.field public static final SUBTYPE:Ljava/lang/String; = "MMJNtPenTemplate"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/Settings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static buildInitModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 186
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 187
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 190
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 191
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 194
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 195
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 198
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 199
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 202
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 203
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 207
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate6(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 208
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 210
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 211
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 213
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate8(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 214
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 216
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 217
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 221
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate10(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 222
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static defaultPenTemplate1(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 5

    .line 226
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 229
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.standard1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 235
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v3

    .line 236
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 238
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$1;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$1;-><init>()V

    .line 244
    const-string v3, "available"

    invoke-interface {p0, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v3, "default"

    invoke-interface {p0, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 250
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate10(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 648
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 651
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.buildin.markerpen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string/jumbo v0, "type"

    const-string v1, "markerpen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 657
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 658
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 660
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$18;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$18;-><init>()V

    .line 666
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 668
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$19;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$19;-><init>()V

    .line 673
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 675
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "standard"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 676
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate11(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 682
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 683
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "shapepen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 686
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 687
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 688
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$20;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$20;-><init>()V

    .line 703
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 704
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$21;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$21;-><init>()V

    .line 716
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 717
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "standard"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 718
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate2(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 5

    .line 256
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 259
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.standard2"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "standard"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string/jumbo v0, "version"

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 265
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v3

    .line 266
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v3, v4}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 268
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$2;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$2;-><init>()V

    .line 274
    const-string v3, "available"

    invoke-interface {p0, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$3;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$3;-><init>()V

    .line 279
    const-string v3, "default"

    invoke-interface {p0, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 282
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate3(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 288
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 291
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.calligraphy1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v0, "type"

    const-string v1, "calligraphy"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 297
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 298
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 300
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$4;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$4;-><init>()V

    .line 308
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 310
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$5;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$5;-><init>()V

    .line 314
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 316
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const-string v2, "gradation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 321
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate4(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 327
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 330
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.calligraphy2"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v0, "type"

    const-string v1, "calligraphy"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 336
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 337
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 339
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$6;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$6;-><init>()V

    .line 347
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$7;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$7;-><init>()V

    .line 353
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 355
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const-string v2, "gradation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 360
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate5(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 366
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 369
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.calligraphy.plus"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v0, "type"

    const-string v1, "calligraphy"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 375
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 376
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 378
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$8;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$8;-><init>()V

    .line 386
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$9;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$9;-><init>()V

    .line 392
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 394
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const-string v2, "gradation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 399
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate6(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 405
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 408
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.fountainpen1"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string/jumbo v0, "type"

    const-string v1, "fountainpen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 414
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 415
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 417
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$10;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$10;-><init>()V

    .line 425
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 427
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$11;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$11;-><init>()V

    .line 448
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 450
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const-string v2, "gradation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 455
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 461
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 464
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.fountainpen2"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string/jumbo v0, "type"

    const-string v1, "fountainpen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 470
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 471
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 473
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$12;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$12;-><init>()V

    .line 481
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 483
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$13;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$13;-><init>()V

    .line 504
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 506
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const-string v2, "gradation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 511
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate8(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 525
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 528
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.fountainpen3"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string/jumbo v0, "type"

    const-string v1, "fountainpen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string/jumbo v0, "version"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 534
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 535
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 537
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$14;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$14;-><init>()V

    .line 545
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 547
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$15;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$15;-><init>()V

    .line 568
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 570
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "gradation"

    aput-object v3, v0, v2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 575
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method static defaultPenTemplate9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 4

    .line 592
    const-string v0, "MMJNtPenTemplate"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 595
    const-string v0, "id"

    const-string v1, "com.metamoji.pen.builtin.fountainpen4"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v0, "type"

    const-string v1, "fountainpen"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string/jumbo v0, "version"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 601
    invoke-static {}, Lcom/metamoji/nt/NtSystemPenSettings;->getCurrentTimeFromEPOCH()D

    move-result-wide v2

    .line 602
    const-string v0, "createdDate"

    invoke-interface {p0, v0, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 604
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$16;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$16;-><init>()V

    .line 612
    const-string v2, "available"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 614
    new-instance v0, Lcom/metamoji/nt/NtSystemPenSettings$17;

    invoke-direct {v0}, Lcom/metamoji/nt/NtSystemPenSettings$17;-><init>()V

    .line 635
    const-string v2, "default"

    invoke-interface {p0, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x3

    .line 637
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "standard"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "gradation"

    aput-object v3, v0, v2

    const-string v2, "2colors"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 642
    const-string v1, "availableInkTypes"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method private static getCurrentTimeFromEPOCH()D
    .locals 2

    .line 25
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

.method private getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 102
    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 107
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public debugPenTemplateIdList()V
    .locals 5

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 119
    const-string v2, "id"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string/jumbo v3, "version"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v1, v4

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[%d]%s:%d"

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public existsPenTemplateById(Ljava/lang/String;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public existsPenTemplateById(Ljava/lang/String;I)Z
    .locals 2

    .line 67
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 68
    const-string/jumbo v1, "version"

    invoke-interface {p1, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPenTemplateAt(I)Lcom/metamoji/nt/NtPenTemplate;
    .locals 1

    if-ltz p1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 83
    new-instance v0, Lcom/metamoji/nt/NtPenTemplate;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/NtPenTemplate;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPenTemplateById(Ljava/lang/String;)Lcom/metamoji/nt/NtPenTemplate;
    .locals 1

    .line 92
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    new-instance v0, Lcom/metamoji/nt/NtPenTemplate;

    invoke-direct {v0, p1}, Lcom/metamoji/nt/NtPenTemplate;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public updateModel()V
    .locals 5

    .line 129
    const-string v0, "com.metamoji.pen.builtin.fountainpen1"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSystemPenSettings;->existsPenTemplateById(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate6(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 133
    :cond_0
    const-string v0, "com.metamoji.pen.builtin.fountainpen2"

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtSystemPenSettings;->existsPenTemplateById(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate7(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 137
    :cond_1
    const-string v0, "com.metamoji.pen.builtin.fountainpen3"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtSystemPenSettings;->existsPenTemplateById(Ljava/lang/String;I)Z

    move-result v2

    const-string v3, "com.metamoji.pen.builtin.fountainpen4"

    if-nez v2, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate8(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 144
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 150
    :cond_2
    invoke-direct {p0, v3}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 158
    :cond_4
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/metamoji/nt/NtSystemPenSettings;->existsPenTemplateById(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "com.metamoji.pen.buildin.markerpen"

    if-nez v0, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate9(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 164
    invoke-direct {p0, v3}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 170
    :cond_5
    invoke-direct {p0, v1}, Lcom/metamoji/nt/NtSystemPenSettings;->getPenTemplateModelById(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 174
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 178
    :cond_7
    :goto_1
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtSystemPenSettings;->existsPenTemplateById(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 179
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->defaultPenTemplate10(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/nt/NtSystemPenSettings;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    :cond_8
    return-void
.end method
