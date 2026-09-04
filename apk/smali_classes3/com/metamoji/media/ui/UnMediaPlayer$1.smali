.class Lcom/metamoji/media/ui/UnMediaPlayer$1;
.super Ljava/lang/Object;
.source "UnMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayer;->prepare(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayer;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayer$1;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/metamoji/media/ui/UnMediaPlayer$1;->this$0:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->makeOverlayView()Lcom/metamoji/media/ui/UnMediaOverlayView;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/media/ui/UnMediaPlayer;->overlayView_:Lcom/metamoji/media/ui/UnMediaOverlayView;

    return-void
.end method
