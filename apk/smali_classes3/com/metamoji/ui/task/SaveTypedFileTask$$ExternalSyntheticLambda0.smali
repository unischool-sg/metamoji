.class public final synthetic Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/ui/task/SaveTypedFileTask;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/task/SaveTypedFileTask;

    iput-object p2, p0, Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/ui/task/SaveTypedFileTask;

    iget-object v1, p0, Lcom/metamoji/ui/task/SaveTypedFileTask$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {v0, v1, p1}, Lcom/metamoji/ui/task/SaveTypedFileTask;->showMessage$lambda$0(Lcom/metamoji/ui/task/SaveTypedFileTask;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    return-object p1
.end method
