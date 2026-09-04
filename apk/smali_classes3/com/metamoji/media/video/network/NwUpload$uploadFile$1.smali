.class final Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NwUpload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/network/NwUpload;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.media.video.network.NwUpload"
    f = "NwUpload.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x63
    }
    m = "uploadFile"
    n = {
        "serverId",
        "urlString",
        "file",
        "type",
        "userInfo",
        "canceller",
        "progressCallback",
        "client",
        "requestBody",
        "request",
        "call"
    }
    s = {
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
        "L$10"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

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

.field final synthetic this$0:Lcom/metamoji/media/video/network/NwUpload;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/network/NwUpload;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/network/NwUpload;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->this$0:Lcom/metamoji/media/video/network/NwUpload;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iput-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->label:I

    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$uploadFile$1;->this$0:Lcom/metamoji/media/video/network/NwUpload;

    const/4 v7, 0x0

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/metamoji/media/video/network/NwUpload;->access$uploadFile(Lcom/metamoji/media/video/network/NwUpload;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Lcom/metamoji/media/video/VfCabinetUserInfo;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
