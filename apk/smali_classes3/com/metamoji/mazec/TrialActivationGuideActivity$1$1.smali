.class Lcom/metamoji/mazec/TrialActivationGuideActivity$1$1;
.super Ljava/lang/Object;
.source "TrialActivationGuideActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 48
    iput-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$1;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/metamoji/mazec/TrialActivationGuideActivity$1$1;->this$1:Lcom/metamoji/mazec/TrialActivationGuideActivity$1;

    iget-object p1, p1, Lcom/metamoji/mazec/TrialActivationGuideActivity$1;->this$0:Lcom/metamoji/mazec/TrialActivationGuideActivity;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/metamoji/mazec/TrialActivationGuideActivity;->-$$Nest$mfinishWithResult(Lcom/metamoji/mazec/TrialActivationGuideActivity;IZ)V

    return-void
.end method
