.class final Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NtResourceDownloaderBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->updateSysInfoSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.nt.dl.NtResourceDownloaderBase"
    f = "NtResourceDownloaderBase.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x225,
        0x22c,
        0x22d
    }
    m = "updateSysInfoSync"
    n = {
        "counter",
        "interval",
        "cancelEnabled",
        "counter",
        "interval",
        "cancelEnabled",
        "counter",
        "interval",
        "cancelEnabled"
    }
    s = {
        "I$0",
        "J$0",
        "I$1",
        "I$0",
        "J$0",
        "I$1",
        "I$0",
        "J$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field J$0:J

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/dl/NtResourceDownloaderBase;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->label:I

    iget-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$updateSysInfoSync$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->updateSysInfoSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
