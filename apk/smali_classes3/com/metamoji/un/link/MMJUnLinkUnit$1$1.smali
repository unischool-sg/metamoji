.class Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;
.super Ljava/lang/Object;
.source "MMJUnLinkUnit.java"

# interfaces
.implements Lcom/metamoji/un/link/MMJUnLinkUnit$IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/link/MMJUnLinkUnit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/un/link/MMJUnLinkUnit$IAction<",
        "Ljava/lang/Boolean;",
        "Lcom/metamoji/un/link/MMJUnLinkUnitLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/link/MMJUnLinkUnit$1;


# direct methods
.method constructor <init>(Lcom/metamoji/un/link/MMJUnLinkUnit$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;->this$0:Lcom/metamoji/un/link/MMJUnLinkUnit$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Boolean;Lcom/metamoji/un/link/MMJUnLinkUnitLocation;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;->this$0:Lcom/metamoji/un/link/MMJUnLinkUnit$1;

    iget-boolean p1, p1, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$registerJumpHistory:Z

    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;->this$0:Lcom/metamoji/un/link/MMJUnLinkUnit$1;

    iget-object v0, v0, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$contextMenuRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->performJumpWithRegisterJumpHistory(ZZLandroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;->run(Ljava/lang/Boolean;Lcom/metamoji/un/link/MMJUnLinkUnitLocation;)V

    return-void
.end method
