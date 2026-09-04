.class Lcom/metamoji/ui/ImportActivity$13;
.super Ljava/lang/Object;
.source "ImportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/ImportActivity;->importAudio(Ljava/io/File;Lcom/metamoji/nt/INtProgressUI;Ljava/util/Map;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/ImportActivity;

.field final synthetic val$cacheFilename:Ljava/lang/String;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$documentTitle:Ljava/lang/String;

.field final synthetic val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

.field final synthetic val$ticket:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/ImportActivity;Ljava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1170
    iput-object p1, p0, Lcom/metamoji/ui/ImportActivity$13;->this$0:Lcom/metamoji/ui/ImportActivity;

    iput-object p2, p0, Lcom/metamoji/ui/ImportActivity$13;->val$cacheFilename:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/ImportActivity$13;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iput-object p4, p0, Lcom/metamoji/ui/ImportActivity$13;->val$ticket:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/ui/ImportActivity$13;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/ui/ImportActivity$13;->val$documentTitle:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/ui/ImportActivity$13;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1173
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1174
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/ui/ImportActivity$13;->val$cacheFilename:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/metamoji/ui/ImportActivity$13;->val$recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    iget-object v3, p0, Lcom/metamoji/ui/ImportActivity$13;->val$ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/ui/ImportActivity$13;->val$title:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ui/ImportActivity$13;->val$documentTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/ui/ImportActivity$13;->val$docId:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->registRecordingToUploadManager(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
