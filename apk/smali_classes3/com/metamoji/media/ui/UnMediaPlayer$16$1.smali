.class Lcom/metamoji/media/ui/UnMediaPlayer$16$1;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/UnMediaPlayer$16;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 495
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$16$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 498
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 500
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$16$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$16;

    iget-object p1, p1, Lcom/metamoji/media/ui/UnMediaPlayer$16;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object p1, p1, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz p1, :cond_0

    .line 501
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$16$1;->this$1:Lcom/metamoji/media/ui/UnMediaPlayer$16;

    iget-object p1, p1, Lcom/metamoji/media/ui/UnMediaPlayer$16;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    iget-object p1, p1, Lcom/metamoji/media/ui/UnMediaPlayer;->soundUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    invoke-virtual {p1}, Lcom/metamoji/un/sound/UnSoundUnit;->reRecord()V

    :cond_0
    return-void
.end method
