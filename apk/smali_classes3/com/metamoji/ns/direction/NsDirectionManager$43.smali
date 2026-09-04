.class Lcom/metamoji/ns/direction/NsDirectionManager$43;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->postDirectionAnalysis(ILjava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$velocity:D


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;D)V
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

    .line 2660
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$43;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-wide p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$43;->val$velocity:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2663
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 2665
    iget-wide v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$43;->val$velocity:D

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/noteanytime/EditorActivity;->setDirectionVelocity(D)V

    :cond_0
    return-void
.end method
