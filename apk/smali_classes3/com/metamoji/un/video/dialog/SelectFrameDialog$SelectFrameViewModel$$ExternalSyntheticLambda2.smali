.class public final synthetic Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

.field public final synthetic f$1:Lcom/metamoji/video/AmvFrameExtractor;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Lcom/metamoji/video/AmvFrameExtractor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    iput-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/video/AmvFrameExtractor;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    iget-object v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$$ExternalSyntheticLambda2;->f$1:Lcom/metamoji/video/AmvFrameExtractor;

    check-cast p1, Lcom/metamoji/lib/utils/UtAsyncTask;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->extract$lambda$6$lambda$5(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Lcom/metamoji/video/AmvFrameExtractor;Lcom/metamoji/lib/utils/UtAsyncTask;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
