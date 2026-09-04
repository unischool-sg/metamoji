.class public final synthetic Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/metamoji/video/transcoder/IAmvTranscoder;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;ZLcom/metamoji/video/transcoder/IAmvTranscoder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    iput-boolean p2, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;->f$1:Z

    iput-object p3, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;->f$2:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;

    iget-boolean v1, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;->f$1:Z

    iget-object v2, p0, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$$ExternalSyntheticLambda2;->f$2:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    invoke-static {v0, v1, v2}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;->createTranscoder$lambda$4$lambda$3$lambda$2(Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel;ZLcom/metamoji/video/transcoder/IAmvTranscoder;)V

    return-void
.end method
