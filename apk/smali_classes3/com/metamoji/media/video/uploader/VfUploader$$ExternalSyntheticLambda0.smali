.class public final synthetic Lcom/metamoji/media/video/uploader/VfUploader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/media/video/uploader/VfUploader;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/media/video/uploader/VfUploader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/uploader/VfUploader;

    return-void
.end method


# virtual methods
.method public final onIdle()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$$ExternalSyntheticLambda0;->f$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->mOnIdleHandler$lambda$0(Lcom/metamoji/media/video/uploader/VfUploader;)V

    return-void
.end method
