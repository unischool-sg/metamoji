.class Lcom/metamoji/un/link/MMJUnLinkUnit$1;
.super Ljava/lang/Object;
.source "MMJUnLinkUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/link/MMJUnLinkUnit;->performJumpWithURLString(Ljava/lang/String;ZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contextMenuRect:Landroid/graphics/Rect;

.field final synthetic val$registerJumpHistory:Z

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$urlString:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$registerJumpHistory:Z

    iput-object p3, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$contextMenuRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$urlString:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/un/link/MMJUnLinkUnit;->canHandleOpenURLString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/link/MMJUnLinkUnit$1;->val$urlString:Ljava/lang/String;

    new-instance v1, Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/link/MMJUnLinkUnit$1$1;-><init>(Lcom/metamoji/un/link/MMJUnLinkUnit$1;)V

    invoke-static {v0, v1}, Lcom/metamoji/un/link/MMJUnLinkUnit;->createLinkUnitLocationWithEncodedURLAsync(Ljava/lang/String;Lcom/metamoji/un/link/MMJUnLinkUnit$IAction;)V

    :cond_0
    return-void
.end method
