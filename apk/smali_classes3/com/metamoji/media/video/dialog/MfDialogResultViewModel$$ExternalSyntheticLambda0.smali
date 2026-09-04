.class public final synthetic Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;->f$1:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->registerObserver$lambda$0(Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    return-void
.end method
