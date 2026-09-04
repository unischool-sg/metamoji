.class final Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "VfCloud.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/network/VfCloud$Companion;->uploadMovie(ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.media.video.network.VfCloud$Companion"
    f = "VfCloud.kt"
    i = {
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
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
        0x4,
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
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5,
        0x5
    }
    l = {
        0x107,
        0x113,
        0x119,
        0x11e,
        0x134,
        0x13b
    }
    m = "uploadMovie"
    n = {
        "rec",
        "uploader",
        "canceller",
        "db",
        "force",
        "rec",
        "uploader",
        "canceller",
        "db",
        "userInfo",
        "serverId",
        "force",
        "rec",
        "uploader",
        "canceller",
        "db",
        "userInfo",
        "serverId",
        "force",
        "rec",
        "uploader",
        "canceller",
        "db",
        "userInfo",
        "serverId",
        "force",
        "rec",
        "uploader",
        "canceller",
        "db",
        "userInfo",
        "serverId",
        "file",
        "movieInfo",
        "funcy",
        "nwUpload",
        "extra",
        "force",
        "rec",
        "uploader",
        "canceller",
        "db",
        "userInfo",
        "serverId",
        "file",
        "movieInfo",
        "funcy",
        "nwUpload",
        "extra",
        "result",
        "force"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "Z$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "Z$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/media/video/network/VfCloud$Companion;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/network/VfCloud$Companion;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/network/VfCloud$Companion;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;->this$0:Lcom/metamoji/media/video/network/VfCloud$Companion;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;->label:I

    iget-object v0, p0, Lcom/metamoji/media/video/network/VfCloud$Companion$uploadMovie$1;->this$0:Lcom/metamoji/media/video/network/VfCloud$Companion;

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/media/video/network/VfCloud$Companion;->uploadMovie(ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
