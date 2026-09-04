.class Lcom/metamoji/nt/NtPageController$11;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->hideTeacherPersonalLayer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$excludeLayerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V
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

    .line 3533
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$11;->this$0:Lcom/metamoji/nt/NtPageController;

    iput-object p2, p0, Lcom/metamoji/nt/NtPageController$11;->val$excludeLayerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3536
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController$11;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3537
    iget-object v3, p0, Lcom/metamoji/nt/NtPageController$11;->this$0:Lcom/metamoji/nt/NtPageController;

    invoke-virtual {v3, v2}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    .line 3538
    const-string/jumbo v4, "system:teacher_personal"

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/metamoji/nt/NtPageController$11;->val$excludeLayerId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3539
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3540
    :cond_0
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
