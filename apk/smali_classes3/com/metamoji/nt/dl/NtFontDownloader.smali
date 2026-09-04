.class public final Lcom/metamoji/nt/dl/NtFontDownloader;
.super Lcom/metamoji/nt/dl/NtResourceDownloaderBase;
.source "NtFontDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtFontDownloader$Companion;,
        Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 $2\u00020\u0001:\u0002#$B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J \u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u001aJ.\u0010\u001b\u001a\u00020\u00072\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0012H\u0002J.\u0010\"\u001a\u00020\u000f2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00172\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001dR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtFontDownloader;",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
        "options",
        "Lcom/metamoji/nt/dl/NtDownloaderOptions;",
        "callback",
        "Lkotlin/Function2;",
        "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
        "",
        "<init>",
        "(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V",
        "messageResourceId",
        "",
        "getMessageResourceId",
        "()I",
        "needToDownload",
        "",
        "download",
        "outDir",
        "Ljava/io/File;",
        "canceller",
        "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
        "(Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "checkUpdateAsync",
        "",
        "Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;",
        "offlineMsg",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "performDownloadTaskInBackground",
        "downloadList",
        "(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerToFontManager",
        "lic",
        "",
        "file",
        "downloadCore",
        "FontInfo",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/nt/dl/NtFontDownloader$Companion;

.field private static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "dl_fonts"


