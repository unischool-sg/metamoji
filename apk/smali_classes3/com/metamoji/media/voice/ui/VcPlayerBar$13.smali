.class Lcom/metamoji/media/voice/ui/VcPlayerBar$13;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->playLabel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$playIndexId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;Ljava/lang/String;)V
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

    .line 473
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;->val$playIndexId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 477
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v1, v1, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 478
    const-string v2, "$id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 479
    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;->val$playIndexId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$13;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->playLabelFromRow(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
