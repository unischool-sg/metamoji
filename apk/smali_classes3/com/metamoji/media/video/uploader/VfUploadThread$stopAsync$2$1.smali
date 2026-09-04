.class final Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;
.super Ljava/lang/Object;
.source "VfUploadThread.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/uploader/VfUploadThread;->stopAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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


# instance fields
.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/media/video/uploader/VfUploadThread;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/uploader/VfUploadThread;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/uploader/VfUploadThread;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;->this$0:Lcom/metamoji/media/video/uploader/VfUploadThread;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;->this$0:Lcom/metamoji/media/video/uploader/VfUploadThread;

    invoke-static {v0}, Lcom/metamoji/media/video/uploader/VfUploadThread;->access$getStopWatcher$p(Lcom/metamoji/media/video/uploader/VfUploadThread;)Lcom/metamoji/cm/ResetableEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    .line 47
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploadThread$stopAsync$2$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
