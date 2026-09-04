.class Lcom/metamoji/media/voice/controller/VcRecordingsManager$7;
.super Ljava/lang/Object;
.source "VcRecordingsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/controller/VcRecordingsManager;->uploadTitlesForNoteTitle(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field final synthetic val$uploadManager:Lcom/metamoji/media/MediaUploadManager2;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/controller/VcRecordingsManager;Lcom/metamoji/media/MediaUploadManager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2036
    iput-object p1, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$7;->this$0:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iput-object p2, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$7;->val$uploadManager:Lcom/metamoji/media/MediaUploadManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2039
    iget-object v0, p0, Lcom/metamoji/media/voice/controller/VcRecordingsManager$7;->val$uploadManager:Lcom/metamoji/media/MediaUploadManager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/MediaUploadManager2;->uploadTitles(Z)Z

    return-void
.end method
