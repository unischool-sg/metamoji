.class public final synthetic Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvVideoController;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvVideoController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda15;->f$0:Lcom/metamoji/video/AmvVideoController;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvVideoController$Controls$$ExternalSyntheticLambda15;->f$0:Lcom/metamoji/video/AmvVideoController;

    invoke-static {v0}, Lcom/metamoji/video/AmvVideoController$Controls;->backButton_delegate$lambda$3(Lcom/metamoji/video/AmvVideoController;)Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0
.end method
