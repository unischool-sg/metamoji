.class public final synthetic Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvFrameListView;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvFrameListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/video/AmvFrameListView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameListView$Controls$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/video/AmvFrameListView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameListView$Controls;->knob_delegate$lambda$1(Lcom/metamoji/video/AmvFrameListView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
