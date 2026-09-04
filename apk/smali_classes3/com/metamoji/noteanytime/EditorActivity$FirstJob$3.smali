.class Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/EditorActivity$FirstJob;->noteLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

.field final synthetic val$jobs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/EditorActivity$FirstJob;Ljava/util/ArrayList;)V
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

    .line 8191
    iput-object p1, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;->this$0:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    iput-object p2, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;->val$jobs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 8194
    iget-object v0, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;->this$0:Lcom/metamoji/noteanytime/EditorActivity$FirstJob;

    monitor-enter v0

    .line 8195
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;->val$jobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 8196
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 8198
    :cond_0
    iget-object v1, p0, Lcom/metamoji/noteanytime/EditorActivity$FirstJob$3;->val$jobs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
