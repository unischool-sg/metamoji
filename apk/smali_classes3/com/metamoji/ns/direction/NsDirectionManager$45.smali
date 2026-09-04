.class Lcom/metamoji/ns/direction/NsDirectionManager$45;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->followPresenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2976
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2979
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_document:Lcom/metamoji/nt/NtDocument;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2981
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPage:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v2, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingScale:F

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/metamoji/nt/NtNoteController;->followPresenterWithPage(Ljava/lang/String;Landroid/graphics/RectF;D)Z

    move-result v0

    .line 2985
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    if-eqz v0, :cond_0

    .line 2982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastFollowPresenterDate:J

    return-void

    .line 2985
    :cond_0
    iget-object v0, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$45;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_presentersViewingPositionChanged:Z

    .line 2987
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
