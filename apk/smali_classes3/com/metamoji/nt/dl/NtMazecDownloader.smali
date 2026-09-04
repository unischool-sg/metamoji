.class public final Lcom/metamoji/nt/dl/NtMazecDownloader;
.super Lcom/metamoji/nt/dl/NtResourceDownloaderBase;
.source "NtMazecDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 \"2\u00020\u0001:\u0001\"B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u000e\u001a\u00020\u000fH\u0014J \u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015JD\u0010\u0016\u001a\u00020\u00072\"\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190\u0018j\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019`\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0012H\u0002JD\u0010\u001e\u001a\u00020\u000f2\"\u0010\u0017\u001a\u001e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190\u0018j\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019`\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082@\u00a2\u0006\u0002\u0010\u001bJ6\u0010\u001f\u001a\"\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018j\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0018\u0001`\u001a2\u0006\u0010 \u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010!R\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lcom/metamoji/nt/dl/NtMazecDownloader;",
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
        "performDownloadTaskInBackground",
        "downloadDic",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lkotlin/collections/LinkedHashMap;",
        "(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerToMazec",
        "file",
        "downloadCore",
        "checkUpdateAsync",
        "offlineMsg",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

.field private static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "download_dic"


# instance fields
.field private final messageResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

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

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;-><init>(Lcom/metamoji/nt/dl/NtDownloaderOptions;Lkotlin/jvm/functions/Function2;)V

    .line 23
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DOWNLOADING_MAZEC_DIC:I

    iput p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader;->messageResourceId:I

    return-void
.end method

