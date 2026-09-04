.class Lcom/metamoji/media/voice/ui/VcPlayerBar$15;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->showPlaylistDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$15;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 726
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$15;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_playlistDialog:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    return-void
.end method
