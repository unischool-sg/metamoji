.class public final synthetic Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvTrimmingController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$Controls$$ExternalSyntheticLambda9;->f$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->frameList_delegate$lambda$3(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvFrameListView;

    move-result-object v0

    return-object v0
.end method
