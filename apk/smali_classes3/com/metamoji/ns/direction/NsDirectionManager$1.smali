.class Lcom/metamoji/ns/direction/NsDirectionManager$1;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;-><init>(Lcom/metamoji/nt/NtDocument;)V
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

    .line 218
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$1;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 221
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtFeature;->DirectionVelocity:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setDirectionVelocityEnabled(Z)V

    :cond_0
    return-void
.end method
