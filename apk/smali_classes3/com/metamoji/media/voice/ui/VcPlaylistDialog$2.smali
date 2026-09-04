.class Lcom/metamoji/media/voice/ui/VcPlaylistDialog$2;
.super Ljava/lang/Object;
.source "VcPlaylistDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlaylistDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog$2;->this$0:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylistDialog$2;->this$0:Lcom/metamoji/media/voice/ui/VcPlaylistDialog;

    iget-object p1, p1, Lcom/metamoji/media/voice/ui/VcPlaylistDialog;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleDeleteTrackButtonTouchUp()V

    return-void
.end method
