.class final Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NtResourceDownloaderBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->downloadToFile(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x1dd,
        0x1fd,
        0x208
    }
    m = "downloadToFile"
    n = {
        "url",
        "outFile",
        "canceller",
        "request",
        "call",
        "monitor",
        "$i$a$-use-NtResourceDownloaderBase$downloadToFile$2",
        "url",
        "outFile",
        "canceller",
        "request",
        "call",
        "monitor",
        "response",
        "contentType",
        "body",
        "recv",
        "percent",
        "percentPrev",
        "inStream",
        "outStream",
        "buf",
        "$i$a$-use-NtResourceDownloaderBase$downloadToFile$2",
        "$i$a$-use-NtResourceDownloaderBase$downloadToFile$2$1",
        "total",
        "$i$a$-use-NtResourceDownloaderBase$downloadToFile$2$1$1",
        "$i$a$-use-NtResourceDownloaderBase$downloadToFile$2$1$1$1",
        "r",
        "url",
        "outFile",
        "canceller",
        "request",
        "call",
        "monitor",
        "e",
        "$i$a$-use-NtResourceDownloaderBase$downloadToFile$2"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "I$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$12",
        "L$13",
        "L$15",
        "L$17",
        "L$18",
        "I$0",
        "I$1",
        "J$0",
        "I$2",
        "I$3",
        "I$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$6",
        "L$7",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$14:Ljava/lang/Object;

.field L$15:Ljava/lang/Object;

.field L$16:Ljava/lang/Object;

.field L$17:Ljava/lang/Object;

.field L$18:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

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
            "Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->label:I

    iget-object p1, p0, Lcom/metamoji/nt/dl/NtResourceDownloaderBase$downloadToFile$1;->this$0:Lcom/metamoji/nt/dl/NtResourceDownloaderBase;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/metamoji/nt/dl/NtResourceDownloaderBase;->downloadToFile(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/nt/dl/INtDownloadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
