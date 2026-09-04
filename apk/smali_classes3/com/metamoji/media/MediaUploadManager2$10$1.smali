.class Lcom/metamoji/media/MediaUploadManager2$10$1;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/MediaUploadManager2$10;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$10$1;->this$1:Lcom/metamoji/media/MediaUploadManager2$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1175
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1181
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1187
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1191
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/nt/NtDocument;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1195
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getRecordingsController()Lcom/metamoji/media/voice/controller/VcRecordingsController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1197
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsController;->syncRecordingsFromMediaServer()V

    :cond_4
    :goto_0
    return-void
.end method
