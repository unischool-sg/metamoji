.class final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;
.super Ljava/lang/Object;
.source "VideoTrimmingDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->repair(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $repaired:Ljava/io/File;

.field final synthetic $this_apply:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;

.field final synthetic this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;",
            "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->$this_apply:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;

    iput-object p2, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    iput-object p3, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->$repaired:Ljava/io/File;

    iput-object p4, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p1, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->invoke(Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 80
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->$this_apply:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;

    invoke-virtual {p1}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "completed"

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->this$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->$repaired:Ljava/io/File;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel$repair$result$1$1$1;->$it:Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