# instance fields
.field private final messageResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtFontDownloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/dl/NtFontDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/dl/NtFontDownloader;->Companion:Lcom/metamoji/nt/dl/NtFontDownloader$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtDownloaderOptions;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;-><init>(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V

    .line 12
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DOWNLOADING_FONTS:I

    iput p1, p0, Lcom/metamoji/nt/dl/NtFontDownloader;->messageResourceId:I

    return-void
.end method

.method public static final synthetic access$checkUpdateAsync(Lcom/metamoji/nt/dl/NtFontDownloader;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtFontDownloader;->checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadCore(Lcom/metamoji/nt/dl/NtFontDownloader;Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/dl/NtFontDownloader;->downloadCore(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$performDownloadTaskInBackground(Lcom/metamoji/nt/dl/NtFontDownloader;Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/dl/NtFontDownloader;->performDownloadTaskInBackground(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;-><init>(Lcom/metamoji/nt/dl/NtFontDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->I$0:I

    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    sget-object p2, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getLicenses()Ljava/lang/Iterable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 69
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 71
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iput v7, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "no lang"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_1
    return-object v6

    .line 75
    :cond_7
    sget-object p2, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtDownloadUtil;->isNetworkConnected()Z

    move-result p2

    if-nez p2, :cond_9

    .line 77
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iput v5, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "offline"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_2
    return-object v6

    .line 82
    :cond_9
    iput-object v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iput v4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->updateSysInfoSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    goto :goto_4

    :cond_a
    :goto_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eq p2, v7, :cond_c

    .line 87
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->Z$0:Z

    iput p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->I$0:I

    iput v3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "cannot update sysInfo."

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_4
    return-object v1

    :cond_b
    :goto_5
    return-object v6

    .line 91
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 92
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getFontManager()Lcom/metamoji/nt/dl/INtDownloadableFontManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/nt/dl/INtDownloadableFontManager;->isFontInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": already installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    goto :goto_6

    .line 98
    :cond_d
    invoke-static {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": sysInfo error ... no url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto :goto_6

    .line 103
    :cond_e
    new-instance v2, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    return-object p1
.end method

.method private final downloadCore(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;

    iget v3, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;-><init>(Lcom/metamoji/nt/dl/NtFontDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 164
    iget v4, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_3

    if-ne v4, v5, :cond_2

    iget v4, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->I$0:I

    iget-object v9, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;

    iget-object v10, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    iget-object v12, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v13, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    iget-object v14, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v16, v10

    move-object v10, v2

    move-object v2, v12

    move v12, v4

    move-object v4, v11

    move-object/from16 v11, v16

    goto/16 :goto_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v4, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->I$0:I

    iget-object v9, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;

    iget-object v10, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    iget-object v12, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v13, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    iget-object v14, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget v3, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->I$0:I

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v2, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    const-string v1, "NtFontDownloader.downloadCore()"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/io/File;

    const-string v4, "dl_fonts"

    move-object/from16 v9, p2

    invoke-direct {v1, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/dl/NtFontDownloader;->setTotalCount(I)V

    .line 168
    invoke-virtual {v0, v8}, Lcom/metamoji/nt/dl/NtFontDownloader;->setCurrentIndex(I)V

    .line 170
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v2

    move-object v11, v4

    move v12, v7

    move-object/from16 v2, p3

    move-object v4, v1

    move-object/from16 v1, p1

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;

    .line 171
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->getCancelling()Z

    move-result v14

    if-nez v14, :cond_a

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/metamoji/nt/dl/INtDownloadCanceller;->isCancelled()Z

    move-result v14

    if-ne v14, v7, :cond_6

    goto/16 :goto_6

    .line 177
    :cond_6
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    iput-object v2, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    iput-object v4, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    iput-object v11, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    iput-object v13, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v12, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->I$0:I

    iput v6, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    invoke-virtual {v0, v8, v10}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireProgress(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_7

    goto/16 :goto_7

    :cond_7
    move v14, v12

    move-object v12, v2

    move-object v2, v10

    move-object v10, v11

    move-object v11, v4

    move v4, v14

    move-object v14, v13

    move-object v13, v9

    move-object v9, v14

    move-object v14, v1

    .line 178
    :goto_2
    invoke-virtual {v9}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    iput-object v9, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v4, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->I$0:I

    iput v5, v2, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    invoke-virtual {v0, v1, v11, v12, v2}, Lcom/metamoji/nt/dl/NtFontDownloader;->downloadToFile(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1

    goto/16 :goto_7

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    invoke-virtual {v9}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;->getLic()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/metamoji/nt/dl/NtFontDownloader;->registerToFontManager(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 180
    invoke-virtual {v9}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v15, "NtFontDownloader.downloadCore: Installed - "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    goto :goto_5

    .line 182
    :cond_8
    invoke-virtual {v9}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "NtFontDownloader.downloadCore: installation error - "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 186
    :cond_9
    invoke-virtual {v9}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "NtFontDownloader.downloadCore: download error - "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :goto_4
    move v12, v8

    :goto_5
    move-object v9, v13

    move-object v1, v14

    goto/16 :goto_1

    .line 172
    :cond_a
    :goto_6
    invoke-virtual {v13}, Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "NtMazecDownloader.downloadCore: cancelled: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 173
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v12, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->I$0:I

    iput v7, v10, Lcom/metamoji/nt/dl/NtFontDownloader$downloadCore$1;->label:I

    const-string v1, "cancelled"

    invoke-virtual {v0, v1, v10}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_b

    :goto_7
    return-object v3

    :cond_b
    :goto_8
    move v12, v8

    :cond_c
    if-eqz v12, :cond_d

    .line 190
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->needToDownload()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 191
    const-string v1, "NtFontDownloader.downloadCore: he says it\'s installed, but not!!"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    :cond_d
    if-eqz v12, :cond_e

    move v1, v7

    goto :goto_9

    :cond_e
    move v1, v8

    .line 193
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NtFontDownloader.downloadCore...Done ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    if-eqz v12, :cond_f

    goto :goto_a

    :cond_f
    move v7, v8

    .line 194
    :goto_a
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private final performDownloadTaskInBackground(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/dl/NtFontDownloader$FontInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;-><init>(Lcom/metamoji/nt/dl/NtFontDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 111
    iget v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    iget-object p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    const-string p4, "NtFontDownloader.performDownloadTaskInBackground()"

    invoke-static {p4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 118
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput v7, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    const-string p1, "no need to update."

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_5

    .line 119
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 124
    :cond_8
    sget-object p4, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-virtual {p4}, Lcom/metamoji/nt/dl/NtDownloadUtil;->isNetworkConnected()Z

    move-result p4

    if-nez p4, :cond_a

    .line 128
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    const-string p1, "offline"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_5

    .line 129
    :cond_9
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 142
    :cond_a
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->downloadCore(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_b

    goto :goto_5

    :cond_b
    :goto_3
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_d

    .line 143
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    const-string p4, "download error"

    invoke-virtual {p0, p4, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_c

    goto :goto_5

    :cond_c
    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    :goto_4
    move-object v8, p3

    move-object p3, p1

    move-object p1, v8

    .line 145
    :cond_d
    move-object p4, p0

    check-cast p4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$performDownloadTaskInBackground$1;->label:I

    const/4 p1, 0x0

    invoke-static {p4, p1, v0, v7, p1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->fireComplete$default(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    :goto_5
    return-object v1

    .line 146
    :cond_e
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final registerToFontManager(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 153
    :try_start_0
    sget-object v0, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/dl/INtDLEnv;->getSKIP_SAVE_FONT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": saving font is skipped."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_0
    sget-object v0, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getFontManager()Lcom/metamoji/nt/dl/INtDownloadableFontManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/dl/INtDownloadableFontManager;->installFont(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 159
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public static final uninstall()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtFontDownloader;->Companion:Lcom/metamoji/nt/dl/NtFontDownloader$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtFontDownloader$Companion;->uninstall()V

    return-void
.end method


# virtual methods
.method public download(Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/metamoji/nt/dl/INtDownloadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;-><init>(Lcom/metamoji/nt/dl/NtFontDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    const-string p3, "NtFontDownloader.download()"

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtFontDownloader;->getError()Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->reset()V

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtFontDownloader;->getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->getShowCompletedMsg()Z

    move-result p3

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    invoke-direct {p0, p3, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto :goto_5

    .line 45
    :cond_6
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 52
    move-object v2, p3

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 57
    :cond_7
    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireBegin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, p1

    move-object p1, p3

    .line 58
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->performDownloadTaskInBackground(Ljava/util/List;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_5

    .line 59
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtFontDownloader;->completed()V

    return-object p0

    .line 53
    :cond_a
    :goto_4
    sget-object v2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->NODATA:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/nt/dl/NtFontDownloader$download$1;->label:I

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/dl/NtFontDownloader;->fireComplete(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_5
    return-object v1

    :cond_b
    return-object p0
.end method

.method public getMessageResourceId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/metamoji/nt/dl/NtFontDownloader;->messageResourceId:I

    return v0
.end method

.method protected needToDownload()Z
    .locals 4

    .line 18
    const-string v0, "NtFontDownloader.needToDownload()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getLicenses()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 22
    const-string v0, "NtFontDownloader.needToDownload: no license or not logged-in yet."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return v2

    .line 25
    :cond_0
    sget-object v1, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtDownloadUtil;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    const-string v0, "NtFontDownloader.needToDownload: offline."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return v2

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "next(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    .line 33
    sget-object v3, Lcom/metamoji/nt/dl/NtFontLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtFontLicenseManager;

    invoke-virtual {v3}, Lcom/metamoji/nt/dl/NtFontLicenseManager;->getFontManager()Lcom/metamoji/nt/dl/INtDownloadableFontManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/metamoji/nt/dl/INtDownloadableFontManager;->isFontInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    const-string v0, "NtFontDownloader.needToDownload: need to download."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method
