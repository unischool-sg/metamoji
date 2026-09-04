.class final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "VideoTrimmingDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repair(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.un.video.dialog.VideoTrimmingDialog$VideoTrimmingDialogViewModel"
    f = "VideoTrimmingDialog.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x4c,
        0x5c
    }
    m = "repair"
    n = {
        "repaired",
        "repaired",
        "result"
    }
    s = {
        "L$0",
        "L$0",
        "Z$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->label:I

    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repair(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
