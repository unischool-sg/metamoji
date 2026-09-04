.class public Lcom/metamoji/mazec/LangResouceManager;
.super Ljava/lang/Object;
.source "LangResouceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/LangResouceManager$LangInfo;,
        Lcom/metamoji/mazec/LangResouceManager$VersionInfo;,
        Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;,
        Lcom/metamoji/mazec/LangResouceManager$Cons;,
        Lcom/metamoji/mazec/LangResouceManager$Listener;
    }
.end annotation


# static fields
.field private static final ALL_LANGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/metamoji/mazec/LangResouceManager;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInitLangInstallTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLangDir:Ljava/io/File;

.field private mLangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/LangResouceManager$LangInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Lcom/metamoji/mazec/LangResouceManager$Cons;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/mazec/LangResouceManager$Cons<",
            "Lcom/metamoji/mazec/LangResouceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mName2LangMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/LangResouceManager$LangInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedLangVerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    const-string v1, "ja_JP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v1, "en_US"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v1, "fr_FR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-string v1, "de_DE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v1, "it_IT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v1, "es_ES"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    const-string/jumbo v1, "ru_RU"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v1, "pt_BR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v1, "nl_NL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v1, "pl_PL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    const-string/jumbo v1, "zh_CN"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const-string/jumbo v1, "zh_TW"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v1, "ko_KR"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/mazec/LangResouceManager;->ALL_LANGS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/metamoji/mazec/LangResouceManager;->mCtx:Landroid/content/Context;

    .line 180
    invoke-static {p1}, Lcom/metamoji/mazec/MazecConfig;->getLanguageBaseDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangDir:Ljava/io/File;

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/MazecRACLibJNI;->setIMResourceDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;
    .locals 2

    .line 159
    sget-object v0, Lcom/metamoji/mazec/LangResouceManager;->mInstance:Lcom/metamoji/mazec/LangResouceManager;

    if-nez v0, :cond_1

    .line 160
    const-class v0, Lcom/metamoji/mazec/LangResouceManager;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-object v1, Lcom/metamoji/mazec/LangResouceManager;->mInstance:Lcom/metamoji/mazec/LangResouceManager;

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Lcom/metamoji/mazec/LangResouceManager;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/LangResouceManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/metamoji/mazec/LangResouceManager;->mInstance:Lcom/metamoji/mazec/LangResouceManager;

    .line 164
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 166
    :cond_1
    :goto_0
    sget-object p0, Lcom/metamoji/mazec/LangResouceManager;->mInstance:Lcom/metamoji/mazec/LangResouceManager;

    return-object p0
.end method

.method private installInitialLanguages(Lcom/metamoji/mazec/MazecIms;)V
    .locals 0

    return-void
.end method

.method private onInstallInitialLanguagesDone()V
    .locals 2

    .line 595
    monitor-enter p0

    const/4 v0, 0x0

    .line 596
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mInitLangInstallTask:Landroid/os/AsyncTask;

    .line 597
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->reloadLanguageResource()V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mListeners:Lcom/metamoji/mazec/LangResouceManager$Cons;

    if-eqz v0, :cond_1

    :goto_0
    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager$Cons;->car()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/LangResouceManager$Listener;

    invoke-interface {v1}, Lcom/metamoji/mazec/LangResouceManager$Listener;->initialLanguagesInstalled()V

    .line 608
    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager$Cons;->cdr()Lcom/metamoji/mazec/LangResouceManager$Cons;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 597
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/LangResouceManager;->removeListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V

    .line 617
    new-instance v0, Lcom/metamoji/mazec/LangResouceManager$Cons;

    iget-object v1, p0, Lcom/metamoji/mazec/LangResouceManager;->mListeners:Lcom/metamoji/mazec/LangResouceManager$Cons;

    invoke-direct {v0, p1, v1}, Lcom/metamoji/mazec/LangResouceManager$Cons;-><init>(Ljava/lang/Object;Lcom/metamoji/mazec/LangResouceManager$Cons;)V

    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mListeners:Lcom/metamoji/mazec/LangResouceManager$Cons;

    :cond_0
    return-void
.end method

