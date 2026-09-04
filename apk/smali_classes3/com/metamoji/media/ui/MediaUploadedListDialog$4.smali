.class Lcom/metamoji/media/ui/MediaUploadedListDialog$4;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 560
    const-string p1, "medialist : start"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog;->_delayDownload:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 566
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    if-nez p1, :cond_0

    .line 562
    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_audio(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 563
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    sget-object v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->PLAYING:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    invoke-static {p1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fput_audioState(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;)V

    .line 564
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$4;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$msetPlaying(Lcom/metamoji/media/ui/MediaUploadedListDialog;Z)V

    return-void

    .line 566
    :cond_0
    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mplayWithDownload(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    return-void
.end method
