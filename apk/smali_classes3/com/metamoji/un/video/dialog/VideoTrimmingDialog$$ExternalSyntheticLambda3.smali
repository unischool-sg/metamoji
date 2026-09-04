.class public final synthetic Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/dialog/CircularProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/dialog/CircularProgressBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/media/video/dialog/CircularProgressBar;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda3;->f$0:Lcom/metamoji/media/video/dialog/CircularProgressBar;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->createBodyView$lambda$5$lambda$4(Lcom/metamoji/media/video/dialog/CircularProgressBar;Ljava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
