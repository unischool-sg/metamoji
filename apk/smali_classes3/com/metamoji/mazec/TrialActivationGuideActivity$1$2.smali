.class Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;
.super Ljava/lang/Object;
.source "TrialActivationGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/TrialActivationGuideActivity$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v0, v0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    invoke-static {v0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mactivate(Lcom/metamoji/mazec/TrialActivationGuideActivity;)I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object v1, v1, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2$1;-><init>(Lcom/metamoji/mazec/TrialActivationGuideActivity$1$2;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
