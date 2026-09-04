.class public final synthetic Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    check-cast p1, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;

    invoke-static {v0, p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->createBodyView$lambda$5$lambda$1(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
