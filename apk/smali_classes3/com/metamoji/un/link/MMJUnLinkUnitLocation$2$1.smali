.class Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;
.super Ljava/lang/Object;
.source "MMJUnLinkUnitLocation.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;


# direct methods
.method constructor <init>(Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;->this$1:Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;->this$1:Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;

    iget-object p1, p1, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->this$0:Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    invoke-static {p1}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->-$$Nest$fgetm_linkInfo(Lcom/metamoji/un/link/MMJUnLinkUnitLocation;)Lcom/metamoji/un/link/MMJUnLinkInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;->this$1:Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;

    iget-boolean p2, p2, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->val$registerJumpHistory:Z

    iget-object p3, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;->this$1:Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;

    iget-boolean p3, p3, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->val$removeJumpHistory:Z

    invoke-static {p1, p2, p3}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->performJumpWithLinkInfo(Lcom/metamoji/un/link/MMJUnLinkInfo;ZZ)V

    return-void
.end method
