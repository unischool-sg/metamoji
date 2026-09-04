.class Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3$1;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskForLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3$1;->this$1:Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;

    iget-object v0, v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForLogin$3;->val$editor:Lcom/metamoji/nt/INtEditor;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Lcom/metamoji/nt/INtEditor;->errorInLoadingNote(Ljava/lang/Throwable;I)V

    return-void
.end method
