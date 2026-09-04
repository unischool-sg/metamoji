.class final Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NtMazecDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/dl/NtMazecDownloader;->checkUpdateAsync(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.nt.dl.NtMazecDownloader"
    f = "NtMazecDownloader.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6,
        0x6
    }
    l = {
        0xd6,
        0xdc,
        0xe4,
        0xe9,
        0xec,
        0xee,
        0xf6
    }
    m = "checkUpdateAsync"
    n = {
        "langArray",
        "offlineMsg",
        "langArray",
        "offlineMsg",
        "langArray",
        "installedDicMap",
        "offlineMsg",
        "isNeedDownload",
        "langArray",
        "installedDicMap",
        "offlineMsg",
        "isNeedDownload",
        "langArray",
        "installedDicMap",
        "offlineMsg",
        "isNeedDownload",
        "sysInfoState",
        "langArray",
        "installedDicMap",
        "offlineMsg",
        "isNeedDownload",
        "sysInfoState",
        "langArray",
        "installedDicMap",
        "dicDic",
        "offlineMsg",
        "isNeedDownload",
        "sysInfoState"
    }
    s = {
        "L$0",
        "Z$0",
        "L$0",
        "Z$0",
        "L$0",
        "L$1",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "Z$0",
        "Z$1",
        "I$0",
        "L$0",
        "L$1",
        "Z$0",
        "Z$1",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "Z$0",
        "Z$1",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field Z$0:Z

.field Z$1:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/nt/dl/NtMazecDownloader;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/dl/NtMazecDownloader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtMazecDownloader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->this$0:Lcom/metamoji/nt/dl/NtMazecDownloader;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->label:I

    iget-object p1, p0, Lcom/metamoji/nt/dl/NtMazecDownloader$checkUpdateAsync$1;->this$0:Lcom/metamoji/nt/dl/NtMazecDownloader;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, v1}, Lcom/metamoji/nt/dl/NtMazecDownloader;->access$checkUpdateAsync(Lcom/metamoji/nt/dl/NtMazecDownloader;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
