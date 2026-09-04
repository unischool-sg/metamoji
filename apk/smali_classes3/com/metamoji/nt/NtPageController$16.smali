.class Lcom/metamoji/nt/NtPageController$16;
.super Ljava/lang/Object;
.source "NtPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtPageController;->showPersonalLayer(Lcom/metamoji/nt/NtLayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtPageController;

.field final synthetic val$layer:Lcom/metamoji/nt/NtLayerController;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V
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

    .line 4042
    iput-object p1, p0, Lcom/metamoji/nt/NtPageController$16;->this$0:Lcom/metamoji/nt/NtPageController;

    iput-object p2, p0, Lcom/metamoji/nt/NtPageController$16;->val$layer:Lcom/metamoji/nt/NtLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 4045
    iget-object v0, p0, Lcom/metamoji/nt/NtPageController$16;->val$layer:Lcom/metamoji/nt/NtLayerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->setVisible(Z)V

    return-void
.end method
