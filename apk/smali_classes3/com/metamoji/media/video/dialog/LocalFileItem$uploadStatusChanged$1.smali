.class final Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/LocalFileItem;->uploadStatusChanged(Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.media.video.dialog.LocalFileItem$uploadStatusChanged$1"
    f = "MfFileListView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $progress:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

.field final synthetic $status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/dialog/LocalFileItem;",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$progress:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$progress:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;-><init>(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 841
    iget v0, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 842
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    invoke-static {p1, v0}, Lcom/metamoji/media/video/dialog/LocalFileItem;->access$setUploadStatus$p(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;)V

    .line 843
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$progress:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getPercent()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/metamoji/media/video/dialog/LocalFileItem;->access$setUploadProgress$p(Lcom/metamoji/media/video/dialog/LocalFileItem;I)V

    .line 844
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/LocalFileItem;->access$updateProgressIfNeeds(Lcom/metamoji/media/video/dialog/LocalFileItem;)V

    .line 845
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->$status:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    sget-object v0, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->DONE:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne p1, v0, :cond_2

    .line 846
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getOnUploaded()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    :cond_1
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/LocalFileItem$uploadStatusChanged$1;->this$0:Lcom/metamoji/media/video/dialog/LocalFileItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/LocalFileItem;->setOnUploaded(Lkotlin/jvm/functions/Function1;)V

    .line 849
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 841
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