.method public checkInitialLanguages()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected checkLanguageResource(Ljava/io/File;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;
    .locals 5

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 263
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "manifest.json"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 269
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/mazec/util/JSONUtil;->load(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 270
    const-string/jumbo v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const/4 v2, 0x0

    .line 273
    aget-object v2, v0, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 274
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/LangResouceManager;->getSupportedVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;

    move-result-object p1

    .line 275
    iget v3, p1, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVerMin:I

    if-gt v3, v2, :cond_2

    iget p1, p1, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVerMax:I

    if-gt v2, p1, :cond_2

    .line 276
    new-instance p1, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    invoke-direct {p1, v2, v0}, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 280
    const-string v0, "Mazec"

    const-string v2, "cannot read language resource manifest file"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v1
.end method

.method public deleteInstalledLanguagePackages()V
    .locals 6

    .line 447
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/mazec/MazecIms;->freeLanguageResource(Ljava/lang/String;)Z

    .line 452
    :cond_0
    invoke-static {v4}, Lcom/metamoji/mazec/util/FileUtil;->delete(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->setNeedReload()V

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->reloadLanguageResource()V

    :cond_2
    return-void
.end method

.method public getAvailableLanguages(ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->getLanguageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    if-eqz p1, :cond_0

    .line 332
    iget-boolean v3, v2, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mPurchased:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 336
    invoke-virtual {v2}, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->hasResource()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v2, v2, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getInitialLangageVersions()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/LangResouceManager$VersionInfo;",
            ">;"
        }
    .end annotation

    .line 461
    const-string v0, "_"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/mazec/LangResouceManager;->mCtx:Landroid/content/Context;

    const-string v3, "lang"

    invoke-static {v2, v3}, Lcom/metamoji/mazec/util/ResourceUtil;->listAssertsResources(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 464
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 465
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 466
    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    .line 467
    aget-object v3, v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 468
    array-length v6, v3

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v3, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 470
    aget-object v5, v3, v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aget-object v3, v3, v7

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 471
    new-instance v6, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    invoke-direct {v6, v5, v3}, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;-><init>(II)V

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return-object v1
.end method

.method protected getLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/LangResouceManager$LangInfo;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->reloadLanguages()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangs:Ljava/util/List;

    return-object v0
.end method

.method protected getLanguageMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/mazec/LangResouceManager$LangInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mName2LangMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->reloadLanguages()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mName2LangMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSupportedVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mSupportedLangVerMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 287
    monitor-enter p0

    .line 289
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/metamoji/mazec/LangResouceManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 291
    const-string v2, "lang-resources.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/mazec/util/JSONUtil;->load(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 294
    sget-object v3, Lcom/metamoji/mazec/LangResouceManager;->ALL_LANGS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 300
    new-instance v6, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;

    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "version-min"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "version-max"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v6, v7, v8, v5}, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;-><init>(III)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mSupportedLangVerMap:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 304
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 305
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 307
    :try_start_5
    const-string v0, "Mazec"

    const-string v1, "cannot read language resource version resource"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    throw p1

    .line 310
    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 312
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mSupportedLangVerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;

    return-object p1
.end method

.method public getVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->getLanguageMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 320
    :cond_0
    iget-object p1, p1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mVersion:Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    return-object p1
.end method

.method public installLanguagePackage(Ljava/io/File;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->getLanguageMap()Ljava/util/Map;

    move-result-object v1

    .line 404
    iget-object v2, p0, Lcom/metamoji/mazec/LangResouceManager;->mCtx:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/metamoji/mazec/util/ZipUtil;->unzip(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    .line 407
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v2, v4, :cond_4

    :try_start_1
    aget-object v7, v3, v2

    .line 408
    invoke-virtual {p0, v7}, Lcom/metamoji/mazec/LangResouceManager;->checkLanguageResource(Ljava/io/File;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 414
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    if-eqz v10, :cond_1

    .line 416
    invoke-virtual {v10}, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->hasResource()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v10, v10, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mVersion:Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    .line 417
    invoke-virtual {v10, v8}, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->compare(Lcom/metamoji/mazec/LangResouceManager$VersionInfo;)I

    move-result v8

    if-ltz v8, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {v0, v9}, Lcom/metamoji/mazec/MazecIms;->freeLanguageResource(Ljava/lang/String;)Z

    move-result v6

    .line 426
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangDir:Ljava/io/File;

    invoke-direct {v8, v10, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    iget-object v9, p0, Lcom/metamoji/mazec/LangResouceManager;->mCtx:Landroid/content/Context;

    invoke-static {v9, v7, v8}, Lcom/metamoji/mazec/util/FileUtil;->move(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    move v2, v5

    goto :goto_2

    :cond_4
    if-lez v5, :cond_5

    .line 434
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->setNeedReload()V

    :cond_5
    if-eqz v6, :cond_6

    .line 437
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->reloadLanguageResource()V

    .line 439
    :cond_6
    invoke-static {p1}, Lcom/metamoji/mazec/util/FileUtil;->delete(Ljava/io/File;)Z

    return v5

    :catchall_1
    move-exception v1

    move v6, v2

    :goto_2
    if-lez v2, :cond_7

    .line 434
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->setNeedReload()V

    :cond_7
    if-eqz v6, :cond_8

    .line 437
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->reloadLanguageResource()V

    .line 439
    :cond_8
    invoke-static {p1}, Lcom/metamoji/mazec/util/FileUtil;->delete(Ljava/io/File;)Z

    .line 440
    throw v1
.end method

.method public isAvailable(Ljava/lang/String;ZZ)Z
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->getLanguageMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 358
    iget-boolean p2, p1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mPurchased:Z

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-eqz p3, :cond_2

    .line 362
    invoke-virtual {p1}, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->hasResource()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isLatinAvailable(ZZ)Z
    .locals 3

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/mazec/LangResouceManager;->getLanguageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    .line 377
    iget-object v2, v1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 381
    iget-boolean v2, v1, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mPurchased:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 385
    invoke-virtual {v1}, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->hasResource()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method protected reloadLanguages()V
    .locals 7

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 210
    sget-object v2, Lcom/metamoji/mazec/LangResouceManager;->ALL_LANGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    new-instance v4, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    invoke-direct {v4, v3}, Lcom/metamoji/mazec/LangResouceManager$LangInfo;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_0
    const-string v2, "ja_JP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 226
    iput-boolean v3, v2, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mPurchased:Z

    .line 230
    :cond_1
    sget-boolean v2, Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z

    if-eqz v2, :cond_3

    .line 232
    invoke-static {}, Lcom/metamoji/mazec/purchase/PurchaseManager;->getInstance()Lcom/metamoji/mazec/purchase/PurchaseManager;

    move-result-object v2

    .line 233
    iget-object v4, p0, Lcom/metamoji/mazec/LangResouceManager;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/metamoji/mazec/purchase/PurchaseManager;->getPurchasedLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 234
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    if-eqz v4, :cond_2

    .line 236
    iput-boolean v3, v4, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mPurchased:Z

    goto :goto_1

    .line 242
    :cond_3
    iget-object v2, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 243
    iget-object v2, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 244
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/LangResouceManager$LangInfo;

    if-nez v6, :cond_4

    goto :goto_3

    .line 249
    :cond_4
    invoke-virtual {p0, v5}, Lcom/metamoji/mazec/LangResouceManager;->checkLanguageResource(Ljava/io/File;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    move-result-object v5

    iput-object v5, v6, Lcom/metamoji/mazec/LangResouceManager$LangInfo;->mVersion:Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 253
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangs:Ljava/util/List;

    .line 254
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mName2LangMap:Ljava/util/Map;

    .line 255
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeListener(Lcom/metamoji/mazec/LangResouceManager$Listener;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mListeners:Lcom/metamoji/mazec/LangResouceManager$Cons;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/LangResouceManager$Cons;->remove(Ljava/lang/Object;)Lcom/metamoji/mazec/LangResouceManager$Cons;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/LangResouceManager;->mListeners:Lcom/metamoji/mazec/LangResouceManager$Cons;

    :cond_0
    return-void
.end method

.method public setNeedReload()V
    .locals 1

    .line 200
    monitor-enter p0

    const/4 v0, 0x0

    .line 201
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mLangs:Ljava/util/List;

    .line 202
    iput-object v0, p0, Lcom/metamoji/mazec/LangResouceManager;->mName2LangMap:Ljava/util/Map;

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
