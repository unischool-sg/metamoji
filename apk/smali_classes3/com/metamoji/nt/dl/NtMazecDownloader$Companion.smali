.class public final Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;
.super Ljava/lang/Object;
.source "NtMazecDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/dl/NtMazecDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J>\u0010\u0004\u001a*\u0012 \u0012\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001`\u0008\u0012\u0004\u0012\u00020\t0\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000bH\u0002JJ\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u00072\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u000f2\"\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0001`\u0008H\u0002J,\u0010\u0012\u001a\u00020\t2\"\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006j\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007`\u0008H\u0002J\u0016\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\tH\u0082@\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0016\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\tH\u0082@\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u001c\u001a\u00020\u0017H\u0007R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;",
        "",
        "<init>",
        "()V",
        "getInstalledDicMap",
        "Lkotlin/Pair;",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "",
        "langArray",
        "",
        "getUrlForLangIfNeed",
        "lang",
        "dicDic",
        "",
        "installedDicMap",
        "DOWNLOAD_TEMP_FILE",
        "isUpdate",
        "dicMap",
        "confirmToDownload",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showNoUpdateMsg",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "titleFor",
        "downloadStartMessageFor",
        "showOfflineMsg",
        "uninstall",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$confirmToDownload(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->confirmToDownload(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadStartMessageFor(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Z)Ljava/lang/String;
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->downloadStartMessageFor(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInstalledDicMap(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/util/List;)Lkotlin/Pair;
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->getInstalledDicMap(Ljava/util/List;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUrlForLangIfNeed(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->getUrlForLangIfNeed(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isUpdate(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/util/LinkedHashMap;)Z
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->isUpdate(Ljava/util/LinkedHashMap;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showNoUpdateMsg(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->showNoUpdateMsg(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showOfflineMsg(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->showOfflineMsg(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$titleFor(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Z)Ljava/lang/String;
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->titleFor(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final confirmToDownload(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 394
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 395
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v2, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v1, v4}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion$confirmToDownload$2$1;-><init>(ZLkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 394
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object p1
.end method

.method private final downloadStartMessageFor(Z)Ljava/lang/String;
    .locals 1

    .line 426
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$string;->dic_update_start_msg:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->dic_download_start_msg:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getInstalledDicMap(Ljava/util/List;)Lkotlin/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 266
    const-string v0, "NtMazecDownloader.getInstalledDicMap()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v3

    .line 269
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 272
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    :try_start_0
    invoke-virtual {v0, v5}, Lcom/metamoji/mazec/LangResouceManager;->getVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 277
    move-object v7, v4

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget v7, v6, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    iget v6, v6, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NtMazecDownloader.getInstalledDicMap: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "] installed (ver="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 281
    const-string v6, "NtMazecDownloader.getInstalledDicMap"

    invoke-static {v5, v6}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    const-string v1, "NtMazecDownloader.getInstalledDicMap: isNeedDownload=true"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 288
    :cond_2
    new-instance p1, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private final getUrlForLangIfNeed(Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 303
    const-string v0, "NtMazecDownloader.getUrlForLangIfNeed"

    const-string v1, "NtMazecDownloader.getUrlForLangIfNeed()"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 304
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 306
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/LangResouceManager;->getSupportedVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    return-object v2

    .line 316
    :cond_0
    iget v3, v1, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVerMax:I

    iget v1, v1, Lcom/metamoji/mazec/LangResouceManager$SupportedVersionInfo;->mVerMin:I

    const/4 v4, 0x0

    if-gt v1, v3, :cond_2

    .line 317
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :cond_3
    move v3, v4

    :goto_1
    if-nez v5, :cond_4

    return-object v2

    .line 328
    :cond_4
    invoke-virtual {p3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    .line 330
    const-string p3, "NtMazecDownloader.getUrlForLangIfNeed: ["

    if-nez p2, :cond_5

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] no language-pack installed."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 334
    :cond_5
    iget v1, p2, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    .line 335
    iget p2, p2, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    if-le v3, v1, :cond_6

    .line 339
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]  major-version(av)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", major-version(inst)="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-ne v3, v1, :cond_8

    .line 345
    :try_start_1
    const-string v3, "Vlang-mi"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 346
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "] major-version="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", minor-version(av)="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", minor-version(inst)="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz v3, :cond_7

    .line 348
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    if-le v4, p2, :cond_8

    .line 362
    :goto_2
    const-string/jumbo p1, "url"

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception p1

    .line 350
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_8
    return-object v2

    :catch_0
    move-exception p1

    .line 308
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v2
.end method

.method private final isUpdate(Ljava/util/LinkedHashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 378
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 379
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v0

    .line 380
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 381
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_1
    return v2
.end method

.method private final showNoUpdateMsg(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 410
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->dic_update_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    sget-object v2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->dic_noupdate_msg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-static {v0, v2, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->showMessage(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final showOfflineMsg(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->titleFor(Z)Ljava/lang/String;

    move-result-object p1

    .line 435
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->purchase_dialog_msg_offline:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-static {p1, v0, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->showMessage(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final titleFor(Z)Ljava/lang/String;
    .locals 1

    .line 419
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    sget p1, Lcom/metamoji/noteanytime/R$string;->dic_update_title:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->dic_download_title:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final uninstall()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 441
    sget-object v0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager;->deleteInstalledLanguagePackages()V

    return-void
.end method
