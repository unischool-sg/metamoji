.class Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;
.super Ljava/lang/Object;
.source "MMJUnLinkUnitLocation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/link/MMJUnLinkUnitLocation;->performJumpWithRegisterJumpHistory(ZZLandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

.field final synthetic val$contextMenuRect:Landroid/graphics/Rect;

.field final synthetic val$registerJumpHistory:Z

.field final synthetic val$removeJumpHistory:Z


# direct methods
.method constructor <init>(Lcom/metamoji/un/link/MMJUnLinkUnitLocation;ZZLandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->this$0:Lcom/metamoji/un/link/MMJUnLinkUnitLocation;

    iput-boolean p2, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->val$registerJumpHistory:Z

    iput-boolean p3, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->val$removeJumpHistory:Z

    iput-object p4, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->val$contextMenuRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v1}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 168
    sget v2, Lcom/metamoji/noteanytime/R$string;->LINKUNIT_JUMP:I

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2$1;-><init>(Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;)V

    iget-object v2, p0, Lcom/metamoji/un/link/MMJUnLinkUnitLocation$2;->val$contextMenuRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Lcom/metamoji/nt/NtEditorWindowController;->ShowContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;)V

    return-void
.end method
