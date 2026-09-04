.class Lcom/metamoji/media/voice/ui/VcPlaylist$2;
.super Ljava/lang/Object;
.source "VcPlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlaylist;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlaylist;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlaylist;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist$2;->this$0:Lcom/metamoji/media/voice/ui/VcPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 111
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlaylist$2;->this$0:Lcom/metamoji/media/voice/ui/VcPlaylist;

    iget-object p1, p1, Lcom/metamoji/media/voice/ui/VcPlaylist;->m_playerBar:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->handleEditTrackButtonTouchUp()V

    return-void
.end method
