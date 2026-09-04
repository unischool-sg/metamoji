.class final Landroidx/media3/transformer/CompositionPlayer$PlayerListener;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerListener"
.end annotation


# instance fields
.field private final playerIndex:I

.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/CompositionPlayer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2009
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2010
    iput p2, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->playerIndex:I

    return-void
.end method


# virtual methods
.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 2015
    invoke-static {}, Landroidx/media3/transformer/CompositionPlayer;->access$2200()[I

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/media3/common/Player$Events;->containsAny([I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2016
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$2300(Landroidx/media3/transformer/CompositionPlayer;)V

    :cond_0
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 2027
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    .line 2028
    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$2500(Landroidx/media3/transformer/CompositionPlayer;)I

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->playerIndex:I

    if-nez p1, :cond_0

    .line 2030
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$2600(Landroidx/media3/transformer/CompositionPlayer;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    .line 2022
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$2400(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    .line 2036
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error from player "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerListener;->playerIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    invoke-static {v0, v1, p1, v2}, Landroidx/media3/transformer/CompositionPlayer;->access$2700(Landroidx/media3/transformer/CompositionPlayer;Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method
