.class Lcom/metamoji/media/voice/ui/VcPlayerBar$23;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->didRemoveTicket(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

.field final synthetic val$delTicket:Ljava/lang/String;


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

    .line 1228
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iput-object p2, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->val$delTicket:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1232
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 1235
    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v4, v4, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v4, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 1236
    const-string v5, "$ticket"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1237
    iget-object v6, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->val$delTicket:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v1, :cond_0

    .line 1238
    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v3, v3, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v3, v4}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->remove(Ljava/lang/Object;)V

    move v3, v1

    goto :goto_1

    :cond_0
    if-ne v3, v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1244
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_trackList:Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar$TrackListAdapter;->notifyDataSetChanged()V

    .line 1245
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_checkedPosition(Lcom/metamoji/media/voice/ui/VcPlayerBar;I)V

    .line 1246
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    if-eqz v0, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    iget-object v0, v0, Lcom/metamoji/media/voice/ui/VcPlayerBar;->m_listener:Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;

    invoke-interface {v0, v2}, Lcom/metamoji/media/voice/ui/VcPlayerBar$EventListener;->onChangedChecked(Z)V

    .line 1250
    :cond_3
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateTotalDuration()V

    .line 1251
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->didChangeCurrentTrack(Ljava/lang/Number;)V

    .line 1254
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->recordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1256
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$23;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-virtual {v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->updateStatusExistRecords()V

    :cond_4
    return-void
.end method