.method public static final synthetic access$checkUpdateAsync(Lcom/metamoji/nt/dl/NtMazecDownloader;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader;->checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadCore(Lcom/metamoji/nt/dl/NtMazecDownloader;Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/dl/NtMazecDownloader;->downloadCore(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$performDownloadTaskInBackground(Lcom/metamoji/nt/dl/NtMazecDownloader;Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/nt/dl/NtMazecDownloader;->performDownloadTaskInBackground(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;-><init>(Lcom/metamoji/nt/dl/NtMazecDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 202
    iget v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->I$0:I

    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    iget p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->I$0:I

    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_2
    iget p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->I$0:I

    iget-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iget-boolean v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    iget-object v6, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_3
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iget-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object v6, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashMap;

    iget-object v7, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v9, v2

    move v2, p1

    move p1, v9

    goto/16 :goto_4

    :pswitch_4
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 210
    sget-object p2, Lcom/metamoji/nt/dl/NtMazecLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtMazecLicenseManager;

    invoke-virtual {p2}, Lcom/metamoji/nt/dl/NtMazecLicenseManager;->getLicenses()Ljava/lang/Iterable;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 213
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 214
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iput v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "no lang"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto/16 :goto_7

    :cond_1
    :goto_1
    return-object v5

    .line 218
    :cond_2
    sget-object v2, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-virtual {v2}, Lcom/metamoji/nt/dl/NtDownloadUtil;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 220
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    const/4 p1, 0x2

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "offline"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto/16 :goto_7

    :cond_3
    :goto_2
    return-object v5

    .line 226
    :cond_4
    sget-object v2, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-static {v2, p2}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$getInstalledDicMap(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/util/List;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->getNeedDownloadOnly()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v2, :cond_6

    .line 228
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iput v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "no update target"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_3
    return-object v5

    .line 233
    :cond_6
    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    const/4 v7, 0x4

    iput v7, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->updateSysInfoSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_7

    goto/16 :goto_7

    :cond_7
    move-object v9, v7

    move-object v7, p2

    move-object p2, v9

    :goto_4
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eq p2, v4, :cond_b

    if-ne p2, v3, :cond_9

    if-eqz p1, :cond_9

    .line 236
    sget-object v3, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    xor-int/lit8 v4, v2, 0x1

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iput p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->I$0:I

    const/4 v8, 0x5

    iput v8, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    invoke-static {v3, v4, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$showOfflineMsg(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    goto :goto_7

    :cond_8
    move v3, p1

    move p1, p2

    move-object v4, v6

    move-object v6, v7

    :goto_5
    move p2, p1

    move p1, v3

    move-object v7, v6

    move-object v6, v4

    .line 238
    :cond_9
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iput p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->I$0:I

    const/4 p1, 0x6

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const-string p1, "cannot update sysInfo."

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    return-object v5

    .line 243
    :cond_b
    const-string v3, "mazec.dic"

    invoke-static {v3}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetDictionaryData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_d

    .line 246
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->L$2:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$0:Z

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->Z$1:Z

    iput p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->I$0:I

    const/4 p1, 0x7

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const-string/jumbo p1, "sysInfo error: no mazec dic"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_7
    return-object v1

    :cond_c
    :goto_8
    return-object v5

    .line 251
    :cond_d
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 252
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-static {v2, v0, v3, v6}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$getUrlForLangIfNeed(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final downloadCore(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    instance-of v2, v1, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;

    iget v3, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;-><init>(Lcom/metamoji/nt/dl/NtMazecDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 162
    iget v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v9, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iget-object v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    iget-object v11, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v12, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    iget-object v13, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v13, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iget-object v10, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    iget-object v13, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v14, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/io/File;

    iget-object v15, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v16, v10

    move v10, v4

    move-object v4, v11

    move-object/from16 v11, v16

    goto/16 :goto_3

    :cond_4
    iget v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iget-object v10, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v11, Ljava/util/Iterator;

    iget-object v12, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    iget-object v13, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v14, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/io/File;

    iget-object v15, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget v3, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v3, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v2, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_6
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 163
    const-string v1, "NtMazecDownloader.downloadCore()"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/io/File;

    const-string v4, "download_dic"

    move-object/from16 v10, p2

    invoke-direct {v1, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/metamoji/nt/dl/NtMazecDownloader;->setTotalCount(I)V

    .line 166
    invoke-virtual {v0, v8}, Lcom/metamoji/nt/dl/NtMazecDownloader;->setCurrentIndex(I)V

    .line 168
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v12, v1

    move-object v11, v4

    move v13, v9

    move-object/from16 v1, p1

    move-object v4, v2

    move-object/from16 v2, p3

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getCancelling()Z

    move-result v15

    if-nez v15, :cond_c

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/metamoji/nt/dl/INtDownloadCanceller;->isCancelled()Z

    move-result v15

    if-ne v15, v9, :cond_7

    goto/16 :goto_7

    .line 174
    :cond_7
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    iput-object v15, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    iput-object v12, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    iput-object v11, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    iput-object v14, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v13, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iput v7, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    invoke-virtual {v0, v8, v4}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireProgress(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_8

    goto/16 :goto_8

    :cond_8
    move v15, v13

    move-object v13, v2

    move-object v2, v4

    move v4, v15

    move-object v15, v14

    move-object v14, v10

    move-object v10, v15

    move-object v15, v1

    .line 175
    :goto_2
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    iput-object v10, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iput v6, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    invoke-virtual {v0, v10, v12, v13, v2}, Lcom/metamoji/nt/dl/NtMazecDownloader;->downloadToFile(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    goto/16 :goto_8

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    invoke-direct {v0, v12}, Lcom/metamoji/nt/dl/NtMazecDownloader;->registerToMazec(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "NtMazecDownloader.downloadCore: installed - "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    move-object v11, v4

    move-object v1, v15

    move-object v4, v2

    move-object v2, v13

    move v13, v10

    move-object v10, v14

    goto/16 :goto_6

    .line 180
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "NtMazecDownloader.downloadCore: installation error - "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 181
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v10, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iput v5, v2, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    const-string v1, "registerToMazec: error."

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    goto/16 :goto_8

    :cond_a
    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    :goto_4
    move-object v1, v4

    move-object v4, v2

    move-object v2, v11

    move-object v11, v1

    move-object v1, v12

    move-object v12, v10

    move-object v10, v1

    move-object v1, v13

    :goto_5
    move v13, v8

    goto :goto_6

    .line 185
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "NtMazecDownloader.downloadCore: download error - "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    move-object v11, v4

    move-object v10, v14

    move-object v1, v15

    move-object v4, v2

    move-object v2, v13

    goto :goto_5

    .line 188
    :goto_6
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getCurrentIndex()I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v0, v6}, Lcom/metamoji/nt/dl/NtMazecDownloader;->setCurrentIndex(I)V

    const/4 v6, 0x3

    goto/16 :goto_1

    .line 170
    :cond_c
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NtMazecDownloader.downloadCore: cancelled: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 171
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$0:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$4:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->L$5:Ljava/lang/Object;

    iput v13, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->I$0:I

    iput v9, v4, Lcom/metamoji/nt/dl/NtMazecDownloader$downloadCore$1;->label:I

    const-string v1, "cancelled"

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    :goto_8
    return-object v3

    .line 172
    :cond_d
    :goto_9
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_e
    if-eqz v13, :cond_f

    .line 190
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->needToDownload()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 191
    const-string v1, "NtFontDownloader.downloadCore: he says it\'s installed, but not!!"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    :cond_f
    if-eqz v13, :cond_10

    move v1, v9

    goto :goto_a

    :cond_10
    move v1, v8

    .line 193
    :goto_a
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

    if-eqz v13, :cond_11

    move v8, v9

    .line 194
    :cond_11
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private final performDownloadTaskInBackground(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    instance-of v0, p4, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;-><init>(Lcom/metamoji/nt/dl/NtMazecDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    const-string v3, "getString(...)"

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/io/File;

    iget-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_3
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/io/File;

    iget-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move v2, p1

    move-object p1, v5

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto/16 :goto_5

    :pswitch_4
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    iget-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/io/File;

    iget-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    move v2, p1

    move-object p1, v5

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto/16 :goto_3

    :pswitch_6
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    iget-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    check-cast p3, Ljava/util/LinkedHashMap;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, p3

    move-object p3, p1

    move-object p1, v5

    goto :goto_1

    :pswitch_8
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 107
    const-string p4, "NtMazecDownloader.performDownloadTaskInBackground()"

    invoke-static {p4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object p4

    invoke-virtual {p4}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->getShowNoUpdateMsg()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 111
    sget-object p4, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-static {p4, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$showNoUpdateMsg(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_1

    goto/16 :goto_9

    .line 113
    :cond_1
    :goto_1
    sget-object p4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {p4}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v2, Lcom/metamoji/noteanytime/R$string;->dic_noupdate_msg:I

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-virtual {p0, p4, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto/16 :goto_9

    .line 114
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 117
    :cond_3
    sget-object p4, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-static {p4, p1}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$isUpdate(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/util/LinkedHashMap;)Z

    move-result v2

    .line 120
    sget-object v4, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-virtual {v4}, Lcom/metamoji/nt/dl/NtDownloadUtil;->isNetworkConnected()Z

    move-result v4

    if-nez v4, :cond_6

    .line 121
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->getShowCompletedMsg()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    const/4 v4, 0x3

    iput v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-static {p4, v2, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$showOfflineMsg(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto/16 :goto_9

    .line 124
    :cond_4
    :goto_3
    sget-object p4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {p4}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v4, Lcom/metamoji/noteanytime/R$string;->purchase_dialog_msg_offline:I

    invoke-virtual {p4, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    const/4 p1, 0x4

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-virtual {p0, p4, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_9

    .line 125
    :cond_5
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->getConfirmBeforeDownload()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    const/4 v3, 0x5

    iput v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-static {p4, v2, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$confirmToDownload(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_7

    goto/16 :goto_9

    :cond_7
    :goto_5
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_9

    .line 131
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    const/4 p1, 0x6

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    const-string p1, "cancelled"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireError(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_9

    .line 132
    :cond_8
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 137
    :cond_9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    iput-object p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    const/4 p4, 0x7

    iput p4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->downloadCore(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_a

    goto :goto_9

    :cond_a
    move v5, v2

    move-object v2, p1

    move p1, v5

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    :goto_7
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_b

    sget-object p4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->DOWNLOADED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    goto :goto_8

    :cond_b
    sget-object p4, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->CANCELLED:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    .line 138
    :goto_8
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$1:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$2:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->L$3:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->Z$0:Z

    const/16 p1, 0x8

    iput p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$performDownloadTaskInBackground$1;->label:I

    invoke-virtual {p0, p4, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireComplete(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    :goto_9
    return-object v1

    .line 139
    :cond_c
    :goto_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final registerToMazec(Ljava/io/File;)Z
    .locals 3

    const/4 v0, 0x0

    .line 146
    :try_start_0
    sget-object v1, Lcom/metamoji/nt/dl/NtDLEnv;->INSTANCE:Lcom/metamoji/nt/dl/NtDLEnv;

    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtDLEnv;->getE()Lcom/metamoji/nt/dl/INtDLEnv;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/nt/dl/INtDLEnv;->getSKIP_SAVE_MAZEC()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": installing mazec-dic is skipped."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return v2

    .line 150
    :cond_0
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;

    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Companion;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/LangResouceManager;->installLanguagePackage(Ljava/io/File;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    return v2

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 152
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static final uninstall()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->uninstall()V

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

    instance-of v0, p3, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;

    iget v1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;-><init>(Lcom/metamoji/nt/dl/NtMazecDownloader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object v2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedHashMap;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/metamoji/nt/dl/INtDownloadCanceller;

    iget-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    const-string p3, "NtMazecDownloader.download()"

    invoke-static {p3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getError()Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Error;->reset()V

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->getOptions()Lcom/metamoji/nt/dl/NtDownloaderOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/nt/dl/NtDownloaderOptions;->getShowCompletedMsg()Z

    move-result p3

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    invoke-direct {p0, p3, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto :goto_5

    .line 83
    :cond_6
    :goto_1
    check-cast p3, Ljava/util/LinkedHashMap;

    .line 89
    move-object v2, p3

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 94
    :cond_7
    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireBegin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, p1

    move-object p1, p3

    .line 95
    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    invoke-direct {p0, p1, v2, p2, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->performDownloadTaskInBackground(Ljava/util/LinkedHashMap;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_5

    .line 96
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->completed()V

    return-object p0

    .line 90
    :cond_a
    :goto_4
    sget-object v2, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;->NODATA:Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/nt/dl/NtMazecDownloader$download$1;->label:I

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->fireComplete(Lcom/metamoji/nt/dl/NtResourceDownloaderBase$Status;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_5
    return-object v1

    :cond_b
    return-object p0
.end method

.method public getMessageResourceId()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/metamoji/nt/dl/NtMazecDownloader;->messageResourceId:I

    return v0
.end method

.method protected needToDownload()Z
    .locals 7

    .line 31
    const-string v0, "NtMazecDownloader.needToDownload()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/metamoji/nt/dl/NtMazecLicenseManager;->INSTANCE:Lcom/metamoji/nt/dl/NtMazecLicenseManager;

    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtMazecLicenseManager;->getLicenses()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    const-string v0, "NtMazecDownloader.needToDownload: no license or not logged-in yet."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return v2

    .line 38
    :cond_0
    sget-object v1, Lcom/metamoji/nt/dl/NtDownloadUtil;->INSTANCE:Lcom/metamoji/nt/dl/NtDownloadUtil;

    invoke-virtual {v1}, Lcom/metamoji/nt/dl/NtDownloadUtil;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    const-string v0, "NtMazecDownloader.needToDownload: offline."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return v2

    .line 44
    :cond_1
    sget-object v1, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-static {v1, v0}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$getInstalledDicMap(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/util/List;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 46
    const-string v0, "NtMazecDownloader.needToDownload: need to download."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return v4

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/dl/NtMazecDownloader;->updateSysInfoAsync()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    .line 56
    const-string v1, "mazec.dic"

    invoke-static {v1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetDictionaryData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_3

    return v2

    .line 59
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    sget-object v6, Lcom/metamoji/nt/dl/NtMazecDownloader;->Companion:Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;

    invoke-static {v6, v5, v1, v3}, Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;->access$getUrlForLangIfNeed(Lcom/metamoji/nt/dl/NtMazecDownloader$Companion;Ljava/lang/String;Ljava/util/Map;Ljava/util/LinkedHashMap;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 61
    const-string v0, "NtMazecDownloader.needToDownload: need to update."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    return v4

    .line 65
    :cond_5
    const-string v0, "NtMazecDownloader.needToDownload: no need to download."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    :cond_6
    return v2

    :cond_7
    return v4
.end method
