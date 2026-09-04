.class public final synthetic Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;

    invoke-static {v0}, Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;->mLoop$lambda$0(Lcom/metamoji/video/AmvExoVideoPlayer$SeekManager;)V

    return-void
.end method
